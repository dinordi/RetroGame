// #pragma once
#include "game.h"
#include "level.h"
//#include "Projectile.h"
#include "sprites.h"
#include "endian.h"
//#include "Entity.h"
#include "Bullet.h"
#include "samurai.h"
// #include <algorithm>

#include "globals.h"

const float dt = 1.0f / 60;
int count = 0;

Game::Game(FPGA* fpga, ButtonHandler* button, Audio* audio,Score* score) : fpga(fpga) ,button(button) ,score(score) ,audio(audio)
{
    sys_csrand_get(randomNumbers, 1000);
    spriteData = new uint16_t[400];
    spriteDataCount = 0;
    player = new Player(player1Sprites,7,780,100);
    objects.push_back(player);
    entities.push_back(player);
    actors.push_back(player);
    liveEnemies = 0;
    killedEnemies = 0;
    currentLevel = 0;
    Curtain = 0;
    fadeIn = false;
    BOB = false;
    addEnemy();
    frames = 0;
    gameState = Menu;
    stateSelect = Playing;
    loadPlatforms(currentLevel);
    readInput();
}

Game::~Game()
{
    // for (auto entity : entities)
    // {
    //     delete entity;
    // }
    // entities.clear();
    // for (auto platform : platforms)
    // {
    //     delete platform;
    // }
    // platforms.clear();
}

void Game::update()
{
    switch(gameState)
    {
        case Menu:
        {
            updateSelection();
            drawMainMenu();
            break;
        }
        case NextLevel:
        {
            nextLevelAnimation();
            score->assign_time_points(); // give the player a level complete score based on time
            score->set_multiplier(); // set the scoremultiplier back to 100
            break;
        }
        case Playing:
        {
            sendToDisplay();
            score->set_time_points(); // increase the level complete score
            score->decrease_multiplier(frames);
            updateGame();
            break;
        }
        case Drbob:
            player->setBobMode();
            BOB = true;
            gameState = Playing;
            getRangePlatforms();
            break;
        case Paused:
            break;
        case GameOver:
        {
            sendToDisplay();
            GameOverFunc();
            break;
        }
        case Credits:
        {
            drawCredits();
            break;
        }
        case Highscores:
        {
            drawHighscores();
            break;
        }
    }
    frames++;
  
    if(frames == 30)
    {
        audio->play_music(audio->MENU_MUSIC);
    }
}


