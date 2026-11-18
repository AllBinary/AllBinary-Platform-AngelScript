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

class HardwareFactory : JObjectBase
{
    

    HardwareFactory@ jinit_HardwareFactory()
    {
        return this;
    }
}

namespace HardwareFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = HardwareFactory().jinit_HardwareFactory();
    }

    HardwareFactory@ jcell_instance;
    HardwareFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(HardwareFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    HardwareFactory@ getInstance_jstatic()
    {
        return HardwareFactory::instance;
    }
    

    HardwareInterface@ getInstance_jstatic(GenericOperatingSystem@ os)
    {
        try {
            OperatingSystems@ operatingSystems = OperatingSystems::getInstance();
            if (String::compareTo(os.getName(), operatingSystems.LINUX) == 0) {
                return cast<HardwareInterface>(LinuxHardware().jinit_LinuxHardware());
            } else if (String::indexOf(os.getName(), operatingSystems.WINDOWS) >= 0) {
                return cast<HardwareInterface>(WindowsHardware().jinit_WindowsHardware());
            }
            jthrow(Exception().jinit_Exception("No Hardware Imp for: " + os.getName()));
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            jthrow(e);
            }
            else { jthrow(jex0); }
        }
        return null;
    }
}

