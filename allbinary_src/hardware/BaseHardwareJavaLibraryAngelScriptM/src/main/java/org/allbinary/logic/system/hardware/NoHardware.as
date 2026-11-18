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
// package org.allbinary.logic.system.hardware

class NoHardware : JObjectBase, HardwareInterface
{

    NoHardware@ jinit_NoHardware()
    {
        return this;
    }
    

    HardwareComponentInterface@ getComponent(int index)
    {
        return NoHardwareComponent::getInstance();
    }
    

    string toString()
    {
        return "No Hardware";
    }
    

    bool compareTo(HardwareInterface@ hardwareInterface)
    {
        return true;
    }
    

    ABHashtable@ difference(HardwareInterface@ hardwareInterface)
    {
        return StdUtil::getInstance().NULL_TABLE;
    }
}

namespace NoHardware
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NoHardware().jinit_NoHardware();
    }

    HardwareInterface@ jcell_instance;
    HardwareInterface@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(HardwareInterface@ value) property { jclinit(); @jcell_instance = value; }
    

    HardwareInterface@ getInstance()
    {
        return NoHardware::instance;
    }
}

