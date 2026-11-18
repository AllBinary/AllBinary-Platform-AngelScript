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

class PooledThread : Thread
{
    LogUtil@ logUtil_PooledThread;
    CommonStrings@ commonStrings_PooledThread;
    ThreadObjectUtil@ threadObjectUtil_PooledThread;
    ThreadPool@ threadPool_PooledThread;
    string INTERRUPT_EXCEPTION_PooledThread;

    // Java field initializers run after the super constructor
    void jfields_PooledThread()
    {
    @this.logUtil_PooledThread = LogUtil::getInstance();
    @this.commonStrings_PooledThread = CommonStrings::getInstance();
    @this.threadObjectUtil_PooledThread = ThreadObjectUtil::getInstance();
    
    this.INTERRUPT_EXCEPTION_PooledThread = "Exit InterruptedException";
    }
    

    PooledThread@ jinit_PooledThread(ThreadPool@ threadPool)
    {
        this.jinit_Thread(threadPool.createName());
        this.jfields_PooledThread();
        this.logUtil_PooledThread.putF(this.commonStrings_PooledThread.CONSTRUCTOR, this, this.commonStrings_PooledThread.CONSTRUCTOR);
        @this.threadPool_PooledThread = threadPool;
        return this;
    }
    

    void run()
    {
        this.threadPool_PooledThread.threadStarted();
        while (true) {
            Runnable@ task2 = this.threadObjectUtil_PooledThread.NULL_PRIORITY_RUNNABLE;
            try {
                @task2 = this.threadPool_PooledThread.getTask();
                this.threadPool_PooledThread.runningTask = true;
                this.threadPool_PooledThread.startTask(task2);
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<InterruptedException>(jex0) !is null) {
                    InterruptedException@ ex = cast<InterruptedException>(jex0);
                LogUtil@ logUtil = LogUtil::getInstance();
                logUtil.putF(this.INTERRUPT_EXCEPTION_PooledThread, this, this.commonStrings_PooledThread.RUN);
                break;
                }
                else { jthrow(jex0); }
            }
            if (task2 is this.threadObjectUtil_PooledThread.NULL_PRIORITY_RUNNABLE) {
                break;
            }
            try {
                task2.run();
                this.threadPool_PooledThread.completedTask(task2);
                this.threadPool_PooledThread.runningTask = false;
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e = cast<Exception>(jex1);
                LogUtil@ logUtil = LogUtil::getInstance();
                logUtil.put(StringMaker().jinit_StringMaker().append(this.commonStrings_PooledThread.EXCEPTION_LABEL).append(StringUtil::getInstance().toString(task2)).toString(), this, this.commonStrings_PooledThread.RUN, e);
                }
                else { jthrow(jex1); }
            }
        }
        this.threadPool_PooledThread.threadStopped();
    }
}

