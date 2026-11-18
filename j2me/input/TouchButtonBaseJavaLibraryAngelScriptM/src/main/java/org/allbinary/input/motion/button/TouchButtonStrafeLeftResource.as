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

class TouchButtonStrafeLeftResource : TouchButtonResource
{
    

    TouchButtonStrafeLeftResource@ jinit_TouchButtonStrafeLeftResource()
    {
        this.jinit_TouchButtonResource("/touch_button_strafe_left_arrow_64_by_64.png", "/touch_button_strafe_left_arrow_hint_64_by_64.png");
        return this;
    }
}

namespace TouchButtonStrafeLeftResource
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TouchButtonStrafeLeftResource().jinit_TouchButtonStrafeLeftResource();
    }

    TouchButtonResource@ jcell_instance;
    TouchButtonResource@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TouchButtonResource@ value) property { jclinit(); @jcell_instance = value; }
    

    TouchButtonResource@ getInstance()
    {
        return TouchButtonStrafeLeftResource::instance;
    }
}

