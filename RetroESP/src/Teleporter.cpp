#include "Teleporter.h"
#include "level.h"

Teleporter::Teleporter(int x, int y) : Object(teleporterSprites, 15, x, y)
{
    ID = teleporterSprites[0];
}

void Teleporter::behaviour()
{

}

void Teleporter::manageAnimation()
{
    static int spriteCounter = 0;
    spriteCounter++;
    if(spriteCounter % 30 < 15)
        ID = entitySprites[0];
    else
        ID = entitySprites[1];
    if(spriteCounter >= 30)
        spriteCounter = 0;
}

bool Teleporter::collisionWith(int damage)
{
    return false;
}