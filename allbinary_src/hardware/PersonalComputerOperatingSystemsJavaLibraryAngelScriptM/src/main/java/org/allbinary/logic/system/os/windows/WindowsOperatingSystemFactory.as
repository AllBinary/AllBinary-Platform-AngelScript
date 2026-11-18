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
// package org.allbinary.logic.system.os.windows

class WindowsOperatingSystemFactory : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_WindowsOperatingSystemFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    WindowsOperatingSystemFactory@ jinit_WindowsOperatingSystemFactory()
    {
        this.jfields_WindowsOperatingSystemFactory();
        return this;
    }
    

    GenericOperatingSystem@ getOperatingSystemInstance()
    {
        try {
            OperatingSystems@ operatingSystems = OperatingSystems::getInstance();
            string osName = SystemProperties::getInstance().getName();
            GenericOperatingSystem@ operatingSystemInterface;
            if (String::compareTo(osName, operatingSystems.WINDOWS_NT) == 0) {
                @operatingSystemInterface = WindowsOS().jinit_WindowsOS();
            } else if (String::compareTo(osName, operatingSystems.WINDOWS_10) == 0) {
                @operatingSystemInterface = WindowsOS().jinit_WindowsOS();
            } else if (String::compareTo(osName, operatingSystems.WINDOWS_11) == 0) {
                @operatingSystemInterface = WindowsOS().jinit_WindowsOS();
            } else if (String::compareTo(osName, operatingSystems.WINDOWS2000) == 0) {
                @operatingSystemInterface = WindowsOS().jinit_WindowsOS();
            } else if (String::compareTo(osName, operatingSystems.WINDOWS_XP) == 0) {
                @operatingSystemInterface = WindowsOS().jinit_WindowsOS();
            } else if (String::compareTo(osName, operatingSystems.WINDOWS_VISTA) == 0) {
                @operatingSystemInterface = WindowsOS().jinit_WindowsOS();
            } else {
                if (operatingSystems.isUnknownSpecificOSAllowed()) {
                    @operatingSystemInterface = WindowsOS().jinit_WindowsOS();
                } else {
                    jthrow(Exception().jinit_Exception("Specific Windows OS Not Supported: " + osName));
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

namespace WindowsOperatingSystemFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = WindowsOperatingSystemFactory().jinit_WindowsOperatingSystemFactory();
    }

    WindowsOperatingSystemFactory@ jcell_instance;
    WindowsOperatingSystemFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(WindowsOperatingSystemFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    WindowsOperatingSystemFactory@ getInstance()
    {
        return WindowsOperatingSystemFactory::instance;
    }
}

