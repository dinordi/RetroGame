#include "actor.h"


Actor::Actor(int ID) : ID(ID)
{
    x = 320;
    y = 240;
}

int Actor::getX()
{
    return x;
}

int Actor::getY()
{
    return y;
}

int Actor::getID()
{
    return ID;
}

void Actor::move(int x, int y)
{
    this->x = x;
    this->y = y;
}
