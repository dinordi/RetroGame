#include "Object.h"

Object::Object(const int* entitySprites,int range,int x ,int y) : Actor(entitySprites[0],range,x,y), entitySprites(entitySprites){
    this->entitySprites = entitySprites;
    ySpeed = 0;
    xSpeed = 0;
    myState = idle;
    spriteCounter = 0;
}

int Object::getxSpeed()
{
    return static_cast<int>(xSpeed);
}
int Object::getySpeed()
{
    return static_cast<int>(ySpeed);
}

void Object::updateySpeed(float speed){
    ySpeed = ySpeed + speed;
}

void Object::setySpeed(float speed){
    ySpeed = speed;
}

void Object::manageAnimation()
{
    spriteCounter++;
    if(spriteCounter % 10 == 0)
    {
        spriteCounter = 0;
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
            if(isFacingRight)
            {
                if(ID == entitySprites[3])
                {
                    ID = entitySprites[2];
                }
                else
                {
                    ID = entitySprites[3];
                }
            }
            else
            {
                if(ID == entitySprites[4])
                {
                    ID = entitySprites[5];
                }
                else
                {
                    ID = entitySprites[4];
                }
            }
                
                break;
        }
    }
}