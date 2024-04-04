#pragma once

#include "Enemy.h"
#include "sprites.h"

class Samurai : public Enemy
{
public:
    Samurai(const int* samuraiSprites, int range,int x,int y,void* heapPtr);
    ~Samurai() = default;
    void behaviour() override;
    bool isPlayer() const override { return false; }
    int attackCheck(bool isX) override;
    //Projectile* makeProjectile(struct k_heap* actorheap) override;
    void manageAnimation() override;
    bool collisionWith(int damage);
private:
    int hitAnimation;
};

