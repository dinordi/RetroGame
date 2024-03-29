#include "sprites.h"
#include <zephyr/sys/printk.h>

std::map<char, int> characters;

void initializeCharacters() {
    for (char c = 'a'; c <= 'z'; ++c) {
        characters[c] = c - 'a' + 11;
        
    }
    for (char c = '0'; c <= '9'; ++c) {
        characters[c] = c - '0' + 37;
        // printk("Character: %c, Value: %d\n", c, characters[c]);
    }
    characters[' '] = 100;
}