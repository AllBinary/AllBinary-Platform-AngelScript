// Generated Code Do Not Modify
// package org.allbinary.game.collision

class CollisionThreedProcessor : CollisionProcessor
{

    CollisionThreedProcessor@ jinit_CollisionThreedProcessor()
    {
        this.jinit_CollisionProcessor();
        return this;
    }
    

    bool isCollision(AllBinaryLayer@ myLayer, AllBinaryLayer@ myLayer2)
    {
        if (myLayer2.getXP() >= myLayer.getX2() || myLayer2.getYP() >= myLayer.getY2() || myLayer2.getX2() <= myLayer.getXP() || myLayer2.getY2() <= myLayer.getYP() || myLayer2.getZP() < myLayer.getZ2() || myLayer2.getZ2() > myLayer.getZP()) {
            return false;
        } else {
            return true;
        }
        return false;
    }
}

