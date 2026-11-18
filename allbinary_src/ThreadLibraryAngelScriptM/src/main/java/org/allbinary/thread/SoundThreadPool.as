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
// package org.allbinary.thread

class SoundThreadPool : JObjectBase
{

    SoundThreadPool@ jinit_SoundThreadPool()
    {
        return this;
    }
}

namespace SoundThreadPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ThreadPool().jinit_ThreadPool("Sound", 1, ThreadPool::NORMAL_PRIORITY);
    }

    ThreadPool@ jcell_instance;
    ThreadPool@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ThreadPool@ value) property { jclinit(); @jcell_instance = value; }
    

    ThreadPool@ getInstance()
    {
        return SoundThreadPool::instance;
    }
}

