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

//This is mainly for network communications.
class SecondaryThreadPool : ThreadPool
{
    

    SecondaryThreadPool@ jinit_SecondaryThreadPool(string poolName, int numThreads, int priority)
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
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.threadPoolStrings.START_TASK).append(StringUtil::getInstance().toString(task)).appendlong(System::currentTimeMillis()).toString(), this, this.commonStrings.RUN);
    }
    

    void completedTask(Runnable@ task)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil::getInstance().toString(task)).appendlong(System::currentTimeMillis()).toString(), this, this.commonStrings.RUN);
    }
}

namespace SecondaryThreadPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SecondaryThreadPool().jinit_SecondaryThreadPool("Secondary", 1, ThreadPool::NORMAL_PRIORITY);
    }

    ThreadPool@ jcell_instance;
    ThreadPool@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ThreadPool@ value) property { jclinit(); @jcell_instance = value; }
    

    ThreadPool@ getInstance()
    {
        return SecondaryThreadPool::instance;
    }
}

