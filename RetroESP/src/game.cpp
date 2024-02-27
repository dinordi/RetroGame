#include "game.h"


game::game()
{
}

game::~game()
{
}

void game::update()
{
    //Check for input
    //Update game logic
}

void game::sendToDisplay()
{
    //Send game state to display
    // (ID, x, y)

    for (auto entity : entities)
    {
        int x = entity->getX();
        int y = entity->getY();
    }
}