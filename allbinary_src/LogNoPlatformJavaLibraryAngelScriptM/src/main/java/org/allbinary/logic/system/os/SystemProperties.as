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

//NoPlatform
class SystemProperties : JObjectBase
{
    

    SystemProperties@ jinit_SystemProperties()
    {
        return this;
    }
    

    string getName()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return "";
    }
    

    string getArch()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return "";
    }
    

    string getVersion()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return "";
    }
    

    string getUserHomePath()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return "";
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

