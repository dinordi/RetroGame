#pragma once

#include "actor.h"

class Platform : public Actor
{
public:
    Platform(int ID) override;
    getID() override;
}