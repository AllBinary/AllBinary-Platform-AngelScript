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
// package org.allbinary.game.midlet

class LicenseLoadingTypeFactory : JObjectBase
{
    LicenseLoadingType@ INITIAL_LOADING;
    LicenseLoadingType@ GAME_START;
    LicenseLoadingType@ LOGIN;
    LicenseLoadingType@ OTHER;

    // Java field initializers run after the super constructor
    void jfields_LicenseLoadingTypeFactory()
    {
    @this.INITIAL_LOADING = LicenseLoadingType().jinit_LicenseLoadingType("Initial Loading");
    @this.GAME_START = LicenseLoadingType().jinit_LicenseLoadingType("Game Start");
    @this.LOGIN = LicenseLoadingType().jinit_LicenseLoadingType("Login");
    @this.OTHER = LicenseLoadingType().jinit_LicenseLoadingType("Other/Usually The First Non Demo Level");
    }

    LicenseLoadingTypeFactory@ jinit_LicenseLoadingTypeFactory()
    {
        this.jfields_LicenseLoadingTypeFactory();
        return this;
    }
}

namespace LicenseLoadingTypeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LicenseLoadingTypeFactory().jinit_LicenseLoadingTypeFactory();
    }

    LicenseLoadingTypeFactory@ jcell_instance;
    LicenseLoadingTypeFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LicenseLoadingTypeFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    LicenseLoadingTypeFactory@ getIntance()
    {
        return LicenseLoadingTypeFactory::instance;
    }
}