void Game::updateSelection()
{
    static int counter = 0;
    counter++;
    readInput();
    if(buttonStatus.start && counter > 60)
    {
        audio->play_effect(audio->MNU_CONFIRM);

        switch(stateSelect)
        {
            case Playing:
                gameState = Playing;
                counter = 0;
                break;
            case Drbob:
                gameState = Drbob;
                counter = 0;
                break;
            case Credits:
                gameState = Credits;
                counter = 0;
                break;
            case Highscores:
                gameState = Highscores;
                counter = 0;
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
                case Highscores:
                    stateSelect = Drbob;
                    break;
                case Credits:
                    stateSelect = Highscores;
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
                    stateSelect = Highscores;
                    break;
               case Highscores:
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

void Game::addEnemy()
{
    addFatbat((sys_rand32_get() % 1200) + 300, (sys_rand32_get() % 400));
    liveEnemies++;
    
}

void Game::addFatbat(int x, int y)
{
    for(auto fatbat : fatbats)
    {
        if(!fatbat->inUse)
        {
            fatbat->x = x;
            fatbat->y = y;
            fatbat->inUse = true;
            fatbat->myState = idle;
            fatbat->hp = 20;
            entities.push_back(fatbat);
            enemies.push_back(fatbat);
            objects.push_back(fatbat);
            actors.push_back(fatbat);
            return;
        }
    }

}

void Game::readInput()
{
    buttonStatus.left = button->pinGet(1);
    buttonStatus.right = button->pinGet(2);
    buttonStatus.up = button->pinGet(3);
    buttonStatus.down = button->pinGet(4);
    buttonStatus.dash = button->pinGet(5);
    buttonStatus.shoot = button->pinGet(6);
    buttonStatus.start = button->pinGet(7);
    // printk("up: %d, down: %d, left: %d, right: %d, dash: %d, shoot: %d, start: %d\n", buttonStatus.up, buttonStatus.down, buttonStatus.left, buttonStatus.right, buttonStatus.dash, buttonStatus.shoot, buttonStatus.start);
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

void Game::nextLevelAnimation()
{
    if(fadeIn){
        Curtain -= 3;
        if(Curtain < 0){
            fadeIn = false;
            gameState = Playing;
        }
    } 
    else{
        Curtain += 3;
        if(Curtain > 640){
            liveEnemies = 0;
            killedEnemies = 0;
            for(auto object : objects)
            {
                object->inUse = false;
            }
            player->inUse = true;
            player->x = 780;
            player->y = 100;
            player->hp = 100;
            if(BOB) player->setBobMode();
            actors.clear();
            objects.clear();
            entities.clear();
            platforms.clear();
            enemies.clear();
            projectiles.clear();
            objects.push_back(player);
            entities.push_back(player);
            actors.push_back(player);
            currentLevel++;
            if(currentLevel==3)
            {
                currentLevel = 0;
            }

            loadPlatforms(currentLevel);
            fadeIn = true;
    }
    }
    levelFading(Curtain);
    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;
}

void Game::levelFading(int line)
{
    int middleX = player->getX();
    int leftBorder = middleX + line - 320;
    int rightBorder = middleX + 320;
    int x,delta,actorX,range;
    for(auto actor : actors)
    { 
        x = actor->getX();
        delta = x - middleX;
        actorX = 320 + delta;
        range = actor->range; 
        if(actor->getY() < 0) // if player so above roof of the screen the Y goes below zero
            continue;
        if((x > (leftBorder - range)) && (x < (rightBorder + range)))
        {
            spriteData[spriteDataCount++] = htobe16(actor->getID());
            spriteData[spriteDataCount++] = htobe16(actorX + 144);
            spriteData[spriteDataCount++] = htobe16(actor->getY());
            //printk("ID: %d\n", actor->getID());
        }
    }
}


void Game::drawMainMenu()
{
    std::string title = "cosmic conquest";
    std::string title2 = "saga of sacrifice";

    std::string start = "press start";
    std::string option1 = "play";
    std::string option2 = "dr bob mode";
    std::string option3 = "highscore";
    std::string option4 = "credits";
    static int yval = 300;
    static bool draw = true;

    // drawString(title, 230, 100);
    drawString(title2, 200, 130);
    if(frames % 30 == 0)                                        //Blink every 0.5 seconds
    {
        draw = !draw;
    }
    if(draw)
    {
        drawString(start, 220, 200);
    }

    drawString(option1, 250, 300);
    drawString(option2, 250, 350);
    drawString(option3, 250, 400);
    drawString(option4, 250, 450);


    readInput();
    switch(stateSelect)  // Toggle selection
    {
        case Playing:
            yval = 300;
            break;
        case Drbob:
            yval = 350;
            break;
        case Highscores:
            yval = 400;
            break;
        case Credits:
            yval = 450;
            break;
        

    }

    spriteData[spriteDataCount++] = htobe16(0);                     // Playersprite Cursor
    spriteData[spriteDataCount++] = htobe16(250+124);
    spriteData[spriteDataCount++] = htobe16(yval);
    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;
}
bool execute_once =false;
void Game::drawHighscores()
{
    if(execute_once == false)
    {
        score->reset_leaderboard();
        execute_once = true;
        score->get_leaderboard();
    }
    static int counter = 0;
    counter++;

    std::string title = "   highscores";
    std::string highscore_1 = score->receive_Scores(0);
    std::string highscore_2 = score->receive_Scores(1);
    std::string highscore_3 = score->receive_Scores(2);
    std::string highscore_4 = score->receive_Scores(3);
    std::string highscore_5 = score->receive_Scores(4);
    std::string highscore_6 = score->receive_Scores(5);
    std::string highscore_7 = score->receive_Scores(6);
    std::string highscore_8 = score->receive_Scores(7);
    std::string highscore_9 = score->receive_Scores(8);

    drawString(title, 240, 50);

    drawString(highscore_1, 240, 100);
    drawString(highscore_2, 240, 150);
    drawString(highscore_3, 240, 200);
    drawString(highscore_4, 240, 250);
    drawString(highscore_5, 240, 300);
    drawString(highscore_6, 240, 350);
    drawString(highscore_7, 240, 400);
    drawString(highscore_8, 240, 450);


    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;

    readInput();
    if(buttonStatus.start && counter > 60)
    {
        gameState = Menu;
        counter = 0;
    }
    

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

void Game::GameOverFunc(){
    static int counter = 0;
    counter++;
    static bool draw = true;
    drawString("game over", 250, 150);
    if(frames % 30 == 0)                                        //Blink every 0.5 seconds
    {
        draw = !draw;
    }
    if(draw)
    {
        drawString("press start and return to menu", 133, 200);
    }
    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;

    readInput();
    if(buttonStatus.start && counter > 60)
    {
        resetToBegin();
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
        // printk("Actor type: %d\n", actor->getType());
        if(actor->getType() == Actor::Type::PLAYER || actor->getType() == Actor::Type::ENEMY)
        {
            Entity* ob = static_cast<Entity*>(actor);

            // Check if player is attacking and adjust the sprite position
            if(ob->myState == attacking)
            {
                playerAttackOffsetX = ob->attackCheck(true); //Get X offset
                playerAttackOffsetY = ob->attackCheck(false);   //Get Y offset
                actorX += playerAttackOffsetX;
                actorY -= playerAttackOffsetY;
            }
        }
        if(actor->getType() == Actor::Type::PROJECTILE)
        {
            printk("Projectile drawing\n");
        }
        if(actorY < 0 || actorY > 512 || actorX + 144 > 810 || actorX + 144 < 0 ) // if player so above roof of the screen the Y goes below zero
            continue;

        if((x > (leftBorder - range)) && (x < (rightBorder + range)))
        {
            spriteData[spriteDataCount++] = htobe16(actor->getID());
            spriteData[spriteDataCount++] = htobe16(actorX + 144);
            spriteData[spriteDataCount++] = htobe16(actorY);
    
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

void Game::loadPlatforms(int levelNum)
{
    switch(levelNum)
    {
        case 0:
            {
                for(auto platform : level1)
                {
                    platforms.push_back(platform);
                    actors.push_back(platform);
                }
                break;
            }
        case 1:
            {
                for(auto platform : level2)
                {
                    platforms.push_back(platform);
                    actors.push_back(platform);
                }
                break;
            }
        case 2:
            {
                for(auto platform : level3)
                {
                    platforms.push_back(platform);
                    actors.push_back(platform);
                }
                break;
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
    if(killedEnemies >= maxEnemies[currentLevel]) gameState = NextLevel;
    if(liveEnemies < maxEnemyScreen[currentLevel] && killedEnemies + liveEnemies < maxEnemies[currentLevel]) addEnemy();
    for(Entity* entity : entities)
    {
        checkRangedAttack(entity);
    }
    checkDeleted();
    for(Object* object : objects)
    {
        groundLevel = collisionCheck(object);
        object->behaviour();
        y = gravityCheck(object,groundLevel);
        x = borderCheck(object);
    }
    for(Object* object : objects)
    {
        realCollisionCheck(object);
        object->manageAnimation(); 
        //object->move(x, y);
    }
}

void Game::checkDeleted(){
    for(Object* object : objects)
    {
        if(object->myState == dead)
        {
            // printk("CheckDeleted someone is dead\n");

            if(object->getType() == Actor::Type::PLAYER)
            {
                // printk("player\n");
                gameState = GameOver;
            }
            else
            {
                // printk("geen player\n");
                auto gevondenActor = std::find(actors.begin(), actors.end(), object);
                auto gevondenObject = std::find(objects.begin(), objects.end(), object);
                auto gevondenEntity = std::find(entities.begin(), entities.end(), object);
                auto gevondenProjectile = std::find(projectiles.begin(), projectiles.end(), object);
                auto gevondenEnemy = std::find(enemies.begin(), enemies.end(), object);

                // Controleer of de pointer is gevonden
                if (gevondenActor != actors.end()) {
                    // printk("gevondenActor != actors.end()\n");

                    actors.erase(gevondenActor); // Verwijder de pointer uit de vector
                } 
                if (gevondenObject != objects.end()) {
                    // printk("gevondenObject != objects.end()\n");

                    objects.erase(gevondenObject);
                }
                if (gevondenEntity != entities.end()) {
                    // printk("gevondenEntity != entities.end()\n");

                    entities.erase(gevondenEntity);
                }
                if (gevondenProjectile != projectiles.end()) {
                    // printk("gevondenProjectile != projectiles.end()\n");

                    projectiles.erase(gevondenProjectile);
                }
                if (gevondenEnemy != enemies.end()) {
                    // printk("gevondenEnemy != enemies.end()\n");
                    enemies.erase(gevondenEnemy);
                    killedEnemies++;
                    liveEnemies--;
                    audio->play_effect(audio->M_DEATH);
                    score->assign_monster_points();
                }
                // delete object;
                object->inUse = false;
            } 
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

    if(object->getType() == Actor::Type::PROJECTILE)
    {
        for(auto platform : platforms)
        {
            int platformTop = platform->getY() - platform->range;
            int platformBottom = platform->getY() + platform->range;
            int platformLeft = platform->getX() - platform->range;
            int platformRight = platform->getX() + platform->range;
            
            if(platformRight >= objectLeft && platformLeft <= objectRight && platformTop <= objectBottom && platformBottom >= objectTop)
            {
                object->collisionWith(20);
            }
        }
    }
    if(object->getType() == Actor::Type::PROJECTILE || object->isPlayer()) {
        for(auto enemy : enemies)
        {
            int enemyTop = enemy->getY() - enemy->range;
            int enemyBottom = enemy->getY() + enemy->range;
            int enemyLeft = enemy->getX() - enemy->range;
            int enemyRight = enemy->getX() + enemy->range;

            if(enemyRight >= objectLeft && enemyLeft <= objectRight && enemyTop <= objectBottom && enemyBottom >= objectTop)
            {
                    object->collisionWith(enemy->damage);
            }
                
        }
    }
    if(object->getType() == Actor::Type::ENEMY) {
        for(auto projectile : projectiles)
        {
            int projectileTop = projectile->getY() - projectile->range;
            int projectileBottom = projectile->getY() + projectile->range;
            int projectileLeft = projectile->getX() - projectile->range;
            int projectileRight = projectile->getX() + projectile->range;

            if(projectileRight >= objectLeft && projectileLeft <= objectRight && projectileTop <= objectBottom && projectileBottom >= objectTop)
            {
                //printk("collisie %d", projectile->damage);
                object->collisionWith(projectile->damage);
            }
                
        }
    }
}
 
int Game::gravityCheck(Object* object,int groundlevel){
    //int y = object->y + object->ySpeed; 
    if(object->hasGravity)
        { 
            //printf("GL: %d Y: %d\n",groundlevel,object->getY());    //add moving speed and gravity to current y
            // y = y1;
            if(object->getY() > groundlevel) //if player is on platform
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
        if(object->getX() <= 300) // stop at border left
        {
            object->collisionWith(0);
            object->x = 300;
        }
        else if(object->getX() >= 1530) //stop at border right
        {
            object->collisionWith(0);
            object->x = 1530;
        }
    return 0;
}

void Game::checkRangedAttack(Entity* entity){
    if(entity->myState == attacking && entity->lastmyState != attacking && entity->isRanged)
    {
        Object* projectile = entity->makeProjectile();
        if(BOB) static_cast<Bullet*>(projectile)->setBobMode();
        projectiles.push_back(static_cast<Projectile*>(projectile));
        objects.push_back(projectile);
        actors.push_back(projectile);
        // printk("projectile added\n");
    }
}

void Game::resetToBegin()
{
    for(auto object : objects)
    {
        // delete actor;
        object->inUse = false;
    }
    actors.clear();
    objects.clear();
    entities.clear();
    platforms.clear();
    enemies.clear();
    projectiles.clear();
    player->inUse = true;
    player->x = 780;
    player->y = 100;
    player->hp = 100;
    player->myState = idle;
    objects.push_back(player);
    entities.push_back(player);
    actors.push_back(player);
    currentLevel = 0;
    loadPlatforms(currentLevel);
    frames = 0;
    gameState = Menu;
    stateSelect = Playing;
    liveEnemies = 0;
    killedEnemies = 0;
    Curtain = 0;
    fadeIn = false;
}

void Game::getRangePlatforms(){
    for (int i = 0; i < platforms.size(); ++i) {
        if (platforms[i]->getID() == 100) { // Begin van een platform
            int start = platforms[i]->getX() - platforms[i]->range;
            int y = platforms[i]->getY(); // Y-positie van het platform
            // Zoek het einde van het platform
            int end = start;
            while (i < platforms.size() && platforms[i]->getY() == y) {
                if (platforms[i]->getID() == 101) { // Einde van een platform
                    PlatformRange range;
                    range.xbegin = start;
                    range.xend = platforms[i]->getX() + platforms[i]->range;
                    platformRanges.push_back(range);
                    // printk("Start: %d, End: %d Y: %d\n", range.xbegin, range.xend,platforms[i]->getY());
                    break;
                }
                end = platforms[i]->getX();
                ++i;
            }
        }
    }

// Print de start- en eindposities van de platformen
    // for (const auto& range : platformRanges) {
    //     printk("Start: %d, End: %d\n", range.xbegin, range.xend);
    // }
}