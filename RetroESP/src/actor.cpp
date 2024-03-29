#include "actor.h"


Actor::Actor(int ID) : ID(ID)
{
    x = 976;
    y = 240;

}

int Actor::getX()
{
    return static_cast<int>(x);
}

int Actor::getY()
{
    return static_cast<int>(y);
}

int Actor::getID()
{
    return ID;
}

void Actor::move(float x, float y)
{
    this->x = x;
    this->y = y;
}



