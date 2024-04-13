#include "entity.h"
//#include "game.h"


Entity::Entity(const int* entitySprites, int range,int x, int y) : Object(entitySprites,range,x,y)
{
    hp = 100;
    atk = 10;
    defense = 5;
    def.maxHealth = 100;
    def.maxAttack = 10;
    def.maxDefense = 5;
    def.maxSpeed = 5;
    hasGravity = 1;
    hasCollision = 1;
    isRanged = 0;
}

bool Entity::getIsGrounded(){
    return isGrounded;
}

void Entity::setIsGrounded(bool ground){
    isGrounded = ground;
}

int Entity::attackCheck(bool isX)
{
    return 0;
}

Projectile* Entity::makeProjectile(){
    return nullptr;
}