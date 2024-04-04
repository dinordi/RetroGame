#include "Fatbat.h"
#include <zephyr/sys/printk.h>
#include <zephyr/random/random.h>
#include "cstdlib"

int Fatbat::randomCounter = 0;


Fatbat::Fatbat(int x, int y,void* heapPtr) : Enemy(fatbatSprites,7,x,y,heapPtr)
{
    // for(int i = 0; i < 1000; i++)
    // {
    //     randomNumbers[i] = sys_rand32_get();
    // }

    damage = 5;
    hp = 20;
    xSpeed = 0;
    myState = idle;
    isFacingRight = false;
    hitAnimation = 0;
    hit = false;
}

bool Fatbat::collisionWith(int damage)
{
    hp = hp - damage;
    if(damage){
        hit = true;
    }
    return false;
}

void Fatbat::behaviour() {
    randomCounter++;
    lastmyState = myState;
    //Randomly attack
   int rnd = randomNumbers[randomCounter + static_cast<int>(x) %1000];

    if(rnd % 400 == 0 && lastmyState == idle)
    {
        myState = attacking;
    }

    if(myState == attacking && lastmyState == idle)
    {
        ySpeed = rnd % 6 - 12;
        isGrounded = false;
        if(isFacingRight)
        {
            xSpeed = rnd % 2 + 3;
        }
        else
        {
            xSpeed = rnd % 2 - 5;        }
    }
    else if(myState == idle)
    {
        xSpeed = 0;
    }
    if(isGrounded==true)
    {
        myState = idle;
    }

    updateySpeed(gravity); 
    y = y + ySpeed; 
    x = x + xSpeed;
    if(x <= 320)  
    {
        isFacingRight = true;
        myState = idle;
        x = x + 2 * abs(xSpeed);
    }
    else if(x >= 1500){
        isFacingRight = false;
        myState = idle;
        x = x + -2 * abs(xSpeed);
    }
    else if(rnd % 1000 == 0 && lastmyState == attacking)
    {
        isFacingRight = !isFacingRight;
    }
    if(hp <= 0)
    {
        myState = dead;
    }
   
}

void Fatbat::manageAnimation()
{
    spriteCounter+= 1;
    int mirror = 0;
    static int divider = 100;

    if(!isFacingRight)
    {
        mirror = 512;
    }
    if(hitAnimation == 20)
    {
        hit = false;
        hitAnimation = 0;
    }
    if(hit&&spriteCounter % 10 <= 5)
    {
        ID = empty15x15[0];
        hitAnimation++;
    }
    else{
        switch(myState)
        {
            case idle:
                if(spriteCounter % 30 < 15)
                    ID = entitySprites[0]+mirror;
                else
                    ID = entitySprites[1]+mirror;
                if(spriteCounter >= 30)
                    spriteCounter = 0;
            break;
            case attacking:
                ID = entitySprites[2]+mirror;
            break;
        }
    }
}