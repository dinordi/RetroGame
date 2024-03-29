#include "game.h"
#include "level.h"

const float dt = 1.0f / 60;
const float gravity = 0.52f;

Game::Game(FPGA* fpga, ButtonHandler* button) : fpga(fpga), button(button)
{
    spriteData = new uint16_t[900];
    spriteDataCount = 0;
    player = new Player(player1Sprites, this);
    entities.push_back(player);
    frames = 0;
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
        spriteData[spriteDataCount++] = htobe16(x);
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
            if(platformX < 0)
            {
                platformX = 0;
            }
            spriteData[spriteDataCount++] = htobe16(platform->getID());
            spriteData[spriteDataCount++] = htobe16(platformX);
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