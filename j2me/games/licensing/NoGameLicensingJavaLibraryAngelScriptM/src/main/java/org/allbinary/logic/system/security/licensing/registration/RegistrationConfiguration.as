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
// package org.allbinary.logic.system.security.licensing.registration

class RegistrationConfiguration : JObjectBase
{
    string registrationCode;
    string NAME;

    // Java field initializers run after the super constructor
    void jfields_RegistrationConfiguration()
    {
    this.registrationCode = "No Registration Code";
    this.NAME = "registrationid";
    }
    

    RegistrationConfiguration@ jinit_RegistrationConfiguration()
    {
        this.jfields_RegistrationConfiguration();
        return this;
    }
    

    void read()
    {
    }
    

    void write()
    {
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append("Registration Code: ").append(this.getRegistrationCode()).toString();
    }
    

    void setRegistrationCode(string registrationCode)
    {
        this.registrationCode = registrationCode;
    }
    

    string getRegistrationCode()
    {
        return this.registrationCode;
    }
}

namespace RegistrationConfiguration
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = RegistrationConfiguration().jinit_RegistrationConfiguration();
    }

    RegistrationConfiguration@ jcell_SINGLETON;
    RegistrationConfiguration@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(RegistrationConfiguration@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    RegistrationConfiguration@ getInstance()
    {
        return RegistrationConfiguration::SINGLETON;
    }
}

