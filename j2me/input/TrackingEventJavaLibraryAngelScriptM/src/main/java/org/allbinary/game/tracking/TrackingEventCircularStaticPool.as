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
// package org.allbinary.game.tracking

class TrackingEventCircularStaticPool : JObjectBase
{
    AllBinaryEventCircularPool@ EVENT_POOL;

    // Java field initializers run after the super constructor
    void jfields_TrackingEventCircularStaticPool()
    {
    @this.EVENT_POOL = AllBinaryEventCircularPool().jinit_AllBinaryEventCircularPool(20);
    }

    TrackingEventCircularStaticPool@ jinit_TrackingEventCircularStaticPool()
    {
        this.jfields_TrackingEventCircularStaticPool();
        return this;
    }
    

    void init()
    {
        this.EVENT_POOL.initAllBinaryEventCircularPool(TrackingEventFactory().jinit_TrackingEventFactory());
    }
    

    TrackingEvent@ getNextInstance(AllBinaryLayer@ layerInterface)
    {
        TrackingEvent@ trackingEvent = cast<TrackingEvent>(this.EVENT_POOL.getNextInstance());
        trackingEvent.setLayerInterfaceForCircularStaticPool(layerInterface);
        return trackingEvent;
    }
}

namespace TrackingEventCircularStaticPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TrackingEventCircularStaticPool().jinit_TrackingEventCircularStaticPool();
    }

    TrackingEventCircularStaticPool@ jcell_instance;
    TrackingEventCircularStaticPool@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TrackingEventCircularStaticPool@ value) property { jclinit(); @jcell_instance = value; }
    

    TrackingEventCircularStaticPool@ getInstance()
    {
        return TrackingEventCircularStaticPool::instance;
    }
}

