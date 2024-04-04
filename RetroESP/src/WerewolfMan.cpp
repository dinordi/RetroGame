#include "werewolfman.h"
#include "sprites.h"

WerewolfMan::WerewolfMan(int x, int y) : Enemy(wherewolfSprites,7,x,y)
{
    damage = 20;
    hp = 50;
    ySpeed = 0;
    xSpeed = 2;
    myState = walking;
    isFacingRight = false;
    hitAnimation = 0;
    hit = false;
    range = 7;
}

bool WerewolfMan::collisionWith(int damage){
    hp = hp - damage;
    if(damage){
        hit = true;
    }
    return false;

}
void WerewolfMan::behaviour(){

    switch (myState)
    {
        case walking:
            x = x + xSpeed;
            if(x < endx)
                xSpeed = 1;
            else
                isFacingRight = false;
            if(x > beginx)
                xSpeed = -1;
            else
                isFacingRight = true;
            break;
    }

}
void WerewolfMan::manageAnimation(){
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
                if(spriteCounter % 20 < 10)
                    ID = entitySprites[0]+mirror;
                else
                    ID = entitySprites[1]+mirror;
                if(spriteCounter >= 20)
                    spriteCounter = 0;
            break;
            case walking:
                if(spriteCounter % 60 < 30)
                    ID = entitySprites[0]+mirror;
                else
                    ID = entitySprites[1]+mirror;
                if(spriteCounter >= 60)
                    spriteCounter = 0;
            break;
        }
    }
}