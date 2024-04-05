#include "player.h"
#include "sprites.h"
#include "Bullet.h"
#include <cstdio>
#include "globals.h"

Player::Player(const int* playerSprites, int range,int x,int y) : Entity(playerSprites, range,x,y)
{
    hp = 100;
    printX = 320;
    hasCollision = true;
    hasGravity = true;
    isRanged = 1;
    damage = 0;
    hit = false;
    BOB = false;
    hitAnimation = 0;
}

void Player::behaviour() {
    lastmyState = myState;
    static int count = 0;
    static int dashCount = 0;
    static bool dash = false;
    static bool hasDashedInAir = false;

    if(hit == true && lastHit == false)
    {
        hp = hp - damageDone;
    }
    if (buttonStatus.up && isGrounded) {
        // Handle up
        ySpeed = -12;
        isGrounded = false;
    }
    if (buttonStatus.down) {

    }
    if (buttonStatus.left) {
        xSpeed = -3;
        myState = walking;
        isFacingRight = false;
    }
    if (buttonStatus.right) {
        xSpeed = 3;
        myState = walking;
        isFacingRight = true;
    }
    if(!buttonStatus.left && !buttonStatus.right) {
        xSpeed = 0;
        myState = idle;
        
    }
    if(buttonStatus.start && !lastButtonState.start)
    {
        count = 0;
    }
    if(count < 9)
    {
        count++;
        myState = attacking;
    }

    if((buttonStatus.dash && !lastButtonState.dash) && !dash && (isGrounded || !hasDashedInAir))
    {
        dash = true;
        hasDashedInAir = true;
        ySpeed = -7;
    }
    if(dash)
    {
        xSpeed = isFacingRight ? 6 : -6;
        if(dashCount >= 30)
        {
            dash = false;
            dashCount = 0;  
            xSpeed = 0;  
        }
        dashCount++;
    }
    if(isGrounded)
    {
        hasDashedInAir = false;
    }

    if(hp <= 0)
    {
        myState = dead;
    }
    updateySpeed(gravity); 
    y = y + ySpeed; 
    x = x + xSpeed;
    lastButtonState = buttonStatus;
    lastHit = hit;

}


//This function determines the offset of the sprite to be used for the attack animation
int Player::attackCheck(bool isX){
    if(isX) //X offset
    {
        if(isFacingRight)
            return 10;
        else
            return -10;
    }
    else    //Y offset
    {
        return 7;
    }
}

Projectile* Player::makeProjectile(){
    Bullet* bulletLocal = nullptr;
    for(auto bullet : bullets)
        {
            if(!bullet->inUse )
            {
                bullet->inUse = true;
                bullet->y = this->getY() - 3;
                bullet->isFacingRight = isFacingRight;
                bullet->hit = 0;
                bullet->myState = flying;
                bullet->xSpeed = 8;
                bulletLocal =  bullet;
                break;
            }

        }

    if(bulletLocal != nullptr)
    {
        if(isFacingRight)
            bulletLocal->x = this->getX() + 3;
        else
            bulletLocal->x = this->getX() - 3;
    }
    // printk("bullet X: %d, bullet Y:%d\n",static_cast<int>(bulletLocal->x), static_cast<int>(bulletLocal->y));
    return bulletLocal;
}

void Player::setButtonStatus(buttonStatuses buttonStatus){
    this->buttonStatus = buttonStatus;
}

void Player::manageAnimation()
{
    spriteCounter++;
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
                    ID = entitySprites[0];
                else
                    ID = entitySprites[1];
                if(spriteCounter == 30)
                    spriteCounter = 0;
                break;
            case walking:
                if(isFacingRight)
                {
                    if(spriteCounter % 16 < 8)
                        ID = entitySprites[2];
                    else
                        ID = entitySprites[3];
                    if(spriteCounter == 16)
                        spriteCounter = 0;
                }
                else
                {
                    if(spriteCounter % 16 < 8)
                        ID = entitySprites[4];
                    else
                        ID = entitySprites[5];
                    if(spriteCounter == 16)
                        spriteCounter = 0;
                }
                break;
            case flying:
                ID = entitySprites[12];
                spriteCounter = 0;
                break;
            case attacking:
                if(isFacingRight)
                {
                    if(spriteCounter % 9 < 3)
                        ID = entitySprites[6];
                    else if( spriteCounter % 9 < 6)
                        ID = entitySprites[7];
                    else
                        ID = entitySprites[8];
                    if(spriteCounter == 9)
                        spriteCounter = 0;
                }
                else
                {
                    if(spriteCounter % 9 < 3)
                        ID = entitySprites[9];
                    else if( spriteCounter % 9 < 6)
                        ID = entitySprites[10];
                    else
                        ID = entitySprites[11];
                    if(spriteCounter == 9)
                        spriteCounter = 0;
                }
                break;
        }
    }
}

void Player::setBobMode()
{
    BOB = true;
}

bool Player::collisionWith(int damage)
{
    if(damage && damage != 20 && !BOB){
        hit = true;
        damageDone = damage;
    }
    return false;
}