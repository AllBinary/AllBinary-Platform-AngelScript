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
// package org.allbinary.game.tick

class NullTickable : JObjectBase, TickableInterface
{
    string NAME;

    // Java field initializers run after the super constructor
    void jfields_NullTickable()
    {
    this.NAME = "NulLTickable";
    }

    NullTickable@ jinit_NullTickable()
    {
        this.jfields_NullTickable();
        return this;
    }
    

    void processTick(AllBinaryLayerManager@ allBinaryLayerManager)
    {
    }
    

    string getName()
    {
        return this.NAME;
    }
}

namespace NullTickable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NullTickable().jinit_NullTickable();
    }

    NullTickable@ jcell_SINGLETON;
    NullTickable@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(NullTickable@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    NullTickable@ getInstance()
    {
        return NullTickable::SINGLETON;
    }
}

