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
// package org.allbinary.game.configuration.feature

class TouchFeatureFactory : JObjectBase
{
    TouchFeature@ TOUCH_ENABLED;
    TouchFeature@ SHOW_SCREEN_BUTTONS;
    TouchFeature@ AUTO_HIDE_SHOW_SCREEN_BUTTONS;
    TouchFeature@ HIDE_SCREEN_BUTTONS;

    // Java field initializers run after the super constructor
    void jfields_TouchFeatureFactory()
    {
    @this.TOUCH_ENABLED = TouchFeature().jinit_TouchFeature("Touch Enabled");
    @this.SHOW_SCREEN_BUTTONS = TouchFeature().jinit_TouchFeature("Show");
    @this.AUTO_HIDE_SHOW_SCREEN_BUTTONS = TouchFeature().jinit_TouchFeature("Auto Hide (One Level)");
    @this.HIDE_SCREEN_BUTTONS = TouchFeature().jinit_TouchFeature("Hide");
    }
    

    TouchFeatureFactory@ jinit_TouchFeatureFactory()
    {
        this.jfields_TouchFeatureFactory();
        return this;
    }
}

namespace TouchFeatureFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TouchFeatureFactory().jinit_TouchFeatureFactory();
    }

    TouchFeatureFactory@ jcell_instance;
    TouchFeatureFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TouchFeatureFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    TouchFeatureFactory@ getInstance()
    {
        return TouchFeatureFactory::instance;
    }
}

