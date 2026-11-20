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
// package org.allbinary.input

class AllBinarySensor : JObjectBase, AllBinarySensorListener
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;

    // Java field initializers run after the super constructor
    void jfields_AllBinarySensor()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    }
    

    AllBinarySensor@ jinit_AllBinarySensor()
    {
        this.jfields_AllBinarySensor();
        return this;
    }
    

    void init()
    {
    }
    

    void update()
    {
    }
    

    int getId()
    {
        return AllBinarySensor::getMax();
    }
    

    void shutdown()
    {
        this.logUtil.putF(this.commonStrings.START, this, "shutdown");
    }
    

    void onSensorChange()
    {
        ForcedLogUtil::log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
}

namespace AllBinarySensor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_ALLBINARY_SENSOR = AllBinarySensor().jinit_AllBinarySensor();
        jcell_max = 100;
    }

    AllBinarySensor@ jcell_NULL_ALLBINARY_SENSOR;
    AllBinarySensor@ get_NULL_ALLBINARY_SENSOR() property { jclinit(); return jcell_NULL_ALLBINARY_SENSOR; }
    void set_NULL_ALLBINARY_SENSOR(AllBinarySensor@ value) property { jclinit(); @jcell_NULL_ALLBINARY_SENSOR = value; }

    int jcell_max;
    int get_max() property { jclinit(); return jcell_max; }
    void set_max(int value) property { jclinit(); jcell_max = value; }
    int jpostAdd_max(int delta) { jclinit(); int old = jcell_max; jcell_max = int(old + delta); return old; }
    

    void setMax(int max)
    {
        AllBinarySensor::max = max;
    }
    

    int getMax()
    {
        return AllBinarySensor::max;
    }
}

