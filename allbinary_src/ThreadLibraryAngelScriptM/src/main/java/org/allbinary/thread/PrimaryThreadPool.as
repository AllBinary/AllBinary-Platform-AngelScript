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

class PrimaryThreadPool : ThreadPool
{
    

    PrimaryThreadPool@ jinit_PrimaryThreadPool(string poolName, int numThreads, int priority)
    {
        this.jinit_ThreadPool(poolName, numThreads, priority);
        return this;
    }
    

    void runTask(Runnable@ task)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(StringUtil::getInstance().toString(task)).appendlong(System::currentTimeMillis()).toString(), this, this.threadPoolStrings.ADD_TASK);
        ThreadPool::runTask(task);
    }
    

    void startTask(Runnable@ task)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.threadPoolStrings.START_TASK).append(StringUtil::getInstance().toString(task)).toString(), this, this.commonStrings.RUN);
    }
    

    void completedTask(Runnable@ task)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil::getInstance().toString(task)).toString(), this, this.commonStrings.RUN);
    }
}

namespace PrimaryThreadPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_THREAD_POOL = ThreadPool().jinit_ThreadPool("Primary", 1, ThreadPool::NORMAL_PRIORITY);
    }

    ThreadPool@ jcell_THREAD_POOL;
    ThreadPool@ get_THREAD_POOL() property { jclinit(); return jcell_THREAD_POOL; }
    void set_THREAD_POOL(ThreadPool@ value) property { jclinit(); @jcell_THREAD_POOL = value; }
    

    ThreadPool@ getInstance()
    {
        return PrimaryThreadPool::THREAD_POOL;
    }
}

