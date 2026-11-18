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
// package org.allbinary.game.part

class PartInterfaceUtil : JObjectBase
{

    PartInterfaceUtil@ jinit_PartInterfaceUtil()
    {
        return this;
    }
}

namespace PartInterfaceUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = array<PartInterface@>(0);
    }

    PartInterface@[]@ jcell_SINGLETON;
    PartInterface@[]@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(PartInterface@[]@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    PartInterface@[]@ getZeroArray()
    {
        return PartInterfaceUtil::SINGLETON;
    }
}

