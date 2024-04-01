#include "Bullet.h"

Bullet::Bullet(const int* entitySprites,int range,int x,int y,bool isFacingRight) : Projectile(entitySprites,range,x,y,isFacingRight){
    xSpeed = xSpeed * 8;
    ySpeed = 0;
    myState = flying;
}

void Bullet::behaviour()
{
    x = xSpeed + x;
}