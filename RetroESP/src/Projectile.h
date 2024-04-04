#pragma once
#include "Object.h"

class Projectile : public Object{

    public:
    Projectile(const int* entitySprites,int range,int x,int y,bool isFacingRight);
    bool isProjectile() const override { return true; }
    Type getType() const override { return PROJECTILE; }
};