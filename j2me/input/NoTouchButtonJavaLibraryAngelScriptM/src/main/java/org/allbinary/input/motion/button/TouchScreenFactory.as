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
// package org.allbinary.input.motion.button

class TouchScreenFactory : JObjectBase
{
    bool multiTouch;
    bool touch;
    TouchScreenType@ touchScreenType;

    // Java field initializers run after the super constructor
    void jfields_TouchScreenFactory()
    {
    
    
    @this.touchScreenType = TouchScreenTypesFactory::getInstance().NOTOUCH;
    }
    

    TouchScreenFactory@ jinit_TouchScreenFactory()
    {
        this.jfields_TouchScreenFactory();
        return this;
    }
    

    bool isMultiTouch()
    {
        return this.multiTouch;
    }
    

    void setTouch(bool touch)
    {
    }
    

    bool isTouch()
    {
        return this.touch;
    }
    

    TouchScreenType@ getTouchScreenType()
    {
        return this.touchScreenType;
    }
}

namespace TouchScreenFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = TouchScreenFactory().jinit_TouchScreenFactory();
    }

    TouchScreenFactory@ jcell_SINGLETON;
    TouchScreenFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(TouchScreenFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    TouchScreenFactory@ getInstance()
    {
        return TouchScreenFactory::SINGLETON;
    }
}

