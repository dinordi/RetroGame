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
    if(buttonStatus.melee)
    {
        myState = attacking;
    }
}

Projectile* Player::makeProjectile(){
    return new Bullet(bulletID,7, this->getX()+3,this->getY()-3,isFacingRight);
}