#include "actor.h"


Actor::Actor(int ID) : ID(ID)
{
    x = 976;
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


void Actor::m(int x, int y)
{
    this->x = x;
    this->y = y;
}

int Actor::getID()
{
    return ID;
}

