#include "entity.h"
#include "game.h"
#include <zephyr/sys/printk.h>


Entity::Entity(const int* entitySprites, int range) : Actor(entitySprites[0],range)
{
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




// void Entity::tick()
// {

//     int groundLevel = 458;  // Default ground level

//     auto platforms = *(mygame->getPlatforms());
//     for (Platform* platform : platforms) {
//         int platformx = platform->getX();
//         int platformy = platform->getY();
//         if (y <= platformy-22)
//         {
//             if (x >= platformx - 15 && x <= platformx  + 15) {  // Check if entity is above the platform
//                 if (platformy-22  < groundLevel) {
//                     groundLevel = platformy-22;
//                     // printk("Ground level: %d\n", groundLevel);
//                 }
//             }
//         }
//     }

//     ySpeed += gravity;
//     y += ySpeed;
    
//     // y = y1;
//     if(y > groundLevel)
//     {
//         y = groundLevel;
//         isGrounded = true;
//         ySpeed = 0;
//     }
//     x += xSpeed;
//     if(x <= 320)
//     {
//         x = 320;
//     }
//     else if(x >= 1600)
//     {
//         x = 1600;
//     }
//     // move(x, y);
// }

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

int Entity::getxSpeed()
{
    return static_cast<int>(xSpeed);
}
int Entity::getySpeed()
{
    return static_cast<int>(ySpeed);
}

bool Entity::getIsGrounded(){
    return isGrounded;
}

void Entity::setIsGrounded(bool ground){
    isGrounded = ground;
}

void Entity::updateySpeed(float speed){
    ySpeed = ySpeed + speed;
}

void Entity::setySpeed(float speed){
    ySpeed = speed;
}