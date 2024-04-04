#include "Enemy.h"
#include "platform.h"
class WerewolfMan : public Enemy {
    public:
    WerewolfMan(int x, int y,void* heapPtr);
    bool collisionWith(int damage) override;
    void behaviour() override;
    void manageAnimation() override;
    
private:
    int hitAnimation;
};