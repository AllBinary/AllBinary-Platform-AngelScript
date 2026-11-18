/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class TouchScreenTypesFactory : JObjectBase
{
    TouchScreenType@ FINGER;
    TouchScreenType@ NOTOUCH;
    TouchScreenType@ STYLUS;
    TouchScreenType@ UNDEFINED;

    // Java field initializers run after the super constructor
    void jfields_TouchScreenTypesFactory()
    {
    @this.FINGER = TouchScreenType().jinit_TouchScreenType("Finger");
    @this.NOTOUCH = TouchScreenType().jinit_TouchScreenType("No Touch");
    @this.STYLUS = TouchScreenType().jinit_TouchScreenType("Stylus");
    @this.UNDEFINED = TouchScreenType().jinit_TouchScreenType("Undefined");
    }

    TouchScreenTypesFactory@ jinit_TouchScreenTypesFactory()
    {
        this.jfields_TouchScreenTypesFactory();
        return this;
    }
}

namespace TouchScreenTypesFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TouchScreenTypesFactory().jinit_TouchScreenTypesFactory();
    }

    TouchScreenTypesFactory@ jcell_instance;
    TouchScreenTypesFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TouchScreenTypesFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    TouchScreenTypesFactory@ getInstance()
    {
        return TouchScreenTypesFactory::instance;
    }
}

