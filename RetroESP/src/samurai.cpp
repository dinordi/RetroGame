#include "samurai.h"
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
    hitAnimation = 0;
    hit = false;
    damage = 40;
}

void Samurai::behaviour() 
{ 
   static int count = 0;
   count++;
    switch(samState)
    {
        case waiting:
        {
            xSpeed = 0;
            myState = idle;
            if(seesPlayer())
            {
                samState = spottedPlayer;
                count = 0;
            }
            if(count == 60)
            {
                isFacingRight = !isFacingRight;
            }
            else if(count == 120)
            {
                isFacingRight = !isFacingRight;
            }
            else if(count == 180)
            {
                isFacingRight = !isFacingRight;
                samState = patrol;
                count = 0;
            }
            break;
        }
        case patrol:
        {
            myState = walking;
            xSpeed = isFacingRight ? 2 : -2;
            if(sys_rand32_get() % 200 ==0)
            {
                samState = waiting;
                count = 0;
            }
            if(seesPlayer())
            {
                samState = spottedPlayer;
                count = 0;
            }
            break;
        }
        case spottedPlayer:
        {
            myState = walking;
            
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
            if(abs(playerX - x) < 10)
            {
                //Attack
                samState = attackingPlayer;
                myState = attacking;
                xSpeed = 0;
                count = 0;
            }
            break;
        }
        case attackingPlayer:
        {
            if(count == 60)
            {
                samState = waiting;
                count = 0;
            }
            break;
        }
    }

    xSpeed = isFacingRight ? 2 : -2;

    if(hp <= 0)
    {
        myState = dead;
    }

    updateySpeed(gravity);
    y = y + ySpeed;
    x = x + xSpeed;

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
    if(hitAnimation == 20)
    {
        hit = false;
        hitAnimation = 0;
    }
    if(hit&&spriteCounter % 10 <= 5)
    {
        ID = empty15x15[0];
        hitAnimation++;
    }
    else{
        switch(myState)
        {
        case idle:
            if(spriteCounter % 30 < 15)
                ID = entitySprites[0] + mirror;
            else
                ID = entitySprites[1] + mirror;
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


bool Samurai::collisionWith(int damage)
{
    hp = hp - damage;
    if(damage){
        hit = true;
    }
    return false;
}