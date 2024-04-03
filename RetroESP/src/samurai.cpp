#include "samurai.h"

#include <zephyr/sys/printk.h>


Samurai::Samurai(const int* samuraiSprites, int range,int x,int y) : Enemy(samuraiSprites, range,x,y)
{
    hasCollision = true;
    hasGravity = true;
    isRanged = false;
}

void Samurai::behaviour() 
{ 
    if (isFacingRight && x >= 1000) {
        isFacingRight = false;
    } else if (!isFacingRight && x <= 340) {
        isFacingRight = true;
    }

    xSpeed = isFacingRight ? 2 : -2;

    y = y + ySpeed; 
    x = x + xSpeed;
    myState = walking;
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
	    switch (myState) {
	    case idle:
		    if (spriteCounter % 30 < 15) {
			    ID = entitySprites[0];
		    } else {
			    ID = entitySprites[1];
		    }
		    if (spriteCounter >= 30) {
			    spriteCounter = 0;
		    }
		    break;

	    case walking: {
		    divider = 8;
		    if (index < divider) {
			    ID = entitySprites[index + 3] + mirror;
		    } else {
			    ID = entitySprites[10] + mirror;
		    }
		    if (spriteCounter >= 64) {
			    spriteCounter = 0;
		    }
		    break;
	    }

	    case attacking:
		    divider = 6;
		    if (index < divider) {
			    ID = entitySprites[index + 11] + mirror;
		    } else {
			    ID = entitySprites[16] + mirror;
		    }

		    if (spriteCounter >= 64) {
			    spriteCounter = 0;
		    }
		    break;
	    }
    }
}

bool Samurai::collisionWith(int damage)
{
    hp = hp - damage;
    if(damage){
        hit = true;
    }
	return false;
}
