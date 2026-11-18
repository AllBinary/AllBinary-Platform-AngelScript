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

class AllBinarySensorManager : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    string ORIENTATION_SENSOR_INPUT;
    string ORIENTATION_TYPE;
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_AllBinarySensorManager()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    this.ORIENTATION_TYPE = "Orientation Type";
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    AllBinarySensorManager@ jinit_AllBinarySensorManager()
    {
        this.jfields_AllBinarySensorManager();
        try {
            GyroSensorFactory::init();
            AccelerometerSensorFactory::init();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e);
            }
            else { jthrow(jex0); }
        }
        return this;
    }
    

    void init()
    {
    }
    

    BasicArrayList@ getSensorNamesList()
    {
        return this.list;
    }
    

    void shutdown()
    {
    }
}

namespace AllBinarySensorManager
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    AllBinarySensorManager@ getInstance()
    {
        if (AllBinarySensorManager::instance is NullUtil::getInstance().NULL_OBJECT) {
            @AllBinarySensorManager::instance = AllBinarySensorManager().jinit_AllBinarySensorManager();
        }
        return cast<AllBinarySensorManager>(AllBinarySensorManager::instance);
    }
}

