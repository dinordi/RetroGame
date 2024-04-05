#pragma once

#include "Object.h"

class Teleporter : public Object {
    public:
    Teleporter(int x, int y);
    void behaviour() override;
    void manageAnimation() override;
    bool collisionWith(int damage) override;
};