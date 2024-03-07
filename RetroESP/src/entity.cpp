#include "entity.h"

Entity::Entity(int ID) : Actor(ID)
{
    hp = 100;
    atk = 10;
    defense = 5;
    speed = 5;
    def.maxHealth = 100;
    def.maxAttack = 10;
    def.maxDefense = 5;
    def.maxSpeed = 5;
    myDirection = east;
}

void Entity::setDir(direction d)
{
    myDirection = d;
}

direction Entity::getDir()
{
    return myDirection;
}


