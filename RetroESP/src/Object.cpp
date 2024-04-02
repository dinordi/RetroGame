#include "Object.h"

Object::Object(const int* entitySprites,int range,int x ,int y) : Actor(entitySprites[0],range,x,y), entitySprites(entitySprites){
    this->entitySprites = entitySprites;
    ySpeed = 0;
    xSpeed = 0;
    myState = idle;
    spriteCounter = 0;
    isFacingRight = true;
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
    
}

void Object::behaviour()
{
    
}

bool Object::collisionWith(int damage){
    return false;
 }