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
// package org.allbinary.input.accelerometer

class AccelerometerSensorFactory : JObjectBase
{

    AccelerometerSensorFactory@ jinit_AccelerometerSensorFactory()
    {
        return this;
    }
}

namespace AccelerometerSensorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        
    }

    AllBinaryOrientationSensor@ jcell_allBinaryAccelerometerSensor;
    AllBinaryOrientationSensor@ get_allBinaryAccelerometerSensor() property { jclinit(); return jcell_allBinaryAccelerometerSensor; }
    void set_allBinaryAccelerometerSensor(AllBinaryOrientationSensor@ value) property { jclinit(); @jcell_allBinaryAccelerometerSensor = value; }
    

    void init()
    {
        Features@ features = Features::getInstance();
        SensorFeatureFactory@ sensorFeatureFactory = SensorFeatureFactory::getInstance();
        if (features.isFeature(sensorFeatureFactory.ORIENTATION_SENSORS)) {
            jthrow(Exception().jinit_Exception("No Orientation Sensors"));
        } else if (features.isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            jthrow(Exception().jinit_Exception("No Simulation Sensors"));
        } else if (features.isFeature(sensorFeatureFactory.NO_ORIENTATION)) {
            @AccelerometerSensorFactory::allBinaryAccelerometerSensor = NoAccelerometerSensor().jinit_NoAccelerometerSensor();
        } else {
            jthrow(Exception().jinit_Exception("Not Such SensorFeature"));
        }
    }
    

    AllBinaryOrientationSensor@ getInstance()
    {
        return AccelerometerSensorFactory::allBinaryAccelerometerSensor;
    }
}

