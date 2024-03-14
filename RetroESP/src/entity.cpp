#include "entity.h"
#include "game.h"
#include <zephyr/sys/printk.h>

const float dt = 1.0f / 60;
const float gravity = 0.52f;

Entity::Entity(const int* entitySprites, game* game) : Actor(entitySprites[0])
{
    this->mygame = game;
    hp = 100;
    atk = 10;
    defense = 5;
    def.maxHealth = 100;
    def.maxAttack = 10;
    def.maxDefense = 5;
    def.maxSpeed = 5;
    isGrounded = true;
    myState = idle;
    spriteCounter = 0;
    this->entitySprites = entitySprites;
    ySpeed = 0;
}


void Entity::move(int x, int y)
{
    m(x, y);
}

void Entity::tick()
{

    int groundLevel = 458;  // Default ground level

    auto platforms = *(mygame->getPlatforms());
    for (Platform* platform : platforms) {
        int platformx = platform->getX();
        int platformy = platform->getY();
        if (y <= platformy-22)
        {
            if (x >= platformx - 15 && x <= platformx  + 15) {  // Check if entity is above the platform
                if (platformy-22  < groundLevel) {
                    groundLevel = platformy-22;
                    // printk("Ground level: %d\n", groundLevel);
                }
            }
        }
    }
    printk("y: %d, ySpeed: %d, ground level: %d\n", static_cast<int>(y), static_cast<int>(ySpeed), groundLevel);

    ySpeed += gravity;
    y += ySpeed;
    
    // y = y1;
    if(y > groundLevel)
    {
        y = groundLevel;
        isGrounded = true;
        ySpeed = 0;
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
            if(isFacingRight)
            {
                if(ID == entitySprites[3])
                {
                    ID = entitySprites[2];
                }
                else
                {
                    ID = entitySprites[3];
                }
            }
            else
            {
                if(ID == entitySprites[4])
                {
                    ID = entitySprites[4];
                }
                else
                {
                    ID = entitySprites[4];
                }
            }
                
                break;
        }
    }
}