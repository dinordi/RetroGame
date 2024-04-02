// #pragma once
#include "game.h"
#include "level.h"
//#include "Projectile.h"
#include "sprites.h"
#include "endian.h"
#include "platform.h"
#include "Entity.h"
#include "Bullet.h"
#include "samurai.h"
#include <algorithm>


const float dt = 1.0f / 60;
const float gravity = 0.52f;
int count = 0;

Game::Game(FPGA* fpga, ButtonHandler* button) : fpga(fpga), button(button)
{
    spriteData = new uint16_t[900];
    spriteDataCount = 0;
    player = new Player(player1Sprites,7,780,100);
    objects.push_back(player);
    entities.push_back(player);
    actors.push_back(player);
    
    frames = 0;
    gameState = Menu;
    stateSelect = Playing;
    loadPlatforms(level);
    readInput();
}

Game::~Game()
{
    for (auto entity : entities)
    {
        delete entity;
    }
    entities.clear();
    for (auto platform : platforms)
    {
        delete platform;
    }
    platforms.clear();
}

void Game::update()
{
    
    switch(gameState)
    {
        case Menu:
            updateSelection();
            drawMainMenu();
            break;
        case Playing:
            sendToDisplay();
            updateGame();
            break;
        case Drbob:
            break;
        case Paused:
            break;
        case GameOver:
            break;
        case Credits:
            drawCredits();
            break;
    }
    frames++;
}

void Game::updateSelection()
{
    static int counter = 0;
    counter++;
    readInput();
    if(buttonStatus.start && counter > 60)
    {
        switch(stateSelect)
        {
            case Playing:
                gameState = Playing;
                break;
            case Drbob:
                gameState = Drbob;
                break;
            case Credits:
                gameState = Credits;
                counter = 0;
                break;
            default:
                break;
        }
        
    }
    if(frames % 10 == 0)
    {
        if(buttonStatus.up)
        {
            switch(stateSelect)
            {
                case Playing:
                    stateSelect = Credits;
                    break;
                case Drbob:
                    stateSelect = Playing;
                    break;
                case Credits:
                    stateSelect = Drbob;
                    break;
            }
        }
        if(buttonStatus.down)
        {
            switch(stateSelect)
            {
                case Playing:
                    stateSelect = Drbob;
                    break;
                case Drbob:
                    stateSelect = Credits;
                    break;
                case Credits:
                    stateSelect = Playing;
                    break;
            }
        }
    }
}

void Game::updateGame()
{
    //Check for input
    readInput();
    player->setButtonStatus(buttonStatus);
    tick();
}

void Game::sendToDisplay()
{
    drawLevel();
    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;
}

// void Game::addEntity(const int* playerSprites,int range,int x, int y)
// {
//     Object* entity = new Entity(playerSprites,range,x,y);
//     printk("id: %d\n", entity->getID());
//     entities.push_back(static_cast<Entity*>(entity));
//     objects.push_back(entity);
// }

// void Game::addProjectile(const int* playerSprites,int range,int x, int y)
// {
//     Object* projectile = new Projectile(playerSprites,range,x,y);
//     printk("id: %d\n", projectile->getID());
//     projectiles.push_back(static_cast<Projectile*>(projectile));
//     objects.push_back(projectile);
// }

void Game::readInput()
{
    buttonStatus.left = button->pinGet(1);
    buttonStatus.right = button->pinGet(2);
    buttonStatus.up = button->pinGet(3);
    buttonStatus.down = button->pinGet(4);
    buttonStatus.dash = button->pinGet(5);
    buttonStatus.shoot = button->pinGet(6);
    buttonStatus.start = button->pinGet(7);
    // printk("up: %d, down: %d, left: %d, right: %d, dash: %d, shoot: %d\n", buttonStatus.up, buttonStatus.down, buttonStatus.left, buttonStatus.right, buttonStatus.dash, buttonStatus.shoot);
}

void Game::drawString(std::string str, int startX, int y)
{
    for(int i = 0; i < str.length(); i++)
    {
        if(str[i] == ' ')
        {
            continue;
        }
        spriteData[spriteDataCount++] = htobe16(characters[str[i]]);
        spriteData[spriteDataCount++] = htobe16(startX + i*15+144);
        spriteData[spriteDataCount++] = htobe16(y);
        // printk("adding ID: %d\n", characters[title[i]]);
    }
}

