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
    AllBinarySensor@ inputSensor;

    // Java field initializers run after the super constructor
    void jfields_SensorGameUpdateProcessor()
    {
    @this.inputSensor = NoAllBinarySensor::getInstance();
    }

    SensorGameUpdateProcessor@ jinit_SensorGameUpdateProcessor()
    {
        this.jfields_SensorGameUpdateProcessor();
        return this;
    }
    

    void setInputSensor(AllBinarySensor@ inputSensor)
    {
        @this.inputSensor = inputSensor;
    }
    

    AllBinarySensor@ getInputSensor()
    {
        return this.inputSensor;
    }
    

    void process(JObject@ anyType)
    {
    }
    

    void sendNotifications(JObject@ anyType)
    {
    }
    

    bool isAnySensor()
    {
        if (this.inputSensor is NoAllBinarySensor::getInstance()) {
            return false;
        } else {
            return true;
        }
        return false;
    }
    

    void setNoSensors()
    {
        this.setInputSensor(NoAllBinarySensor::getInstance());
    }
}

