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

class SystemHardwareFactory : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings_SystemHardwareFactory;
    HardwareInterface@ hardwareInterface_SystemHardwareFactory;

    // Java field initializers run after the super constructor
    void jfields_SystemHardwareFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_SystemHardwareFactory = CommonStrings::getInstance();
    @this.hardwareInterface_SystemHardwareFactory = NoHardware::getInstance();
    }
    

    SystemHardwareFactory@ jinit_SystemHardwareFactory()
    {
        this.jfields_SystemHardwareFactory();
        return this;
    }
    

    HardwareInterface@ getInstance(GenericOperatingSystem@ operatingSystemInterface)
    {
        try {
            if (this.hardwareInterface_SystemHardwareFactory is NoHardware::getInstance()) {
                @this.hardwareInterface_SystemHardwareFactory = HardwareFactory::getInstance_jstatic().getInstance(operatingSystemInterface);
            }
            this.logUtil.putF("Found Hardware", this, this.commonStrings_SystemHardwareFactory.CONSTRUCTOR);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings_SystemHardwareFactory.EXCEPTION, this, this.commonStrings_SystemHardwareFactory.CONSTRUCTOR, e);
            }
            else { jthrow(jex0); }
        }
        return this.hardwareInterface_SystemHardwareFactory;
    }
}

namespace SystemHardwareFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SystemHardwareFactory().jinit_SystemHardwareFactory();
    }

    SystemHardwareFactory@ jcell_instance;
    SystemHardwareFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SystemHardwareFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    SystemHardwareFactory@ getInstance_jstatic()
    {
        return SystemHardwareFactory::instance;
    }
    

    string static_toString()
    {
        SystemHardwareFactory@ systemHardwareFactory = SystemHardwareFactory::getInstance_jstatic();
        StringMaker@ osBuffer = StringMaker().jinit_StringMaker();
        osBuffer.append("Hardware Info: \n");
        if (systemHardwareFactory.hardwareInterface_SystemHardwareFactory !is null) {
            osBuffer.append(systemHardwareFactory.hardwareInterface_SystemHardwareFactory.toString());
        } else {
            osBuffer.append(StringUtil::getInstance().NULL_STRING);
        }
        return osBuffer.toString();
    }
}

