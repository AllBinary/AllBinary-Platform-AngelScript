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

//ActualPlatform
class SystemProperties : JObjectBase
{
    string OS_NAME_SystemProperties;
    string OS_ARCH_SystemProperties;
    string OS_VERSION_SystemProperties;
    string USER_HOME_SystemProperties;

    // Java field initializers run after the super constructor
    void jfields_SystemProperties()
    {
    this.OS_NAME_SystemProperties = "os.name";
    this.OS_ARCH_SystemProperties = "os.arch";
    this.OS_VERSION_SystemProperties = "os.version";
    this.USER_HOME_SystemProperties = "user.home";
    }
    

    SystemProperties@ jinit_SystemProperties()
    {
        this.jfields_SystemProperties();
        return this;
    }
    

    string getName()
    {
        return System::getProperty(this.OS_NAME_SystemProperties);
    }
    

    string getArch()
    {
        return System::getProperty(this.OS_ARCH_SystemProperties);
    }
    

    string getVersion()
    {
        return System::getProperty(this.OS_VERSION_SystemProperties);
    }
    

    string getUserHomePath()
    {
        return System::getProperty(this.USER_HOME_SystemProperties);
    }
}

namespace SystemProperties
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SystemProperties().jinit_SystemProperties();
    }

    SystemProperties@ jcell_instance;
    SystemProperties@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SystemProperties@ value) property { jclinit(); @jcell_instance = value; }
    

    SystemProperties@ getInstance()
    {
        return SystemProperties::instance;
    }
}

