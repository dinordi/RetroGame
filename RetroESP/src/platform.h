#pragma once

#include "actor.h"

class Platform : public Actor
{
public:
    Platform(int ID, int x, int y, int range,void* heapPtr);
    virtual ~Platform() = default;
    int getID() override;
};