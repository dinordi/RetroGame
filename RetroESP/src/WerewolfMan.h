#pragma once
#include "Enemy.h"
#include "platform.h"

class WerewolfMan : public Enemy {
    public:
    WerewolfMan(int x, int y);
    bool collisionWith(int damage) override;
    void behaviour() override;
    void manageAnimation() override;
    friend class Game;
    
private:
    int hitAnimation;
    int beginx;
    int endx;
};