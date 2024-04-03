#include "Enemy.h"
#include <zephyr/sys/printk.h>
Enemy::Enemy(const int* entitySprites, int range,int x, int y) : Entity(entitySprites,range,x,y)
{
    damage = 5;
    hp = 50;
    xSpeed = 0;
    myState = idle;
}

bool Enemy::collisionWith(int damage)
{
    printk("collision enemy!");
    hp = hp - damage;
    myState = hit;
    return false;
}

// void Enemy::behaviour() {
//     lastmyState = myState;
//     static int count = 0;
//     if(hp <= 0)
//     {
//         myState = dead;
//     }
//     updateySpeed(gravity); 
//     y = y + ySpeed; 
//     x = x + xSpeed;
   
// }