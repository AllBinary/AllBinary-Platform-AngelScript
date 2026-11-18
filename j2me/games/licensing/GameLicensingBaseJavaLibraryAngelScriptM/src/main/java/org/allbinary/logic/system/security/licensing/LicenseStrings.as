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

class LicenseStrings : JObjectBase
{
    string LOCKED;

    // Java field initializers run after the super constructor
    void jfields_LicenseStrings()
    {
    this.LOCKED = "Demo Locked Feature";
    }

    LicenseStrings@ jinit_LicenseStrings()
    {
        this.jfields_LicenseStrings();
        return this;
    }
}

namespace LicenseStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LicenseStrings().jinit_LicenseStrings();
    }

    LicenseStrings@ jcell_instance;
    LicenseStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LicenseStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    LicenseStrings@ getInstance()
    {
        return LicenseStrings::instance;
    }
}

