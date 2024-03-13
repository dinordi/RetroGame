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
    }
    if (buttonStatus.right) {
        xSpeed = -2;
    }
    if(!buttonStatus.left && !buttonStatus.right) {
        xSpeed = 0;
    }
}