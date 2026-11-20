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
    string ORIENTATION_SENSOR_INPUT;
    string ORIENTATION_TYPE;
    BasicArrayList@ list_AllBinarySensorManager;

    // Java field initializers run after the super constructor
    void jfields_AllBinarySensorManager()
    {
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    this.ORIENTATION_TYPE = "Orientation Type";
    @this.list_AllBinarySensorManager = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    AllBinarySensorManager@ jinit_AllBinarySensorManager()
    {
        this.jfields_AllBinarySensorManager();
        return this;
    }
    

    void init()
    {
    }
    

    BasicArrayList@ getSensorNamesList()
    {
        return this.list_AllBinarySensorManager;
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

