#include "game.h"


game::game(FPGA* fpga) : fpga(fpga)
{
    spriteData = new uint16_t[900];
    spriteDataCount = 0;
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
    //Update game logic
    printk("Updating game\n");
	k_sleep(K_MSEC(1000));

}

void game::sendToDisplay()
{
    //Send game state to display
    // (ID, x, y)

    for (auto entity : entities)
    {
        int x = entity->getX();
        int y = entity->getY();
        int ID = entity->getID();
        spriteData[spriteDataCount++] = ID;
        spriteData[spriteDataCount++] = x;
        spriteData[spriteDataCount++] = y;
    }
    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;
    printk("Wait for display to update\n");
    k_sleep(K_MSEC(500));

}

void game::addEntity(int ID)
{
    Entity* entity = new Entity(ID);
    entities.push_back(entity);
}