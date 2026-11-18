/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.layer.pickup

class PickedUpLayerInterfaceFactoryBase : JObjectBase, PickedUpLayerInterfaceFactoryInterface
{

    PickedUpLayerInterfaceFactoryBase@ jinit_PickedUpLayerInterfaceFactoryBase()
    {
        return this;
    }
    

    AllBinaryLayer@ getIconLayer()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    Animation@ getAnimationInterface()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    PickedUpLayerType@ getPickedUpLayerType()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
}

namespace PickedUpLayerInterfaceFactoryBase
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE = PickedUpLayerInterfaceFactoryBase().jinit_PickedUpLayerInterfaceFactoryBase();
    }

    PickedUpLayerInterfaceFactoryBase@ jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE;
    PickedUpLayerInterfaceFactoryBase@ get_NULL_PICKED_UP_LAYER_FACTORY_BASE() property { jclinit(); return jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE; }
    void set_NULL_PICKED_UP_LAYER_FACTORY_BASE(PickedUpLayerInterfaceFactoryBase@ value) property { jclinit(); @jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE = value; }
}

