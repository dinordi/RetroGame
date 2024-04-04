#pragma once

#include "Enemy.h"
#include "sprites.h"

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
    bool collisionWith(int damage);
    Type getType() const override { return Type::BOSS; }
    friend class Game;
private:
    int hitAnimation;
};

