#pragma once
#include "entity.h"
#include <zephyr/sys/util.h>


class Enemy : public Entity{
    public:
    Enemy(const int* entitySprites, int range,int x, int y,void* heapPtr);
    bool collisionWith(int damage);
    // void behaviour();
private:
    int hitAnimation;
};