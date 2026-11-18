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
// package org.allbinary.logic.system.security.licensing

class LicenseUtil : JObjectBase
{

    LicenseUtil@ jinit_LicenseUtil()
    {
        return this;
    }
    

    void init()
    {
    }
    

    bool isRunning()
    {
        return false;
    }
    

    void setRunning(bool running)
    {
    }
    

    bool shouldWait(CommandListener@ commandListener)
    {
        return this.isRunning();
    }
}

namespace LicenseUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LicenseUtil().jinit_LicenseUtil();
    }

    LicenseUtil@ jcell_instance;
    LicenseUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LicenseUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LicenseUtil@ getInstance()
    {
        return LicenseUtil::instance;
    }
}

