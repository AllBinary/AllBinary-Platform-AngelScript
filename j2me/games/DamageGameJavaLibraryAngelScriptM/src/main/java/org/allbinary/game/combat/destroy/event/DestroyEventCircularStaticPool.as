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
// package org.allbinary.game.combat.destroy.event

class DestroyEventCircularStaticPool : JObjectBase
{
    AllBinaryEventCircularPool@ EVENT_POOL_DestroyEventCircularStaticPool;

    // Java field initializers run after the super constructor
    void jfields_DestroyEventCircularStaticPool()
    {
    @this.EVENT_POOL_DestroyEventCircularStaticPool = AllBinaryEventCircularPool().jinit_AllBinaryEventCircularPool(20);
    }
    

    DestroyEventCircularStaticPool@ jinit_DestroyEventCircularStaticPool()
    {
        this.jfields_DestroyEventCircularStaticPool();
        return this;
    }
    

    void init(AllBinaryGameCanvas@ combatGameCanvas)
    {
        this.EVENT_POOL_DestroyEventCircularStaticPool.initAllBinaryEventCircularPool(DestroyEventFactory().jinit_DestroyEventFactory(combatGameCanvas));
    }
    

    DestroyedEvent@ getInstanceForLayer(AllBinaryLayer@ layerInterface)
    {
        DestroyedEvent@ destroyedEvent = cast<DestroyedEvent>(this.EVENT_POOL_DestroyEventCircularStaticPool.getNextInstance());
        destroyedEvent.setLayerInterfaceForCircularStaticPool(layerInterface);
        return destroyedEvent;
    }
}

namespace DestroyEventCircularStaticPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DestroyEventCircularStaticPool().jinit_DestroyEventCircularStaticPool();
    }

    DestroyEventCircularStaticPool@ jcell_instance;
    DestroyEventCircularStaticPool@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DestroyEventCircularStaticPool@ value) property { jclinit(); @jcell_instance = value; }
    

    DestroyEventCircularStaticPool@ getInstance()
    {
        return DestroyEventCircularStaticPool::instance;
    }
}

