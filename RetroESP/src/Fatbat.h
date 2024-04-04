#pragma once

#include "Enemy.h"
#include "sprites.h"


class Fatbat : public Enemy
{
public:
    Fatbat(int x, int y,void* heapPtr);
    bool collisionWith(int damage) override;
    void behaviour() override;
    void manageAnimation() override;
    
private:
    int hitAnimation;
    uint32_t randomNumbers[1000];
    static int randomCounter;
};