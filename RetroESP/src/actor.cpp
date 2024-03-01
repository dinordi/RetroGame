#include "actor.h"


Actor::Actor(int ID) : ID(ID)
{
    x = 0;
    y = 0;
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

