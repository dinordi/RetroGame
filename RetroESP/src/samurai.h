#pragma once

#include "Enemy.h"
#include "sprites.h"

typedef enum
{
    waiting,
    patrol,
    spottedPlayer,
    attackingPlayer
} SamuraiState;

class Samurai : public Enemy
{
public:
    Samurai(int x,int y, int playerX, int playerY);
    ~Samurai() = default;
    void behaviour() override;
    bool isPlayer() const override { return false; }
    int attackCheck(bool isX) override;
    Projectile* makeProjectile() override;
    void manageAnimation() override;
    bool seesPlayer();
    void setPlayerPos(int x, int y);
private:
    SamuraiState samState;
    int playerX;
    int playerY;
};

