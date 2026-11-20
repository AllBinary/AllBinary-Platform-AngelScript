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
    HardwareInterface@ SINGLETON_HardwareFactory;

    // Java field initializers run after the super constructor
    void jfields_HardwareFactory()
    {
    @this.SINGLETON_HardwareFactory = NoHardware::getInstance();
    }
    

    HardwareFactory@ jinit_HardwareFactory()
    {
        this.jfields_HardwareFactory();
        return this;
    }
    

    HardwareInterface@ getInstance(OperatingSystemInterface@ os)
    {
        try {
            return this.SINGLETON_HardwareFactory;
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
}

