/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.system.hardware.components.interfaces

class NoHardwareComponent : JObjectBase, HardwareComponentInterface
{

    NoHardwareComponent@ jinit_NoHardwareComponent()
    {
        return this;
    }
    

    bool compareTo(HardwareComponentInterface@ componentInterface)
    {
        if (this is componentInterface) {
            return true;
        }
        return false;
    }
    

    string toString()
    {
        return StringUtil::getInstance().NULL_STRING;
    }
}

namespace NoHardwareComponent
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NoHardwareComponent().jinit_NoHardwareComponent();
    }

    NoHardwareComponent@ jcell_instance;
    NoHardwareComponent@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(NoHardwareComponent@ value) property { jclinit(); @jcell_instance = value; }
    

    NoHardwareComponent@ getInstance()
    {
        return NoHardwareComponent::instance;
    }
}

