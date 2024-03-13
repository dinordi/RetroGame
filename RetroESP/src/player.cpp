#include "player.h"

Player::Player(int* playerSprites) : Entity(playerSprites)
{
    printX = 920;
}

void handleInput(int buttonStatus) {
    if (buttonStatus.up && isGrounded) {
        // Handle up
        ySpeed = -1;
        isGrounded = false;
    }
    if (buttonStatus.down) {

    }
    if (buttonStatus.left) {
        xSpeed = -1;
    }
    if (buttonStatus.right) {
        xSpeed = 1;
    }
    if(!buttonStatus.left && !buttonStatus.right) {
        xSpeed = 0;
    }
}