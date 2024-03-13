#include "platform.h"


Platform::Platform(int ID, int x, int y)
{
    this->ID = ID;
    this->x = x;
    this->y = y;
}

int Platform::getID()
{
    return ID;
}