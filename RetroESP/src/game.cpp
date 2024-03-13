#include "game.h"
#include "level.h"



game::game(FPGA* fpga, ButtonHandler* button) : fpga(fpga), button(button)
{
    spriteData = new uint16_t[900];
    spriteDataCount = 0;
    player = new Player(player1Sprites);
    entities.push_back(player);
    readInput();
}

game::~game()
{
    for (auto entity : entities)
    {
        delete entity;
    }
    entities.clear();
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
    for(int i = 1; i < entities.size();i++)
    {
        entities[i]->move((i*15), (i*15));
    }

    for (auto entity : entities)
    {
        int x;
        if(entities[0] == entity)
        {
            x = 320;
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
    }
    drawLevel();
    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;
}

void game::addEntity(int* playerSprites)
{
    Entity* entity = new Entity(playerSprites);
    printk("id: %d\n", entity->getID());
    entities.push_back(entity);
}

void game::readInput()
{
    buttonStatus.up = button->pinGet(1);
    buttonStatus.down = button->pinGet(2);
    buttonStatus.left = button->pinGet(3);
    buttonStatus.right = button->pinGet(4);
    buttonStatus.melee = button->pinGet(5);
    buttonStatus.atk = button->pinGet(6);
    // printk("up: %d, down: %d, left: %d, right: %d, melee: %d, atk: %d\n", buttonStatus.up, buttonStatus.down, buttonStatus.left, buttonStatus.right, buttonStatus.melee, buttonStatus.atk);
}

void game::drawLevel()
{
    int middleX = entities[0]->getX();
    int leftBorder = middleX - 320;
    int rightBorder = middleX + 319;
    int tileSize = 31;
    int leftTileIndex = leftBorder / tileSize;
    int rightTileIndex = rightBorder / tileSize;
    int y = 0;
    int count = 0;
    printk("Checking tiles from %d to %d\n", leftTileIndex, rightTileIndex);
    for(int i = leftTileIndex; i < rightTileIndex; i++)
    {
        for(int j = 0; j < 16; j++)
        {
            if(level[j][i] != 0)
            {
                if(count < 99)
                {
                    int tileX = i * tileSize;
                    int tileY = j * tileSize-16;
                    int tileID = level[j][i] + 99;
                    spriteData[spriteDataCount++] = htobe16(tileID);
                    spriteData[spriteDataCount++] = htobe16(tileX);
                    spriteData[spriteDataCount++] = htobe16(tileY);
                    // printk("Added values: ID:%d, X:%d, Y:%d\n,", tileID, tileX, tileY);
                    if(tileY == 449)
                    {
                        // printk("TileX: %d\n", i);
                    }
                    count++;
                }
            }
        }
    }
    printk("Count: %d\n", count);

}