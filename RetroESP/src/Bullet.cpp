#include "Bullet.h"
//#include "platform.h"
#include <utility>
#include <zephyr/sys/printk.h>
Bullet::Bullet(const int* entitySprites,int range,int x,int y,bool isFacingRight) : Projectile(entitySprites,range,x,y,isFacingRight){
    xSpeed = 8;
    ySpeed = 0;
    myState = flying;
    damage = 10;
}

void Bullet::behaviour()
{
    if(!isFacingRight && xSpeed > 0)
        xSpeed = xSpeed * -1;
    x = xSpeed + x;
}

bool Bullet::collisionWith(int damage)
{
    //printk("bullet: %d",damage);
    xSpeed = 0;
    hit = 1;
    return false;
}

void Bullet::manageAnimation() 
{
    spriteCounter++;
    if(hit)
    {
        myState = dead;
    }
}

void Bullet::setBobMode()
{
    damage = 1000;
   
}