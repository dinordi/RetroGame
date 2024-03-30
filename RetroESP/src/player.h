#pragma once

#include "entity.h"

typedef struct {
    bool up;
    bool down;
    bool left;
    bool right;
    bool melee;
    bool atk;
} buttonStatuses;

class Game;

class Player : public Entity
{
public:
    Player(const int* playerSprites, int);
    void handleInput(buttonStatuses buttonStatus);
private:
    int printX;
    
};