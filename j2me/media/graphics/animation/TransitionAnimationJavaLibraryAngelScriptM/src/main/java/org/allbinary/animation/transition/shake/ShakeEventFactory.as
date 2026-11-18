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
// package org.allbinary.animation.transition.shake

class ShakeEventFactory : JObjectBase
{
    ShakeEvent@ MICRO;
    ShakeEvent@ SMALL;
    ShakeEvent@ MEDIUM;
    ShakeEvent@ LARGE;

    // Java field initializers run after the super constructor
    void jfields_ShakeEventFactory()
    {
    @this.MICRO = ShakeEvent().jinit_ShakeEvent();
    @this.SMALL = ShakeEvent().jinit_ShakeEvent();
    @this.MEDIUM = ShakeEvent().jinit_ShakeEvent();
    @this.LARGE = ShakeEvent().jinit_ShakeEvent();
    }

    ShakeEventFactory@ jinit_ShakeEventFactory()
    {
        this.jfields_ShakeEventFactory();
        return this;
    }
    

    void init()
    {
    }
}

namespace ShakeEventFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ShakeEventFactory().jinit_ShakeEventFactory();
    }

    ShakeEventFactory@ jcell_instance;
    ShakeEventFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ShakeEventFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ShakeEventFactory@ getInstance()
    {
        return ShakeEventFactory::instance;
    }
}

