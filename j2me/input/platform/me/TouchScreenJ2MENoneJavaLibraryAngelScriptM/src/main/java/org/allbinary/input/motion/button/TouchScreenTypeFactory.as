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

class TouchScreenTypeFactory : JObjectBase
{

    TouchScreenTypeFactory@ jinit_TouchScreenTypeFactory()
    {
        return this;
    }
    

    void TouchScreenTypeFactory_jmethod()
    {
        TouchScreenFactory@ touchScreenFactory = TouchScreenFactory::getInstance();
        touchScreenFactory.setTouch(false);
    }
}

namespace TouchScreenTypeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TouchScreenTypeFactory().jinit_TouchScreenTypeFactory();
    }

    TouchScreenTypeFactory@ jcell_instance;
    TouchScreenTypeFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TouchScreenTypeFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    TouchScreenTypeFactory@ getInstance()
    {
        return TouchScreenTypeFactory::instance;
    }
}

