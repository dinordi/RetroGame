#include "platform.h"


Platform::Platform(int ID, int x, int y,int range, void* heapPtr) : Actor(ID,range,x,y, heapPtr)
{
    this->ID = ID;
    range = 15;
}

int Platform::getID()
{
    return ID;
}