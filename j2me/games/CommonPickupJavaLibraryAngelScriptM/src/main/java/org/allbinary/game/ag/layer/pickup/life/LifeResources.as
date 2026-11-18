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
// package org.allbinary.game.ag.layer.pickup.life

class LifeResources : JObjectBase
{
    string RESOURCE;

    // Java field initializers run after the super constructor
    void jfields_LifeResources()
    {
    this.RESOURCE = "life_drop_20_by_20.png";
    }
    

    LifeResources@ jinit_LifeResources()
    {
        this.jfields_LifeResources();
        return this;
    }
}

namespace LifeResources
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = LifeResources().jinit_LifeResources();
    }

    LifeResources@ jcell_SINGLETON;
    LifeResources@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(LifeResources@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    LifeResources@ getInstance()
    {
        return LifeResources::SINGLETON;
    }
}

