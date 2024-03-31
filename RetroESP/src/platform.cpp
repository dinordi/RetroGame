#include "platform.h"


Platform::Platform(int ID, int x, int y,int range) : Actor(ID,range,x,y)
{
    this->ID = ID;
    range = 15;
}

int Platform::getID()
{
    return ID;
}