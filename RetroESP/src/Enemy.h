#pragma once
#include "entity.h"
#include <zephyr/sys/util.h>


class Enemy : public Entity{
    public:
    Enemy(const int* entitySprites, int range,int x, int y);
    bool collisionWith(int damage);
    // void behaviour();
};