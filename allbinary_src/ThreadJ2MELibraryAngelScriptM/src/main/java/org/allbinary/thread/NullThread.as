/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.thread

class NullThread : JObjectBase
{

    NullThread@ jinit_NullThread()
    {
        return this;
    }
}

namespace NullThread
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_THREAD = Thread().jinit_Thread();
    }

    Thread@ jcell_NULL_THREAD;
    Thread@ get_NULL_THREAD() property { jclinit(); return jcell_NULL_THREAD; }
    void set_NULL_THREAD(Thread@ value) property { jclinit(); @jcell_NULL_THREAD = value; }
}

