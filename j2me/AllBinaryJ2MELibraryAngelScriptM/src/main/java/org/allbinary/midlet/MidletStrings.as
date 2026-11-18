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
// package org.allbinary.midlet

class MidletStrings : JObjectBase
{
    string COMMAND_ACTION;

    // Java field initializers run after the super constructor
    void jfields_MidletStrings()
    {
    this.COMMAND_ACTION = "commandAction";
    }

    MidletStrings@ jinit_MidletStrings()
    {
        this.jfields_MidletStrings();
        return this;
    }
}

namespace MidletStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MidletStrings().jinit_MidletStrings();
    }

    MidletStrings@ jcell_instance;
    MidletStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MidletStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    MidletStrings@ getInstance()
    {
        return MidletStrings::instance;
    }
}

