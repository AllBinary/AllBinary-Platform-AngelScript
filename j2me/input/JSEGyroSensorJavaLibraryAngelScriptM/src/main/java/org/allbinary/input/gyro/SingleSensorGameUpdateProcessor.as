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

class SingleSensorGameUpdateProcessor : SensorGameUpdateProcessor
{
    Processor@ accelerometerSensorUpdateProcessor_SingleSensorGameUpdateProcessor;
    Processor@ gyroSensorUpdateProcessor_SingleSensorGameUpdateProcessor;

    // Java field initializers run after the super constructor
    void jfields_SingleSensorGameUpdateProcessor()
    {
    @this.accelerometerSensorUpdateProcessor_SingleSensorGameUpdateProcessor = AccelerometerSensorUpdateProcessor().jinit_AccelerometerSensorUpdateProcessor();
    @this.gyroSensorUpdateProcessor_SingleSensorGameUpdateProcessor = GyroSensorUpdateProcessor().jinit_GyroSensorUpdateProcessor();
    }

    SingleSensorGameUpdateProcessor@ jinit_SingleSensorGameUpdateProcessor()
    {
        this.jinit_SensorGameUpdateProcessor();
        this.jfields_SingleSensorGameUpdateProcessor();
        return this;
    }
    

    void process(JObject@ anyType)
    {
        this.setNoSensors();
    }
    

    void sendNotifications(JObject@ anyType)
    {
    }
}

