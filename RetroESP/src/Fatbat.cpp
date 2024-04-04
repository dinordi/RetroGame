#include "Fatbat.h"
#include <zephyr/sys/printk.h>
//#include <zephyr/random/random.h>
#include "cstdlib"

int Fatbat::randomCounter = 0;


Fatbat::Fatbat(int x, int y) : Enemy(fatbatSprites,7,x,y)
{
    for(int i = 0; i < 1000; i++)
    {
        randomNumbers[i] = 0;// sys_rand32_get();
    }

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
    uint32_t rnd = 0;//sys_rand32_get();


    if(rnd % 400 < 7 && myState == idle)
    {
        myState = attacking;
        // printk("rnd: %u\n",rnd % 400);
    }


    if(x < 320.0)
    {
        isFacingRight = true;
    }
    else if(x > 1500.0)
    {
        isFacingRight = false;
    }
    else if(rnd % 1000 == 0)
    {
        isFacingRight = !isFacingRight;
    }

    if(myState == attacking && lastmyState != attacking)
    {
            int rndint = static_cast<int>(rnd);
            ySpeed = static_cast<float>((rndint%3)-12);
            // printk("ySpeed: %d\n",static_cast<int>(ySpeed));
            isGrounded = false;
            xSpeed = isFacingRight ? static_cast<float>((rndint%3)+2) : static_cast<float>((rndint%3)-5);

    }
    else if(myState == idle)
    {
        xSpeed = 0;
    }

    if(isGrounded == true)
    {
        myState = idle;
    }

    updateySpeed(gravity); 
    y = y + ySpeed; 
    x = x + xSpeed;
   
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