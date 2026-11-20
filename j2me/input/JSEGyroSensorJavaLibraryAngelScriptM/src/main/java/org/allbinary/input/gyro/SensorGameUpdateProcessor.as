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

class SensorGameUpdateProcessor : JObjectBase
{
    AllBinarySensor@ inputSensor_SensorGameUpdateProcessor;

    SensorGameUpdateProcessor@ jinit_SensorGameUpdateProcessor()
    {
        return this;
    }
    

    void setInputSensor(AllBinarySensor@ inputSensor)
    {
        @this.inputSensor_SensorGameUpdateProcessor = inputSensor;
    }
    

    AllBinarySensor@ getInputSensor()
    {
        return this.inputSensor_SensorGameUpdateProcessor;
    }
    

    void process(JObject@ anyType)
    {
    }
    

    void sendNotifications(JObject@ anyType)
    {
    }
    

    bool isAnySensor()
    {
        if (this.inputSensor_SensorGameUpdateProcessor is NoAllBinarySensor::getInstance()) {
            return false;
        } else {
            return true;
        }
        return false;
    }
    

    void setNoSensors()
    {
        GyroSensorFactory::getInstance().setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener::getInstance());
        AccelerometerSensorFactory::getInstance().setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener::getInstance());
        this.setInputSensor(NoAllBinarySensor::getInstance());
    }
}

