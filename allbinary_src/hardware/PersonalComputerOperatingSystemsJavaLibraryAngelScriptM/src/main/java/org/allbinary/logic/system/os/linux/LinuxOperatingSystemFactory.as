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
// package org.allbinary.logic.system.os.linux

class LinuxOperatingSystemFactory : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_LinuxOperatingSystemFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    LinuxOperatingSystemFactory@ jinit_LinuxOperatingSystemFactory()
    {
        this.jfields_LinuxOperatingSystemFactory();
        return this;
    }
    

    GenericOperatingSystem@ getOperatingSystemInstance()
    {
        try {
            OperatingSystems@ operatingSystems = OperatingSystems::getInstance();
            string osName = SystemProperties::getInstance().getName();
            GenericOperatingSystem@ operatingSystemInterface;
            if (String::compareTo(osName, operatingSystems.LINUX) == 0) {
                @operatingSystemInterface = LinuxOS().jinit_LinuxOS();
            } else {
                if (operatingSystems.isUnknownSpecificOSAllowed()) {
                    @operatingSystemInterface = LinuxOS().jinit_LinuxOS();
                } else {
                    jthrow(Exception().jinit_Exception("Specific Linux OS Not Supported: " + osName));
                }
            }
            return operatingSystemInterface;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            if (LogConfigTypes::LOGGING.contains(LogConfigTypeFactory::getInstance().FACTORYERROR)) {
                CommonStrings@ commonStrings = CommonStrings::getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            }
            return NoOperatingSystem::NO_OPERATING_SYSTEM;
            }
            else { jthrow(jex0); }
        }
        return null;
    }
}

namespace LinuxOperatingSystemFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LinuxOperatingSystemFactory().jinit_LinuxOperatingSystemFactory();
    }

    LinuxOperatingSystemFactory@ jcell_instance;
    LinuxOperatingSystemFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LinuxOperatingSystemFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    LinuxOperatingSystemFactory@ getInstance()
    {
        return LinuxOperatingSystemFactory::instance;
    }
}

