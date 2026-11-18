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

class LockedResources : JObjectBase
{
    string LOCKED_DEMO_GAME_FEATURE_RESOURCE;

    // Java field initializers run after the super constructor
    void jfields_LockedResources()
    {
    this.LOCKED_DEMO_GAME_FEATURE_RESOURCE = "/locked_demo_game_feature_64_by_64.png";
    }

    LockedResources@ jinit_LockedResources()
    {
        this.jfields_LockedResources();
        return this;
    }
}

namespace LockedResources
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LockedResources().jinit_LockedResources();
    }

    LockedResources@ jcell_instance;
    LockedResources@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LockedResources@ value) property { jclinit(); @jcell_instance = value; }
    

    LockedResources@ getInstance()
    {
        return LockedResources::instance;
    }
}

