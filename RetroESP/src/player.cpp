#include "player.h"

#include <zephyr/sys/printk.h>

Player::Player(const int* playerSprites, Game* game) : Entity(playerSprites, game)
{
    printX = 320;
}

void Player::handleInput(buttonStatuses buttonStatus) {
    if (buttonStatus.up && isGrounded) {
        // Handle up
        ySpeed = -12;
        isGrounded = false;
    }
    if (buttonStatus.down) {

    }
    if (buttonStatus.left) {
        xSpeed = -2;
        myState = walking;
        isFacingRight = false;
    }
    if (buttonStatus.right) {
        xSpeed = 2;
        myState = walking;
        isFacingRight = true;
    }
    if(!buttonStatus.left && !buttonStatus.right) {
        xSpeed = 0;
        myState = idle;
        
    }
}