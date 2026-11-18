/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.collision.layer

class AllBinaryCollisionManager : JObjectBase
{
    

    AllBinaryCollisionManager@ jinit_AllBinaryCollisionManager()
    {
        return this;
    }
    

    void process(ABLayerManager@ layerManager, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface, int startIndex)
    {
        int size = layerManager.getSize();
        for (int index = startIndex + 1; index < size; index++) {
            CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface2 = cast<CollidableInterfaceCompositeInterface>(layerManager.getLayerAt(index));
            this.collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2);
        }
    }
    

    void collide(ABLayerManager@ layerManager, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface2)
    {
        CollidableBaseBehavior@ collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface();
        CollidableBaseBehavior@ collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface();
        if (collidableBase2.isCollidable(cast<CollidableCompositeLayer>(collidableInterfaceCompositeInterface))) {
            if (collidableBase.isCollisionInterface(cast<CollidableCompositeLayer>(collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface2)) {
                collidableBase.collideInterface(cast<CollidableCompositeLayer>(collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface2);
                collidableBase2.collideInterface(cast<CollidableCompositeLayer>(collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface);
            }
        }
    }
}

namespace AllBinaryCollisionManager
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_allBinaryCollisionManager = AllBinaryCollisionManager().jinit_AllBinaryCollisionManager();
    }

    AllBinaryCollisionManager@ jcell_allBinaryCollisionManager;
    AllBinaryCollisionManager@ get_allBinaryCollisionManager() property { jclinit(); return jcell_allBinaryCollisionManager; }
    void set_allBinaryCollisionManager(AllBinaryCollisionManager@ value) property { jclinit(); @jcell_allBinaryCollisionManager = value; }
    

    AllBinaryCollisionManager@ getInstance()
    {
        return AllBinaryCollisionManager::allBinaryCollisionManager;
    }
}

