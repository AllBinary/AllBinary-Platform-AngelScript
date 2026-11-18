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
// package org.allbinary.logic.system.os

class NoOperatingSystem : GenericOperatingSystem
{
    

    NoOperatingSystem@ jinit_NoOperatingSystem()
    {
        this.jinit_GenericOperatingSystem();
        return this;
    }
}

namespace NoOperatingSystem
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NO_OPERATING_SYSTEM = GenericOperatingSystem().jinit_GenericOperatingSystem();
    }

    GenericOperatingSystem@ jcell_NO_OPERATING_SYSTEM;
    GenericOperatingSystem@ get_NO_OPERATING_SYSTEM() property { jclinit(); return jcell_NO_OPERATING_SYSTEM; }
    void set_NO_OPERATING_SYSTEM(GenericOperatingSystem@ value) property { jclinit(); @jcell_NO_OPERATING_SYSTEM = value; }
}

