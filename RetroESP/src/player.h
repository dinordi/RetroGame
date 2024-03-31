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
    Player(const int* playerSprites, int range,int x,int y);
    void handleInput(buttonStatuses buttonStatus);
private:
    int printX;
    
};