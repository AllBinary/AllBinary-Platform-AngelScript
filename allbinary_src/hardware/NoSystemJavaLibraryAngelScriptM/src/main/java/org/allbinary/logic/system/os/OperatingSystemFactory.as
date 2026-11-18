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
// package org.allbinary.logic.system.os

class OperatingSystemFactory : JObjectBase
{
    LogUtil@ logUtil;
    GenericOperatingSystem@ genericOperatingSystem;

    // Java field initializers run after the super constructor
    void jfields_OperatingSystemFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.genericOperatingSystem = NoOperatingSystem::NO_OPERATING_SYSTEM;
    }
    

    OperatingSystemFactory@ jinit_OperatingSystemFactory()
    {
        this.jfields_OperatingSystemFactory();
        return this;
    }
    

    GenericOperatingSystem@ getOperatingSystemInstance()
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        try {
            string osString = StringMaker().jinit_StringMaker().append("OperatingSystem Info: ").append(this.genericOperatingSystem.toString()).toString();
            System::out_println(osString);
            this.logUtil.putF(osString, this, commonStrings.GET_INSTANCE);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            }
            else { jthrow(jex0); }
        }
        return this.genericOperatingSystem;
    }
}

namespace OperatingSystemFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OperatingSystemFactory().jinit_OperatingSystemFactory();
    }

    OperatingSystemFactory@ jcell_instance;
    OperatingSystemFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OperatingSystemFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    OperatingSystemFactory@ getInstance()
    {
        return OperatingSystemFactory::instance;
    }
}

