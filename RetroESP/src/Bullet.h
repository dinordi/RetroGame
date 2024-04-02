#include "Projectile.h"

class Bullet : public Projectile {
    public:
    Bullet(const int* entitySprites,int range,int x,int y,bool isFacingRight);
    void behaviour() override;
    bool collisionWith(int damage) override;
    void manageAnimation() override;
};