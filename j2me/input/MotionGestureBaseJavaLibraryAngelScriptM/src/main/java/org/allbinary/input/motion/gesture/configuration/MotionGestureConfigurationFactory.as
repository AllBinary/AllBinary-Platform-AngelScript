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
// package org.allbinary.input.motion.gesture.configuration

class MotionGestureConfigurationFactory : JObjectBase
{
    

    MotionGestureConfigurationFactory@ jinit_MotionGestureConfigurationFactory()
    {
        return this;
    }
}

namespace MotionGestureConfigurationFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_config = MotionGestureConfiguration().jinit_MotionGestureConfiguration();
    }

    MotionGestureConfiguration@ jcell_config;
    MotionGestureConfiguration@ get_config() property { jclinit(); return jcell_config; }
    void set_config(MotionGestureConfiguration@ value) property { jclinit(); @jcell_config = value; }
    

    MotionGestureConfiguration@ getInstance()
    {
        return MotionGestureConfigurationFactory::config;
    }
}

