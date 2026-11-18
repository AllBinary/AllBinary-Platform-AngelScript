// Generated Code Do Not Modify
// package org.allbinary.game.collision

class Collision2DProcessor : CollisionProcessor
{

    Collision2DProcessor@ jinit_Collision2DProcessor()
    {
        this.jinit_CollisionProcessor();
        return this;
    }
    

    bool isCollision(AllBinaryLayer@ myLayer, AllBinaryLayer@ myLayer2)
    {
        if (myLayer2.getXP() >= myLayer.getX2() || myLayer2.getYP() >= myLayer.getY2() || myLayer2.getX2() <= myLayer.getXP() || myLayer2.getY2() <= myLayer.getYP()) {
            return false;
        } else {
            return true;
        }
        return false;
    }
}

