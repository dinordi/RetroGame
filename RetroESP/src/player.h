#pragma once

#include "entity.h"
class Bullet;
typedef struct {
    bool up;
    bool down;
    bool left;
    bool right;
    bool dash;
    bool shoot;
    bool start;
} buttonStatuses;

class Player : public Entity
{
public:
    Player(const int* playerSprites, int range,int x,int y,void* heapPtr);
    void handleInput(buttonStatuses buttonStatus);
    void setButtonStatus(buttonStatuses buttonStatus);
    Projectile* makeProjectile(struct k_heap* actorheap) override;
    void behaviour() override;
    bool isPlayer() const override { return true; }
    int attackCheck(bool isX) override;
    bool collisionWith(int damage) override;
    void manageAnimation() override;
    friend class Game;
    void setBobMode();
private:
    int printX;
    buttonStatuses lastButtonState;
    buttonStatuses buttonStatus;
    //Bullet* bullet;
    int hitAnimation;
    bool BOB;
};