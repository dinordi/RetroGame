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
    Entity* entity = entities[0];;
    if(entity->getX() < 61 && entity->getDir() == east)
    {
        entity->move(entity->getX() + 1, 3);
        if(entity->getX() == 60)
        {
            entity->setDir(west);
        }
    }
    else
    {
        entity->move(entity->getX() - 1, 3);
        if(entity->getX() == 0)
        {
            entity->setDir(east);
        }
    }
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
        printk("Sending to display: ID:%d, X:%d, Y:%d\n", ID, x, y);
        spriteData[spriteDataCount++] = htobe16(ID);
        spriteData[spriteDataCount++] = htobe16(x);
        spriteData[spriteDataCount++] = htobe16(y);
    }
    fpga->sendSprite(spriteData, spriteDataCount);
    spriteDataCount = 0;
    printk("Wait for display to update\n");

}

void game::addEntity(int ID)
{
    Entity* entity = new Entity(ID);
    printk("id: %d\n", entity->getID());
    entities.push_back(entity);
}