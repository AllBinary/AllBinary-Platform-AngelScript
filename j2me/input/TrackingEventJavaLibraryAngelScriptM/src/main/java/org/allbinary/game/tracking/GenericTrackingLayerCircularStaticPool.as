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

class GenericTrackingLayerCircularStaticPool : AllBinaryLayerCircularPool
{
    

    GenericTrackingLayerCircularStaticPool@ jinit_GenericTrackingLayerCircularStaticPool()
    {
        this.jinit_AllBinaryLayerCircularPool();
        return this;
    }
}

namespace GenericTrackingLayerCircularStaticPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = GenericTrackingLayerCircularStaticPool().jinit_GenericTrackingLayerCircularStaticPool();
    }

    GenericTrackingLayerCircularStaticPool@ jcell_SINGLETON;
    GenericTrackingLayerCircularStaticPool@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(GenericTrackingLayerCircularStaticPool@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    GenericTrackingLayerCircularStaticPool@ getInstance()
    {
        return GenericTrackingLayerCircularStaticPool::SINGLETON;
    }
}

