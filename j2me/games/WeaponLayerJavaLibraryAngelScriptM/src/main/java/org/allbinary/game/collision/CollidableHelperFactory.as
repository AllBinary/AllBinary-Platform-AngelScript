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

class CollidableHelperFactory : JObjectBase
{

    CollidableHelperFactory@ jinit_CollidableHelperFactory()
    {
        return this;
    }
}

namespace CollidableHelperFactory
{
    

    CollisionHelper@ getInstance()
    {
        if (Features::getInstance().isFeature(GameFeatureFactory::getInstance().COLLISIONS_WITH_SOURCE)) {
            return CollisionHelper().jinit_CollisionHelper(AllBinaryLayer::NULL_ALLBINARY_LAYER);
        } else {
            return SourceCollisionHelper().jinit_SourceCollisionHelper(AllBinaryLayer::NULL_ALLBINARY_LAYER);
        }
        return null;
    }
}

