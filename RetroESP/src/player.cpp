#include "player.h"

Player::Player(const int* playerSprites) : Entity(playerSprites)
{
    printX = 320;
}

void Player::handleInput(buttonStatuses buttonStatus) {
    if (buttonStatus.up && isGrounded) {
        return;
        // Handle up
        ySpeed = -1;
        isGrounded = false;
    }
    if (buttonStatus.down) {

    }
    if (buttonStatus.left) {
        xSpeed = 2;
        myState = walking;
        isFacingRight = false;
    }
    if (buttonStatus.right) {
        xSpeed = -2;
        myState = walking;
        isFacingRight = true;
    }
    if(!buttonStatus.left && !buttonStatus.right) {
        xSpeed = 0;
        myState = idle;
        
    }
}