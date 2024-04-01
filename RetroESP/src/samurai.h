#pragma once

#include "entity.h"


class Samurai : public Entity
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

