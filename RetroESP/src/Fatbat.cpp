#include "Fatbat.h"
#include <zephyr/sys/printk.h>
#include <zephyr/random/random.h>

Fatbat::Fatbat(int x, int y) : Enemy(fatbatSprites,7,x,y)
{

    damage = 5;
    hp = 50;
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
    lastmyState = myState;
    //printk("Fatbat hp in behav: %d\n",hp);
    //Randomly attack
    uint32_t rnd = sys_rand32_get();

    if(rnd % 120 == 0 && myState != attacking)
    {
        myState = attacking;
    }

    if(myState == attacking && lastmyState != attacking)
    {
        ySpeed = -11;
        isGrounded = false;
        if(isFacingRight)
        {
            xSpeed = 5;
        }
        else
        {
            xSpeed = -5;
        }
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
    if(rnd % 4000 ==0 || x <= 340 || x >= 1580)
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
    int index = spriteCounter / divider;

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