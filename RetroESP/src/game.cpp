#include "game.h"
#include "level.h"



game::game(FPGA* fpga, ButtonHandler* button) : fpga(fpga), button(button)
{
    spriteData = new uint16_t[900];
    spriteDataCount = 0;
    player = new Player(player1Sprites, this);
    entities.push_back(player);
    loadPlatforms(level);
    readInput();
}

game::~game()
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

void game::update()
{
    //Check for input
    readInput();
    player->handleInput(buttonStatus);

    player->tick();
}

void game::sendToDisplay()
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

void game::addEntity(const int* playerSprites)
{
    Entity* entity = new Entity(playerSprites, this);
    printk("id: %d\n", entity->getID());
    entities.push_back(entity);
}

void game::readInput()
{
    buttonStatus.left = button->pinGet(1);
    buttonStatus.right = button->pinGet(2);
    buttonStatus.up = button->pinGet(3);
    buttonStatus.down = button->pinGet(4);
    buttonStatus.melee = button->pinGet(5);
    buttonStatus.atk = button->pinGet(6);
    // printk("up: %d, down: %d, left: %d, right: %d, melee: %d, atk: %d\n", buttonStatus.up, buttonStatus.down, buttonStatus.left, buttonStatus.right, buttonStatus.melee, buttonStatus.atk);
}

void game::drawLevel()
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

void game::loadPlatforms(const int level[16][63])
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

std::vector<Platform*>* game::getPlatforms()
{
    return &platforms;
}