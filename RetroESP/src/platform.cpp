#include "platform.h"


Platform::Platform(int ID, int x, int y,int range) : Actor(ID,range)
{
    this->ID = ID;
    this->x = x;
    this->y = y;
    range = 15;
}

int Platform::getID()
{
    return ID;
}