#include "entity.h"
//#include "game.h"
#include <zephyr/sys/printk.h>


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
}



// void Entity::manageAnimation()
// {
//     spriteCounter++;
//     if(spriteCounter % 10 == 0)
//     {
//         spriteCounter = 0;
//         switch(myState)
//         {
//             case idle:
//                 if(ID == entitySprites[0])
//                 {
//                     ID = entitySprites[1];
//                 }
//                 else
//                 {
//                     ID = entitySprites[0];
//                 }
//                 break;
//             case walking:
//             if(isFacingRight)
//             {
//                 if(ID == entitySprites[3])
//                 {
//                     ID = entitySprites[2];
//                 }
//                 else
//                 {
//                     ID = entitySprites[3];
//                 }
//             }
//             else
//             {
//                 if(ID == entitySprites[4])
//                 {
//                     ID = entitySprites[5];
//                 }
//                 else
//                 {
//                     ID = entitySprites[4];
//                 }
//             }
                
//                 break;
//         }
//     }
// }

// int Entity::getxSpeed()
// {
//     return static_cast<int>(xSpeed);
// }
// int Entity::getySpeed()
// {
//     return static_cast<int>(ySpeed);
// }

bool Entity::getIsGrounded(){
    return isGrounded;
}

void Entity::setIsGrounded(bool ground){
    isGrounded = ground;
}

