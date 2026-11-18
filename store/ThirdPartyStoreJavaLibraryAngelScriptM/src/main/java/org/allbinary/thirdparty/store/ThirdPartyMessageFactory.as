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
// package org.allbinary.thirdparty.store

class ThirdPartyMessageFactory : JObjectBase
{
    string AUTHORIZED;
    string NOT_AUTHORIZED;
    string LINKAGE_ERROR;

    // Java field initializers run after the super constructor
    void jfields_ThirdPartyMessageFactory()
    {
    this.AUTHORIZED = "Authorized";
    this.NOT_AUTHORIZED = "Not Authorized";
    this.LINKAGE_ERROR = "Linkage Error";
    }

    ThirdPartyMessageFactory@ jinit_ThirdPartyMessageFactory()
    {
        this.jfields_ThirdPartyMessageFactory();
        return this;
    }
}

namespace ThirdPartyMessageFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ThirdPartyMessageFactory().jinit_ThirdPartyMessageFactory();
    }

    ThirdPartyMessageFactory@ jcell_instance;
    ThirdPartyMessageFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ThirdPartyMessageFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ThirdPartyMessageFactory@ getInstance()
    {
        return ThirdPartyMessageFactory::instance;
    }
}

