#include "player.h"
#include "sprites.h"
#include "Bullet.h"
#include <zephyr/sys/printk.h>
#include <cstdio>
Player::Player(const int* playerSprites, int range,int x,int y) : Entity(playerSprites, range,x,y)
{
    printX = 320;
    hasCollision = true;
    hasGravity = true;
    isRanged = 1;
}

void Player::handleInput(buttonStatuses buttonStatus) {
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
    if(buttonStatus.melee && !lastButtonState.melee)
    {
        count = 0;
    }
    if(count < 24)
    {
        count++;
        myState = attacking;
    }
    lastButtonState = buttonStatus;

}

Projectile* Player::makeProjectile(){
    return new Bullet(bulletID,7, this->getX()+3,this->getY()-3,isFacingRight);
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