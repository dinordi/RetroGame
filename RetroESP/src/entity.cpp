#include "entity.h"
const float dt = 1.0f / 60;
const float gravity = 9.8f;

Entity::Entity(const int* entitySprites) : Actor(entitySprites[0])
{
    hp = 100;
    atk = 10;
    defense = 5;
    def.maxHealth = 100;
    def.maxAttack = 10;
    def.maxDefense = 5;
    def.maxSpeed = 5;
    myDirection = east;
    isGrounded = true;
    myState = idle;
    spriteCounter = 0;
}

void Entity::setDir(direction d)
{
    myDirection = d;
}

direction Entity::getDir()
{
    return myDirection;
}

void Entity::move(int x, int y)
{
    m(x, y);
}

void Entity::tick()
{
    ySpeed += gravity * dt;
    int y1 = y;
    y1 += ySpeed * dt;
    if(y1 > 240)
    {
        y1 = 240;
        isGrounded = true;
    }
    x += xSpeed;
    if(x <= 320)
    {
        x = 320;
    }
    else if(x >= 1600)
    {
        x = 1600;
    }
    // move(x, y);
}

int Entity::getID()
{
    manageAnimation();
    return ID;
}

void Entity::manageAnimation()
{
    spriteCounter++;
    if(spriteCounter % 20 == 0)
    {
        spriteCounter = 0;
        switch(myState)
        {
            case idle:
                if(ID == entitySprites[0])
                {
                    ID = entitySprites[1];
                }
                else
                {
                    ID = entitySprites[0];
                }
                break;
            case walking:
                if(ID == entitySprites[3])
                {
                    ID = entitySprites[2];
                }
                else
                {
                    ID = entitySprites[3];
                }
                break;
        }
    }
}