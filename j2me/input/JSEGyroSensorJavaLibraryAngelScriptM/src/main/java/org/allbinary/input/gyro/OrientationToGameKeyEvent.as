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

class OrientationToGameKeyEvent : JObjectBase
{
    AllBinaryOrientationSensor@ allBinaryGyroSensor;
    int MIN;

    // Java field initializers run after the super constructor
    void jfields_OrientationToGameKeyEvent()
    {
    
    this.MIN = 15;
    }
    

    OrientationToGameKeyEvent@ jinit_OrientationToGameKeyEvent()
    {
        this.jfields_OrientationToGameKeyEvent();
        if (Features::getInstance().isFeature(SensorFeatureFactory::getInstance().NO_ORIENTATION)) {
            @this.allBinaryGyroSensor = NoGyroSensor().jinit_NoGyroSensor();
        } else {
            jthrow(Exception().jinit_Exception("Not Such Feature"));
        }
        return this;
    }
    

    void setAllBinaryGyroSensor(AllBinaryOrientationSensor@ allBinaryGyroSensor)
    {
        @this.allBinaryGyroSensor = allBinaryGyroSensor;
    }
    

    AllBinaryOrientationSensor@ getAllBinaryGyroSensor()
    {
        return this.allBinaryGyroSensor;
    }
    

    void process()
    {
    }
    

    void updateGameKeyEvents(Orientation@ orientation, int yaw, int pitch, int roll)
    {
    }
}

