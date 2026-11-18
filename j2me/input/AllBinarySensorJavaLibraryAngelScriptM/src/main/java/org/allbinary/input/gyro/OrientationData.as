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

class OrientationData : JObjectBase
{
    string ORIENTATION_SENSOR_INPUT;
    string ORIENTATION_TYPE;

    // Java field initializers run after the super constructor
    void jfields_OrientationData()
    {
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    this.ORIENTATION_TYPE = "Orientation Type";
    }
    

    OrientationData@ jinit_OrientationData()
    {
        this.jfields_OrientationData();
        return this;
    }
}

namespace OrientationData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = OrientationData().jinit_OrientationData();
    }

    OrientationData@ jcell_SINGLETON;
    OrientationData@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(OrientationData@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    OrientationData@ getInstance()
    {
        return OrientationData::SINGLETON;
    }
}

