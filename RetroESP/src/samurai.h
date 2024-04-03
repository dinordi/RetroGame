#pragma once

#include "Enemy.h"


class Samurai : public Enemy
{
public:
    Samurai(const int* samuraiSprites, int range,int x,int y);
    ~Samurai() = default;
    void behaviour() override;
    bool isPlayer() const override { return false; }
    int attackCheck(bool isX) override;
    Projectile* makeProjectile() override;
    void manageAnimation() override;
};

