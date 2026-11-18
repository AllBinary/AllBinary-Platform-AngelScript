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
// package org.allbinary.input.gyro

class AccelerometerSensorUpdateProcessor : Processor
{

    AccelerometerSensorUpdateProcessor@ jinit_AccelerometerSensorUpdateProcessor()
    {
        this.jinit_Processor();
        return this;
    }
    

    void process()
    {
        SensorFeatureFactory@ sensorFeatureFactory = SensorFeatureFactory::getInstance();
        if (Features::getInstance().isFeature(sensorFeatureFactory.ORIENTATION_SENSORS)) {
            AccelerometerSensorFactory::getInstance().setCompleteMotionGestureInputEventListener(SingleKeyPressGameKeyFromMotionGestureEventListener().jinit_SingleKeyPressGameKeyFromMotionGestureEventListener());
        } else if (Features::getInstance().isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            AccelerometerSensorFactory::getInstance().setCompleteMotionGestureInputEventListener(SingleKeyPressGameKeyFromMotionGestureEventListener().jinit_SingleKeyPressGameKeyFromMotionGestureEventListener());
        } else if (Features::getInstance().isFeature(sensorFeatureFactory.NO_ORIENTATION)) {
            AccelerometerSensorFactory::getInstance().setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener::getInstance());
        } else {
            jthrow(Exception().jinit_Exception("Sensor Feature Not Set"));
        }
    }
}

