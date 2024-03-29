#include "game.h"
#include "level.h"

const float dt = 1.0f / 60;
const float gravity = 0.52f;

<<<<<<< HEAD

=======
>>>>>>> 4f38633 (moved tick function to game)
Game::Game(FPGA* fpga, ButtonHandler* button) : fpga(fpga), button(button)
{
    spriteData = new uint16_t[900];
    spriteDataCount = 0;
    player = new Player(player1Sprites, this);
    entities.push_back(player);
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
            update();
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
    if(buttonStatus.melee && counter > 60)
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
    player->handleInput(buttonStatus);
    tick();
    frames++;
}

void Game::sendToDisplay()
{
    //Send game state to display
    // (ID, x, y)
    // for(int i = 1; i < entities.size();i++)
    // {
    //     entities[i]->move((i*15), (i*15));
    // }

    for (auto entity : entities)
    {
        int x;
        if(player == entity)
        {
            x = 320;
            if(entity->getY() < 0)
            {
                continue;
            }
            // printk("ID: %d\n", entity->getID());
        }
        else
        {
            x = entity->getX();
        }
        int y = entity->getY();
        int ID = entity->getID();
        spriteData[spriteDataCount++] = htobe16(ID);
        spriteData[spriteDataCount++] = htobe16(x+144);
        spriteData[spriteDataCount++] = htobe16(y);
        // printk("Added player\n");
    }
    drawLevel();
    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;
}

void Game::addEntity(const int* playerSprites)
{
    Entity* entity = new Entity(playerSprites, this);
    printk("id: %d\n", entity->getID());
    entities.push_back(entity);
}

void Game::readInput()
{
    buttonStatus.left = button->pinGet(1);
    buttonStatus.right = button->pinGet(2);
    buttonStatus.up = button->pinGet(3);
    buttonStatus.down = button->pinGet(4);
    buttonStatus.melee = button->pinGet(5);
    buttonStatus.atk = button->pinGet(6);
    // printk("up: %d, down: %d, left: %d, right: %d, melee: %d, atk: %d\n", buttonStatus.up, buttonStatus.down, buttonStatus.left, buttonStatus.right, buttonStatus.melee, buttonStatus.atk);
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
    if(buttonStatus.melee && counter > 60)
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
    int tileSize = 31;
    int leftTileIndex = leftBorder / tileSize;
    int rightTileIndex = rightBorder / tileSize;
    int y = 0;
    int count = 0;
    for(auto platform : platforms)
    {
        int x = platform->getX();
        int delta = x - middleX;
        int platformX = 320 + delta;
        if(x > leftBorder-15 && x < rightBorder+15)
        {
            // if(platformX < 0)
            // {
            //     platformX = 0;
            // }
            spriteData[spriteDataCount++] = htobe16(platform->getID());
            spriteData[spriteDataCount++] = htobe16(platformX+144);
            spriteData[spriteDataCount++] = htobe16(platform->getY());
        }
    }

}

void Game::loadPlatforms(const int level[16][63])
{
    for(int i = 0; i < 16; i++)
    {
        for(int j = 0; j < 63; j++)
        {
            if(level[i][j] != 0)
            {
                int tileX = j * 31;
                int tileY = i * 31;
                int tileID = level[i][j] + 99;
                Platform* platform = new Platform(tileID, tileX, tileY);
                platforms.push_back(platform);
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
        for (Platform* platform : platforms) {
                int platformx = platform->getX();
                int platformy = platform->getY();
                if (entity->getY() <= platformy-22)
                {
                    int entityX = entity->getX();
                    if (entityX >= platformx - 15 && entityX <= platformx  + 15) {  // Check if entity is above the platform
                        if (platformy-22  < groundLevel) {
                            groundLevel = platformy-22;
                            // printk("Ground level: %d\n", groundLevel);
                        }
                    }
                }
            } 
    entity->updateySpeed(gravity);
    y = entity->y + entity->ySpeed;       //add moving speed and gravity to current y
    // y = y1;
    if(y > groundLevel) //if player is on platform
    {
        y = groundLevel;
        entity->isGrounded = true;
        entity->ySpeed = 0;
    }
     x = entity->xSpeed + entity->x; //add the moving speed to current x
    if(x <= 320) // stop at border left
    {
        x = 320;
    }
    else if(x >= 1600) //stop at border right
    {
        x = 1600;
    }
    entity->move(x, y);
    }

    
}