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
// package org.allbinary.debug

class NoDebug : JObjectBase, DebugInterface
{

    NoDebug@ jinit_NoDebug()
    {
        return this;
    }
    

    void start()
    {
    }
    

    void stop()
    {
    }
    

    int64 getMaxTime()
    {
        return 10000;
    }
    

    int64 getStartTime()
    {
        return 0;
    }
    

    bool isRunning()
    {
        return false;
    }
}

namespace NoDebug
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NoDebug().jinit_NoDebug();
    }

    DebugInterface@ jcell_SINGLETON;
    DebugInterface@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(DebugInterface@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    DebugInterface@ getInstance()
    {
        return NoDebug::SINGLETON;
    }
}

