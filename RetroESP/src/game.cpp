#include "game.h"


game::game(FPGA* fpga, ButtonHandler* button) : fpga(fpga), button(button)
{
    spriteData = new uint16_t[900];
    spriteDataCount = 0;
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


    //Update game logic
    Entity* entity = entities[0];
    if(entity->getX() < 351 && buttonStatus.right == true)
    {
        entity->move(entity->getX() + 1, 240);
    }
    else if(entity->getX() > 0 && buttonStatus.left == true)
    {
        entity->move(entity->getX() - 1, 240);
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

void game::readInput()
{
    buttonStatus.up = button->pinGet(1);
    buttonStatus.down = button->pinGet(2);
    buttonStatus.left = button->pinGet(3);
    buttonStatus.right = button->pinGet(4);
    buttonStatus.melee = button->pinGet(5);
    buttonStatus.atk = button->pinGet(6);
}