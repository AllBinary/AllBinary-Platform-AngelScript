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
// package org.allbinary.game.terrain

class TerrainEventCircularStaticPool : JObjectBase
{
    AllBinaryEventCircularPool@ EVENT_POOL;

    // Java field initializers run after the super constructor
    void jfields_TerrainEventCircularStaticPool()
    {
    @this.EVENT_POOL = AllBinaryEventCircularPool().jinit_AllBinaryEventCircularPool(20);
    }

    TerrainEventCircularStaticPool@ jinit_TerrainEventCircularStaticPool()
    {
        this.jfields_TerrainEventCircularStaticPool();
        return this;
    }
    

    void init()
    {
        this.EVENT_POOL.initAllBinaryEventCircularPool(TerrainEventFactory().jinit_TerrainEventFactory());
    }
    

    TerrainEvent@ getNext(BasicTerrainInfo@ basicTerrainInfo)
    {
        TerrainEvent@ trackingEvent = cast<TerrainEvent>(this.EVENT_POOL.getNextInstance());
        trackingEvent.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo);
        return trackingEvent;
    }
}

namespace TerrainEventCircularStaticPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TerrainEventCircularStaticPool().jinit_TerrainEventCircularStaticPool();
    }

    TerrainEventCircularStaticPool@ jcell_instance;
    TerrainEventCircularStaticPool@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TerrainEventCircularStaticPool@ value) property { jclinit(); @jcell_instance = value; }
    

    TerrainEventCircularStaticPool@ getInstance()
    {
        return TerrainEventCircularStaticPool::instance;
    }
}

