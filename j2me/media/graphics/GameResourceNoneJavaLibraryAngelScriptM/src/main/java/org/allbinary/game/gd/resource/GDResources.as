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
// package org.allbinary.game.gd.resource

class GDResources : JObjectBase
{
    string[]@ resourceStringArray;
    int currentLayoutRequiredTotal;

    // Java field initializers run after the super constructor
    void jfields_GDResources()
    {
    @this.resourceStringArray = array<string> = {};
    
    }

    GDResources@ jinit_GDResources()
    {
        this.jfields_GDResources();
        return this;
    }
}

namespace GDResources
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GDResources().jinit_GDResources();
    }

    GDResources@ jcell_instance;
    GDResources@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GDResources@ value) property { jclinit(); @jcell_instance = value; }
    

    GDResources@ getInstance()
    {
        return GDResources::instance;
    }
}