void Game::drawMainMenu()
{
    std::string title = "beste game";
    std::string start = "press start to play";
    std::string option1 = "play";
    std::string option2 = "dr bob mode";
    std::string option3 = "credits";
    static int yval = 300;
    static bool draw = true;

    drawString(title, 250, 100);
    if(frames % 30 == 0)                                        //Blink every 0.5 seconds
    {
        draw = !draw;
    }
    if(draw)
    {
        drawString(start, 200, 200);
    }

    drawString(option1, 250, 300);
    drawString(option2, 250, 350);
    drawString(option3, 250, 400);

    readInput();
    switch(stateSelect)  // Toggle selection
    {
        case Playing:
            yval = 300;
            break;
        case Drbob:
            yval = 350;
            break;
        case Credits:
            yval = 400;
            break;
    }

    spriteData[spriteDataCount++] = htobe16(0);                     // Playersprite Cursor
    spriteData[spriteDataCount++] = htobe16(250+124);
    spriteData[spriteDataCount++] = htobe16(yval);

    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;
}

void Game::drawCredits()
{
    static int counter = 0;
    counter++;
    std::string title = "credits";
    std::string name1 = "joey";
    std::string name2 = "ben";
    std::string name3 = "david";
    std::string name4 = "richard";

    drawString(title, 250, 100);

    drawString(name1, 250, 200);
    drawString(name2, 250, 250);
    drawString(name3, 250, 300);
    drawString(name4, 250, 350);


    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;

    readInput();
    if(buttonStatus.start && counter > 60)
    {
        gameState = Menu;
        counter = 0;
    }
}

void Game::drawLevel()
{
    int middleX = player->getX();
    int leftBorder = middleX - 320;
    int rightBorder = middleX + 320;
    int x,delta,actorX,actorY,range;
    for(auto actor : actors)
    { 
        x = actor->getX();
        delta = x - middleX;
        actorX = 320 + delta;
        actorY = actor->getY();
        range = actor->range; 

        int playerAttackOffsetX = 0, playerAttackOffsetY = 0;

        Entity* ob = dynamic_cast<Entity*>(actor);
        if(ob != nullptr)
        // Check if player is attacking and adjust the sprite position
            if(ob->myState == attacking)
            {
                playerAttackOffsetX = ob->attackCheck(true); //Get X offset
                playerAttackOffsetY = ob->attackCheck(false);   //Get Y offset
                actorX += playerAttackOffsetX;
                actorY -= playerAttackOffsetY;
            }

        if(actorY < 0 || actorY > 512) // if player so above roof of the screen the Y goes below zero
            continue;

        if((x > (leftBorder - range)) && (x < (rightBorder + range)))
        {
            spriteData[spriteDataCount++] = htobe16(actor->getID());
            spriteData[spriteDataCount++] = htobe16(actorX + 144);
            spriteData[spriteDataCount++] = htobe16(actorY);
            // if(actor->isProjectile())
            //     printf("New bullet: x: %d y: %d",actorX + 144, actor->getY());
        
            //printk("ID: %d\n", actor->getID());
        }
    }
    // actorX = 320;
    // range = player->range; 
    // printk("player!");
    // printk("ID: %d\n", player->getID());
    // if((x > (leftBorder - range)) && (x < (rightBorder + range)))
    // {
    //     spriteData[spriteDataCount++] = htobe16(player->getID());
    //     spriteData[spriteDataCount++] = htobe16(actorX + 144);
    //     spriteData[spriteDataCount++] = htobe16(player->getY());
    // }
}

void Game::loadPlatforms(const int level[16][63])
{
    for(int i = 0; i < 16; i++) // 16 rows
    {
        for(int j = 0; j < 63; j++) // 63 columns
        {
            if(level[i][j] != 0)    // If the tile is not empty
            {
                int tileX = j * 31; //31 is tile width/height
                int tileY = i * 31;
                int tileID = level[i][j] + 99;  // Add 99 to the tileID to get the correct sprite
                Platform* platform = new Platform(tileID, tileX, tileY, 15);    // Create a new platform
                platforms.push_back(platform);
                actors.push_back(platform);
            }
        }
    }
}

std::vector<Platform*>* Game::getPlatforms()
{
    return &platforms;
}

