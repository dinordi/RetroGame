#include "Object.h"

Object::Object(const int* entitySprites,int range,int x ,int y,void* heapPtr) : Actor(entitySprites[0],range,x,y,heapPtr), entitySprites(entitySprites){
    this->entitySprites = entitySprites;
    ySpeed = 0;
    xSpeed = 0;
    myState = idle;
    spriteCounter = 0;
    isFacingRight = true;
    hit  = 0;
    lastHit = 0;
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