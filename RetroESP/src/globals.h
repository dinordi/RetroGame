/**
 * @file globals.h
 * @author -
 * @brief This file contains the global variables used in the RetroGame project.
 * @version 0.1
 * @date 2024-04-21
 * 
 * @copyright Copyright (c) 2024
 * 
 */
#pragma once
#ifndef GLOBALS_H
#define GLOBALS_H

#include <vector>
#include "Fatbat.h"
#include "Platform.h"
#include "Bullet.h"
#include "WerewolfMan.h"
#include "Teleporter.h"

extern std::vector<Fatbat*> fatbats;
extern std::vector<Platform*> level1;
extern std::vector<Platform*> level2;
extern std::vector<Platform*> level3;
extern std::vector<Bullet*> bullets;
extern std::vector<WerewolfMan*> werewolfMans;
extern std::vector<Teleporter*> teleporters;


#endif // GLOBALS_H