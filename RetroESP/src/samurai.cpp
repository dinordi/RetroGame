#include "samurai.h"

#include <zephyr/sys/printk.h>
#include <cstdlib>
#include <zephyr/random/random.h>


Samurai::Samurai(int x,int y, int playerX, int playerY) : Enemy(samuraiSprites, 15,x,y)
{
    hasCollision = true;
    hasGravity = true;
    isRanged = false;
    samState = waiting;
    this->playerX = playerX;
    this->playerY = playerY;
}

void Samurai::behaviour() 
{ 
   static int count = 0;
   count++;
    switch(samState)
    {
        case waiting:
        {
            if(seesPlayer())
            {
                samState = spottedPlayer;
            }
            if(count > 60)
            {
                isFacingRight = !isFacingRight;
            }
            else if(count > 120)
            {
                isFacingRight = !isFacingRight;
            }
            else if(count > 180)
            {
                samState = patrol;
                count = 0;
            }
            break;
        }
        case patrol:
        {
            if (isFacingRight ? xSpeed = 2 : xSpeed = -2);
            if(sys_rand32_get() % 100 ==0)
            {
                samState = waiting;
                count = 0;
            }
            break;
        }
        case spottedPlayer:
        {
            if(abs(playerX - x) < 10)
            {
                //Attack
            }
            if(x < playerX)
            {
                isFacingRight = true;
                xSpeed = 4;
            }
            else
            {
                isFacingRight = false;
                xSpeed = -4;
            }
            break;
        }
    }

    y = y + ySpeed; 
    x = x + xSpeed;
    myState = idle;
}

int Samurai::attackCheck(bool isX)
{
    if(isX) //X offset
    {
        if(isFacingRight)
            return 18;
        else
            return -18;
    }
    else    //Y offset
    {
        return 15;
    }
}

Projectile* Samurai::makeProjectile()
{
    return nullptr;
}

void Samurai::manageAnimation()
{
    spriteCounter+= 1;
    int mirror = 0;
    static int divider = 100;
    int index = spriteCounter / divider;

    if(!isFacingRight)
    {
        mirror = 512;
    }

    switch(myState)
    {
        case idle:
            if(spriteCounter % 30 < 15)
                ID = entitySprites[0];
            else
                ID = entitySprites[1];
            if(spriteCounter >= 30)
                spriteCounter = 0;
            break;

        case walking:
        {
            divider = 8;
            if (index < divider) 
            {
                ID = entitySprites[index + 3] + mirror;
            } 
            else
            {
                ID = entitySprites[10] + mirror;
            }
            if (spriteCounter >= 64) 
            {
                spriteCounter = 0;
            }
            break;
        }

        case attacking:
            divider = 6;
            if(index < divider)
                ID = entitySprites[index + 11] + mirror;
            else
                ID = entitySprites[16] + mirror;

            if(spriteCounter >= 64)
                spriteCounter = 0;
            break;
    }
}

bool Samurai::seesPlayer()
{
    if(isFacingRight)
    {
        if((x-playerX) < 100 && abs(playerY - y) < 30)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else
    {
        if((playerX-x) < 100 && abs(playerY - y) < 30)  
        {
            return true;
        }
        else
        {
            return false;
        }
    }

}

void Samurai::setPlayerPos(int x, int y)
{
    playerX = x;
    playerY = y;
}