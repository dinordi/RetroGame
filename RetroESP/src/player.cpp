#include "player.h"

#include <zephyr/sys/printk.h>

Player::Player(const int* playerSprites, int range) : Entity(playerSprites, range)
{
    printX = 320;
}

void Player::handleInput(buttonStatuses buttonStatus) {
    if (buttonStatus.up && isGrounded) {
        // Handle up
        ySpeed = -12;
        isGrounded = false;
    }
    if(buttonStatus.atk)
    {

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
}