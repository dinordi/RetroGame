#include "Object.h"

class Projectile : public Object{

    public:
    Projectile(const int* entitySprites,int range,int x,int y,bool isFacingRight,void* heapPtr);
    bool isProjectile() const override { return true; }
};