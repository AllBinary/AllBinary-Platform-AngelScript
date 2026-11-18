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

class SensorFeatureFactory : JObjectBase
{
    SensorFeature@ NO_ORIENTATION;
    SensorFeature@ ORIENTATION_SENSORS;
    SensorFeature@ SIMULATED_ORIENTATION_SENSORS;
    SensorFeature@ YAW;
    SensorFeature@ YAW_MINUS_RIGHT_PLUS_LEFT;
    SensorFeature@ YAW_MINUS_LEFT_PLUS_RIGHT;
    SensorFeature@ PITCH;
    SensorFeature@ ROLL;

    // Java field initializers run after the super constructor
    void jfields_SensorFeatureFactory()
    {
    @this.NO_ORIENTATION = SensorFeature().jinit_SensorFeature("No Orientation");
    @this.ORIENTATION_SENSORS = SensorFeature().jinit_SensorFeature("Orientation Sensors");
    @this.SIMULATED_ORIENTATION_SENSORS = SensorFeature().jinit_SensorFeature("Simulated Orientation Sensors");
    @this.YAW = SensorFeature().jinit_SensorFeature("Yaw");
    @this.YAW_MINUS_RIGHT_PLUS_LEFT = SensorFeature().jinit_SensorFeature("Yaw -Right +Left");
    @this.YAW_MINUS_LEFT_PLUS_RIGHT = SensorFeature().jinit_SensorFeature("Yaw -Left +Right ");
    @this.PITCH = SensorFeature().jinit_SensorFeature("Pitch");
    @this.ROLL = SensorFeature().jinit_SensorFeature("Roll");
    }
    

    SensorFeatureFactory@ jinit_SensorFeatureFactory()
    {
        this.jfields_SensorFeatureFactory();
        return this;
    }
}

namespace SensorFeatureFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SensorFeatureFactory().jinit_SensorFeatureFactory();
    }

    SensorFeatureFactory@ jcell_instance;
    SensorFeatureFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SensorFeatureFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    SensorFeatureFactory@ getInstance()
    {
        return SensorFeatureFactory::instance;
    }
}

