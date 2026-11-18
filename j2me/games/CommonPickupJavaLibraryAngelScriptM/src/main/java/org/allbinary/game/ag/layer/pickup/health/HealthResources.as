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
// package org.allbinary.game.ag.layer.pickup.health

class HealthResources : JObjectBase
{
    string RESOURCE;

    // Java field initializers run after the super constructor
    void jfields_HealthResources()
    {
    this.RESOURCE = "health_drop_20_by_20.png";
    }
    

    HealthResources@ jinit_HealthResources()
    {
        this.jfields_HealthResources();
        return this;
    }
}

namespace HealthResources
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = HealthResources().jinit_HealthResources();
    }

    HealthResources@ jcell_SINGLETON;
    HealthResources@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(HealthResources@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    HealthResources@ getInstance()
    {
        return HealthResources::SINGLETON;
    }
}