void Game::tick()
{
    
    int groundLevel = 458;  // Default ground level
    int xSpeed = 0, x = 0;
    float y  = 0;
    for(Entity* entity : entities)
    {
        checkRangedAttack(entity);
    }
    checkDeleted();
    for(Object* object : objects)
    {
        groundLevel = collisionCheck(object);
        object->behaviour();
        realCollisionCheck(object);
        y = gravityCheck(object,groundLevel);
        x = borderCheck(object);
        object->manageAnimation();
        //object->move(x, y);
    }
}

void Game::checkDeleted(){
    for(Object* object : objects)
    {
        if(object->myState == dead)
        {
            auto gevondenActor = std::find(actors.begin(), actors.end(), object);
            auto gevondenObject = std::find(objects.begin(), objects.end(), object);

            // Controleer of de pointer is gevonden
            if (gevondenActor != actors.end()) {
                actors.erase(gevondenActor); // Verwijder de pointer uit de vector
            } 
            if (gevondenObject != objects.end()) {
                objects.erase(gevondenObject);
            }
            delete object;
        } 
    }

}

int Game::collisionCheck(Object* object){
    int groundLevel = 458;
    if(object->hasCollision)
        {
            for (Platform* platform : platforms) {
                int platformx = platform->getX();
                int platformy = platform->getY();
                int platformRange = platform->range;
                int entityRange = object->range;
                if (object->getY() + entityRange <= platformy - platformRange)
                {
                    int entityX = object->getX();
                    if (entityX + entityRange >= platformx - platformRange && entityX - entityRange <= platformx  + platformRange) {  // Check if entity is above the platform
                        if (platformy-(platformRange + entityRange)  < groundLevel) {
                            groundLevel = platformy-(platformRange + entityRange);
                            // printk("Ground level: %d\n", groundLevel);
                        }
                    }
                }
            } 
        }
        return groundLevel;
}

void Game::realCollisionCheck(Object* object){

    int objectTop = object->getY() - object->range;
    int objectBottom = object->getY() + object->range;
    int objectLeft = object->getX() - object->range;
    int objectRight = object->getX() + object->range;

    if(dynamic_cast<Projectile*>(object) != nullptr)
    {
        for(auto platform : platforms)
        {
            int platformTop = platform->getY() - platform->range;
            int platformBottom = platform->getY() + platform->range;
            int platformLeft = platform->getX() - platform->range;
            int platformRight = platform->getX() + platform->range;
            
            if(platformRight >= objectLeft && platformLeft <= objectRight && platformTop <= objectBottom && platformBottom >= objectTop)
            {
                //printk("kanker");
                object->collisionWith(0);
            }
        }
    }
        for(auto object2 : objects)
        {
            int object2Top = object2->getY() - object2->range;
            int object2Bottom = object2->getY() + object2->range;
            int object2Left = object2->getX() - object2->range;
            int object2Right = object2->getX() + object2->range;

            if(object2Right >= objectLeft && object2Left <= objectRight && object2Top >= objectBottom && object2Bottom <= objectTop)
                object->collisionWith(object2->damage);
        }
    }
 
int Game::gravityCheck(Object* object,int groundlevel){
    //int y = object->y + object->ySpeed; 
    if(object->hasGravity)
        { 
            printf("GL: %d Y: %d\n",groundlevel,object->getY());    //add moving speed and gravity to current y
            // y = y1;
            if(object->y > groundlevel) //if player is on platform
            {
                object->y = groundlevel;
                object->isGrounded = true;
                object->ySpeed = 0;
            }
        }
    return 0;
}

int Game::borderCheck(Object* object){
    //int x = object->xSpeed + object->x; //add the moving speed to current x
        if(object->getX() <= 320) // stop at border left
        {
            object->collisionWith(0);
            object->x = 320;
        }
        else if(object->getX() >= 1600) //stop at border right
        {
            object->collisionWith(0);
            object->x = 1600;
        }
    return 0;
}

void Game::checkRangedAttack(Entity* entity){
    if(entity->myState == attacking && entity->lastmyState != attacking && entity->isRanged)
    {
        Object* projectile = entity->makeProjectile();
        //projectiles.push_back(static_cast<Projectile*>(projectile));
        objects.push_back(projectile);
        actors.push_back(projectile);
    }
}