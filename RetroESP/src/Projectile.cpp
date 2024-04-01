#include "Projectile.h"

Projectile::Projectile(const int* entitySprites,int range,int,int) : Object(entitySprites,range,x,y){
    hasCollision = 1;
    hasGravity = 0;
}