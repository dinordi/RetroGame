#include "actor.h"


Actor::Actor(int ID) : ID(ID)
{
    x = 2;
    y = 3;
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

