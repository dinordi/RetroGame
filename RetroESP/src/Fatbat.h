#pragma once

#include "Enemy.h"
#include "sprites.h"


class Fatbat : public Enemy
{
public:
    Fatbat(int x, int y);
    bool collisionWith(int damage);
    void behaviour() override;
    void manageAnimation() override;
};