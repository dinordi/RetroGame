#include "player.h"
#include "sprites.h"
#include "Bullet.h"
#include <zephyr/sys/printk.h>
#include <cstdio>

const float gravity = 0.52f;
Player::Player(const int* playerSprites, int range,int x,int y) : Entity(playerSprites, range,x,y)
{
    printX = 320;
    hasCollision = true;
    hasGravity = true;
    isRanged = 1;
    damage = 0;
}

void Player::behaviour() {
    lastmyState = myState;
    static int count = 0;
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
    updateySpeed(gravity); 
    y = y + ySpeed; 
    x = x + xSpeed;
    lastButtonState = buttonStatus;

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
    if(isFacingRight)
        return new Bullet(bulletID,7, this->getX()+3,this->getY()-3,isFacingRight);
    else
      return new Bullet(bulletID,7, this->getX()-3,this->getY()-3,isFacingRight);
}

void Player::setButtonStatus(buttonStatuses buttonStatus){
    this->buttonStatus = buttonStatus;
}

void Player::manageAnimation()
{
    spriteCounter++;
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
                ID = entitySprites[0];
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

bool Player::collisionWith(int damage)
{
    return false;
}