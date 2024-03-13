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

class Player : public Entity
{
public:
    Player(int* playerSprites);
    void handleInput(buttonStatuses buttonStatus);
private:
    int printX;
    
};