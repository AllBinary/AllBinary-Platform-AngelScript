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
    CommonStrings@ commonStrings_OperatingSystemFactory;
    GenericOperatingSystem@ genericOperatingSystem_OperatingSystemFactory;
    bool hasDetected_OperatingSystemFactory;

    // Java field initializers run after the super constructor
    void jfields_OperatingSystemFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_OperatingSystemFactory = CommonStrings::getInstance();
    @this.genericOperatingSystem_OperatingSystemFactory = NoOperatingSystem::NO_OPERATING_SYSTEM;
    this.hasDetected_OperatingSystemFactory = false;
    }
    

    OperatingSystemFactory@ jinit_OperatingSystemFactory()
    {
        this.jfields_OperatingSystemFactory();
        return this;
    }
    

    GenericOperatingSystem@ getOperatingSystemInstance()
    {
        try {
            OperatingSystems@ operatingSystems = OperatingSystems::getInstance();
            SystemProperties@ systemProperties = SystemProperties::getInstance();
            string osName = systemProperties.getName();
            string osArch = systemProperties.getArch();
            string osVersion = systemProperties.getVersion();
            if (!this.hasDetected_OperatingSystemFactory) {
                this.logUtil.putF("osName: " + osName, this, this.commonStrings_OperatingSystemFactory.GET_INSTANCE);
                this.hasDetected_OperatingSystemFactory = true;
                if (String::indexOf(osName, operatingSystems.LINUX) >= 0) {
                    if (LogConfigTypes::LOGGING.contains(LogConfigTypeFactory::getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Linux OS", this, this.commonStrings_OperatingSystemFactory.GET_INSTANCE);
                    }
                    @this.genericOperatingSystem_OperatingSystemFactory = LinuxOperatingSystemFactory::getInstance().getOperatingSystemInstance();
                } else if (String::indexOf(osName, operatingSystems.WINDOWS) >= 0) {
                    if (LogConfigTypes::LOGGING.contains(LogConfigTypeFactory::getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Windows OS", this, this.commonStrings_OperatingSystemFactory.GET_INSTANCE);
                    }
                    @this.genericOperatingSystem_OperatingSystemFactory = WindowsOperatingSystemFactory::getInstance().getOperatingSystemInstance();
                } else if (String::indexOf(osName, operatingSystems.SOLARIS) >= 0) {
                    if (LogConfigTypes::LOGGING.contains(LogConfigTypeFactory::getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Solaris OS", this, this.commonStrings_OperatingSystemFactory.GET_INSTANCE);
                    }
                    @this.genericOperatingSystem_OperatingSystemFactory = SolarisOperatingSystemFactory::getInstance().getOperatingSystemInstance();
                } else {
                    jthrow(Exception().jinit_Exception(StringMaker().jinit_StringMaker().append("OS Not Supported: ").append(osName).toString()));
                }
                Log@ log = LogFactory::getInstanceF(StringMaker().jinit_StringMaker().append("OperatingSystem Info: ").append(StringUtil::getInstance().toString(this.genericOperatingSystem_OperatingSystemFactory)).toString(), this, this.commonStrings_OperatingSystemFactory.GET_INSTANCE);
                System::out_println(log.toString());
                this.logUtil.putL(log);
            }
            return this.genericOperatingSystem_OperatingSystemFactory;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            if (LogConfigTypes::LOGGING.contains(LogConfigTypeFactory::getInstance().FACTORYERROR)) {
                this.logUtil.put(this.commonStrings_OperatingSystemFactory.EXCEPTION, this, this.commonStrings_OperatingSystemFactory.GET_INSTANCE, e);
            }
            return NoOperatingSystem::NO_OPERATING_SYSTEM;
            }
            else { jthrow(jex0); }
        }
        return null;
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

