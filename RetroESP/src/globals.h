// globals.h
#pragma once
#ifndef GLOBALS_H
#define GLOBALS_H

#include <vector>
#include "Fatbat.h"
#include "Platform.h"
#include "Bullet.h"

extern std::vector<Fatbat*> fatbats;
extern std::vector<Platform*> level1;
extern std::vector<Platform*> level2;
extern std::vector<Platform*> level3;
extern std::vector<Bullet*> bullets;

#endif // GLOBALS_H