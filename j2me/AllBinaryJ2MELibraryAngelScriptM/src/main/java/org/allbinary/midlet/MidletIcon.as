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

class MidletIcon : JObjectBase
{

    MidletIcon@ jinit_MidletIcon()
    {
        return this;
    }
}

namespace MidletIcon
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        jcell_RESOURCE = "icon";
    }

    string jcell_RESOURCE;
    string get_RESOURCE() property { jclinit(); return jcell_RESOURCE; }
    void set_RESOURCE(string value) property { jclinit(); jcell_RESOURCE = value; }
}

