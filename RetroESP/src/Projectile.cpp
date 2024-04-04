#include "Projectile.h"

Projectile::Projectile(const int* entitySprites,int range,int x,int y,bool isFacingRight,void* heapPtr) : Object(entitySprites,range,x,y,heapPtr){
    if(isFacingRight)
    xSpeed = 1;
    else
    xSpeed = -1;
    hasCollision = 0;
    hasGravity = 0;
}


