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

class TouchButtonsBuilderFactory : JObjectBase
{

    TouchButtonsBuilderFactory@ jinit_TouchButtonsBuilderFactory()
    {
        return this;
    }
    

    BaseTouchInput@ getInstance()
    {
        return NoButtonsTouchInputFactory::getInstance();
    }
}

namespace TouchButtonsBuilderFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY = TouchButtonsBuilderFactory().jinit_TouchButtonsBuilderFactory();
    }

    TouchButtonsBuilderFactory@ jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY;
    TouchButtonsBuilderFactory@ get_NO_TOUCH_BUTTON_BUILDER_FACTORY() property { jclinit(); return jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY; }
    void set_NO_TOUCH_BUTTON_BUILDER_FACTORY(TouchButtonsBuilderFactory@ value) property { jclinit(); @jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY = value; }
}

