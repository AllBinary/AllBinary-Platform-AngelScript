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

class GyroSensorFactory : JObjectBase
{

    GyroSensorFactory@ jinit_GyroSensorFactory()
    {
        return this;
    }
}

namespace GyroSensorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_allBinaryGyroSensor = AllBinaryOrientationSensor::NULL_ALLBINARY_ORIENTATION_SENSOR;
    }

    AllBinaryOrientationSensor@ jcell_allBinaryGyroSensor;
    AllBinaryOrientationSensor@ get_allBinaryGyroSensor() property { jclinit(); return jcell_allBinaryGyroSensor; }
    void set_allBinaryGyroSensor(AllBinaryOrientationSensor@ value) property { jclinit(); @jcell_allBinaryGyroSensor = value; }
    

    void init()
    {
        @GyroSensorFactory::allBinaryGyroSensor = NoGyroSensor().jinit_NoGyroSensor();
    }
    

    AllBinaryOrientationSensor@ getInstance()
    {
        return GyroSensorFactory::allBinaryGyroSensor;
    }
}

