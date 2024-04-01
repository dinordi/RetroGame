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
        switch(myState)
        {
            case idle:
                if(spriteCounter % 30 < 15)
                    ID = entitySprites[0];
                else
                    ID = entitySprites[1];
                if(spriteCounter == 30)
                    spriteCounter = 0;
                break;
            case walking:
                if(isFacingRight)
                {
                    if(spriteCounter % 16 < 8)
                        ID = entitySprites[2];
                    else
                        ID = entitySprites[3];
                    if(spriteCounter == 16)
                        spriteCounter = 0;
                }
                else
                {
                    if(spriteCounter % 16 < 8)
                        ID = entitySprites[4];
                    else
                        ID = entitySprites[5];
                    if(spriteCounter == 16)
                        spriteCounter = 0;
                }
                break;
            case flying:
                ID = entitySprites[0];
                spriteCounter = 0;
                break;
            case attacking:
                if(isFacingRight)
                {
                    if(spriteCounter % 9 < 3)
                        ID = entitySprites[6];
                    else if( spriteCounter % 9 < 6)
                        ID = entitySprites[7];
                    else
                        ID = entitySprites[8];
                    if(spriteCounter == 9)
                        spriteCounter = 0;
                }
                else
                {
                    if(spriteCounter % 9 < 3)
                        ID = entitySprites[9];
                    else if( spriteCounter % 9 < 6)
                        ID = entitySprites[10];
                    else
                        ID = entitySprites[11];
                    if(spriteCounter == 9)
                        spriteCounter = 0;
                }
                break;
        }
}

void Object::behaviour()
{
    
}