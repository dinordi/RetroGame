#include "actor.h"


Actor::Actor(const int* entitySprites) : entitySprites(entitySprites)
{
    ID = entitySprites[0];
    x = 920;
    y = 240;
    myState = idle;
    spriteCounter = 0;
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
    manageAnimation();
    return ID;
}

void Actor::manageAnimation()
{
    spriteCounter++;
    if(spriteCounter % 20)
    {
        switch(myState)
        {
            case idle:
                if(ID == entitySprites[0])
                {
                    ID = entitySprites[1];
                }
                else
                {
                    ID = entitySprites[0];
                }
                break;
            case walking:
                if(ID == entitySprites[3])
                {
                    ID = entitySprites[2];
                }
                else
                {
                    ID = entitySprites[3];
                }
                break;
        }
    }
}