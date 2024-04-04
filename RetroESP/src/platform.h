#pragma once

#include "actor.h"

class Platform : public Actor
{
public:
    Platform(int ID, int x, int y, int range);
    virtual ~Platform() = default;
    int getID() override;
    Type getType() const override { return PLATFORM; }
};