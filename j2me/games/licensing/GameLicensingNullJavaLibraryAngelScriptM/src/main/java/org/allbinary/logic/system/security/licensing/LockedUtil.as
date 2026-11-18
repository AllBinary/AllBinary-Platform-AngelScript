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

class LockedUtil : JObjectBase, LockedUtilInterface
{

    LockedUtil@ jinit_LockedUtil()
    {
        return this;
    }
    

    bool isLocked()
    {
        return true;
    }
    

    bool isLockedFeature(LockableFeature@ lockableFeatrue)
    {
        return true;
    }
}

namespace LockedUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LockedUtil().jinit_LockedUtil();
    }

    LockedUtil@ jcell_instance;
    LockedUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LockedUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LockedUtil@ getInstance()
    {
        return LockedUtil::instance;
    }
}

