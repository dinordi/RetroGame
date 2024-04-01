#pragma once

#include "entity.h"
class Bullet;
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
    Projectile* makeProjectile() override;
    bool isPlayer() const override { return true; }
    friend class Game;
private:
    int printX;
    //Bullet* bullet;
    
};