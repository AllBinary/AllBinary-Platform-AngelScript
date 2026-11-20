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
// package org.allbinary.game.collision

class LayerCollisionUtil : JObjectBase
{
    CollisionProcessor@ collisionProcessor_LayerCollisionUtil;
    

    LayerCollisionUtil@ jinit_LayerCollisionUtil()
    {
        Features@ features = Features::getInstance();
        GameFeatureFactory@ gameFeatureFactory = GameFeatureFactory::getInstance();
        if (OpenGLFeatureUtil::getInstance().isAnyThreed() && !features.isFeature(gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL)) {
            @this.collisionProcessor_LayerCollisionUtil = CollisionThreedProcessor().jinit_CollisionThreedProcessor();
        } else {
            @this.collisionProcessor_LayerCollisionUtil = Collision2DProcessor().jinit_Collision2DProcessor();
        }
        return this;
    }
    

    bool isCollision(AllBinaryLayer@ myLayer, AllBinaryLayer@ myLayer2)
    {
        return this.collisionProcessor_LayerCollisionUtil.isCollision(myLayer, myLayer2);
    }
}

namespace LayerCollisionUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LayerCollisionUtil().jinit_LayerCollisionUtil();
    }

    LayerCollisionUtil@ jcell_instance;
    LayerCollisionUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LayerCollisionUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LayerCollisionUtil@ getInstance()
    {
        return LayerCollisionUtil::instance;
    }
}

