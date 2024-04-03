#include "Bullet.h"
//#include "platform.h"
#include <utility>
#include <zephyr/sys/printk.h>
Bullet::Bullet(const int* entitySprites,int range,int x,int y,bool isFacingRight) : Projectile(entitySprites,range,x,y,isFacingRight){
    xSpeed = xSpeed * 8;
    ySpeed = 0;
    myState = flying;
    damage = 10;
}

void Bullet::behaviour()
{
    x = xSpeed + x;
}

bool Bullet::collisionWith(int damage)
{
    //printk("bullet: %d",damage);
    xSpeed = 0;
    myState = hit;
    return false;
}

void Bullet::manageAnimation() 
{
    spriteCounter++;
    switch(myState)
    {
        case hit:
            myState = dead;
        break;
    }
}