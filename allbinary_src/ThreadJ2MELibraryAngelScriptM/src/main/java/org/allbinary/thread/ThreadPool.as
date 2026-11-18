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

class ThreadPool : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    NullRunnable@ NULL_RUNNABLE;
    ThreadPoolStrings@ threadPoolStrings;
    ThreadObjectUtil@ threadObjectUtil;
    string poolName;
    int priority;
    bool isAlive;
    BasicArrayList@ taskQueue;
    int threadID;
    int numThreads;
    bool runningTask;

    // Java field initializers run after the super constructor
    void jfields_ThreadPool()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.NULL_RUNNABLE = NullRunnable::getInstance();
    @this.threadPoolStrings = ThreadPoolStrings::getInstance();
    @this.threadObjectUtil = ThreadObjectUtil::getInstance();
    
    
    this.isAlive = false;
    @this.taskQueue = BasicArrayListUtil::getInstance().getImmutableInstance();
    
    
    
    }
    

    ThreadPool@ jinit_ThreadPool(string poolName, int numThreads, int priority)
    {
        this.jfields_ThreadPool();
        this.poolName = poolName;
        this.priority = priority;
        this.numThreads = numThreads;
        return this;
    }
    

    void init()
    {
        if (!this.isAlive) {
            this.isAlive = true;
            @this.taskQueue = BasicArrayListD().jinit_BasicArrayListD();
            PooledThread@ pooledThread;
            for (int i = 0; i < this.numThreads; i++) {
                @pooledThread = PooledThread().jinit_PooledThread(this);
                pooledThread.setPriority(this.priority);
                pooledThread.start();
            }
        }
    }
    

    void runAPriorityTask()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
    }
    

    void runTaskWithPriority(PriorityRunnable@ task)
    {
        {
            if (!this.isAlive) {
                this.init();
            }
            if (task !is null) {
                int size = this.taskQueue.size();
                PriorityRunnable@ runnable;
                PriorityRunnable@ lowerPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
                for (int index = 0; index < size; index++) {
                    @runnable = cast<PriorityRunnable>(this.taskQueue.get(index));
                    if (runnable.getPriority() > task.getPriority()) {
                        @lowerPriorityRunnable = runnable;
                        break;
                    }
                }
                if (lowerPriorityRunnable is this.threadObjectUtil.NULL_PRIORITY_RUNNABLE) {
                    this.taskQueue.add(task);
                } else {
                    int index = this.taskQueue.indexOf(lowerPriorityRunnable);
                    this.taskQueue.addAt(index, task);
                }
                this.notify();
            }
        }
    }
    

    void runTask(Runnable@ task)
    {
        {
            if (!this.isAlive) {
                this.init();
            }
            if (task !is null) {
                this.taskQueue.add(task);
                this.notify();
            }
        }
    }
    

    Runnable@ getTask()
    {
        {
            while (this.taskQueue.size() == 0) {
                if (!this.isAlive) {
                    return this.NULL_RUNNABLE;
                }
                this.wait();
            }
            Runnable@ runnable = cast<Runnable>(this.taskQueue.removeAt(0));
            return runnable;
        }
        return null;
    }
    

    void clear()
    {
        {
            if (this.isAlive) {
                this.taskQueue.clear();
            }
        }
    }
    

    void close()
    {
        {
            if (this.isAlive) {
                this.isAlive = false;
                this.taskQueue.clear();
            }
        }
    }
    

    void join()
    {
        {
            this.isAlive = false;
            this.taskQueue.clear();
            this.notifyAll();
        }
    }
    

    bool isBusy()
    {
        if (!this.isAlive) {
            return false;
        }
        if (this.taskQueue.size() > 0) {
            return true;
        }
        if (this.runningTask) {
            return true;
        }
        return false;
    }
    

    void threadStarted()
    {
    }
    

    void threadStopped()
    {
        if (this.numThreads == 1) {
            this.isAlive = false;
            this.taskQueue.clear();
        }
    }
    

    void startTask(Runnable@ task)
    {
    }
    

    void completedTask(Runnable@ task)
    {
    }
    

    string createName()
    {
        return StringMaker().jinit_StringMaker().append(this.poolName).append(ThreadPool::ROOT_NAME).appendint(this.threadID++).toString();
    }
}

namespace ThreadPool
{
    const string ROOT_NAME = "-PooledThread-";

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        
        jcell_NORMAL_PRIORITY = Thread::NORM_PRIORITY;
    }

    int jcell_NORMAL_PRIORITY;
    int get_NORMAL_PRIORITY() property { jclinit(); return jcell_NORMAL_PRIORITY; }
    void set_NORMAL_PRIORITY(int value) property { jclinit(); jcell_NORMAL_PRIORITY = value; }
}

