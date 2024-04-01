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

void Player::behaviour() {
    lastmyState = myState;
    static int count;
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
    if(count < 3)
    {
        count++;
        myState = attacking;
    }
    y = y + ySpeed; 
    x = xSpeed + x; //add the moving speed to current x
    lastButtonState = buttonStatus;
    
}

void Player::setButtonStatus(buttonStatuses buttonStatus)
{
    this->buttonStatus = buttonStatus;
}

Projectile* Player::makeProjectile(){
    if(isFacingRight)
        return new Bullet(bulletID,7, this->getX()+3,this->getY()-3,isFacingRight);
    else
      return new Bullet(bulletID,7, this->getX()-3,this->getY()-3,isFacingRight);
}