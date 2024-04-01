#include "Bullet.h"

Bullet::Bullet(const int* entitySprites,int range,int x,int y) : Projectile(entitySprites,range,x,y){

    xSpeed = 4;
    ySpeed = 0;
    myState = flying;
}