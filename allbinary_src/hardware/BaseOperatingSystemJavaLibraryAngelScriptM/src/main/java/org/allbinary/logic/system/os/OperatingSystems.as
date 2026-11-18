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

class OperatingSystems : JObjectBase
{
    string LINUX;
    string WINDOWS;
    string SOLARIS;
    string WINDOWS2000;
    string WINDOWS_NT;
    string WINDOWS_10;
    string WINDOWS_11;
    string WINDOWS_VISTA;
    string WINDOWS_XP;
    string ANDROID;
    string HARMONY;
    bool unknownSpecificOSAllowed;

    // Java field initializers run after the super constructor
    void jfields_OperatingSystems()
    {
    this.LINUX = "Linux";
    this.WINDOWS = "Windows";
    this.SOLARIS = "Solaris";
    this.WINDOWS2000 = "Windows 2000";
    this.WINDOWS_NT = "Windows NT";
    this.WINDOWS_10 = "Windows 10";
    this.WINDOWS_11 = "Windows 11";
    this.WINDOWS_VISTA = "Windows Vista";
    this.WINDOWS_XP = "Windows XP";
    this.ANDROID = this.LINUX;
    this.HARMONY = "HarmonyOS";
    this.unknownSpecificOSAllowed = true;
    }
    

    OperatingSystems@ jinit_OperatingSystems()
    {
        this.jfields_OperatingSystems();
        return this;
    }
    

    bool isUnknownSpecificOSAllowed()
    {
        return this.unknownSpecificOSAllowed;
    }
    

    void setUnknownSpecificOSAllowed(bool aUnknownSpecificOSAllowed)
    {
        this.unknownSpecificOSAllowed = aUnknownSpecificOSAllowed;
    }
}

namespace OperatingSystems
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OperatingSystems().jinit_OperatingSystems();
    }

    OperatingSystems@ jcell_instance;
    OperatingSystems@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OperatingSystems@ value) property { jclinit(); @jcell_instance = value; }
    

    OperatingSystems@ getInstance()
    {
        return OperatingSystems::instance;
    }
}

