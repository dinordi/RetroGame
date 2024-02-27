#pragma once

#include <vector>
#include "entity.h"

class game
{
public:
    game();
    ~game();

    void update();
    void sendToDisplay();
private:
    std::vector<Entity*> entities;
};