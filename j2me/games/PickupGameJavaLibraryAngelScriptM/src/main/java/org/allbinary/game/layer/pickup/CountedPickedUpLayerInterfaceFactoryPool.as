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
// package org.allbinary.game.layer.pickup

class CountedPickedUpLayerInterfaceFactoryPool : JObjectBase
{
    BasicArrayList@ list_CountedPickedUpLayerInterfaceFactoryPool;
    

    CountedPickedUpLayerInterfaceFactoryPool@ jinit_CountedPickedUpLayerInterfaceFactoryPool()
    {
        @this.list_CountedPickedUpLayerInterfaceFactoryPool = BasicArrayListD().jinit_BasicArrayListD();
        return this;
    }
    

    BasicArrayList@ getList()
    {
        return this.list_CountedPickedUpLayerInterfaceFactoryPool;
    }
}

namespace CountedPickedUpLayerInterfaceFactoryPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = CountedPickedUpLayerInterfaceFactoryPool().jinit_CountedPickedUpLayerInterfaceFactoryPool();
    }

    CountedPickedUpLayerInterfaceFactoryPool@ jcell_SINGLETON;
    CountedPickedUpLayerInterfaceFactoryPool@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(CountedPickedUpLayerInterfaceFactoryPool@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    CountedPickedUpLayerInterfaceFactoryPool@ getInstance()
    {
        return CountedPickedUpLayerInterfaceFactoryPool::SINGLETON;
    }
    

    void init()
    {
        @CountedPickedUpLayerInterfaceFactoryPool::SINGLETON = CountedPickedUpLayerInterfaceFactoryPool().jinit_CountedPickedUpLayerInterfaceFactoryPool();
    }
}

