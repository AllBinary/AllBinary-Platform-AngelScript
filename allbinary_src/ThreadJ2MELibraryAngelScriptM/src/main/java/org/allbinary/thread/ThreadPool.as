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
    string poolName_ThreadPool;
    int priority_ThreadPool;
    bool isAlive_ThreadPool;
    BasicArrayList@ taskQueue_ThreadPool;
    int threadID_ThreadPool;
    int numThreads_ThreadPool;
    bool runningTask;

    // Java field initializers run after the super constructor
    void jfields_ThreadPool()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.NULL_RUNNABLE = NullRunnable::getInstance();
    @this.threadPoolStrings = ThreadPoolStrings::getInstance();
    @this.threadObjectUtil = ThreadObjectUtil::getInstance();
    
    
    this.isAlive_ThreadPool = false;
    @this.taskQueue_ThreadPool = BasicArrayListUtil::getInstance().getImmutableInstance();
    
    
    
    }
    

    ThreadPool@ jinit_ThreadPool(string poolName, int numThreads, int priority)
    {
        this.jfields_ThreadPool();
        this.poolName_ThreadPool = poolName;
        this.priority_ThreadPool = priority;
        this.numThreads_ThreadPool = numThreads;
        return this;
    }
    

    void init()
    {
        if (!this.isAlive_ThreadPool) {
            this.isAlive_ThreadPool = true;
            @this.taskQueue_ThreadPool = BasicArrayListD().jinit_BasicArrayListD();
            PooledThread@ pooledThread;
            for (int i = 0; i < this.numThreads_ThreadPool; i++) {
                @pooledThread = PooledThread().jinit_PooledThread(this);
                pooledThread.setPriority(this.priority_ThreadPool);
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
            if (!this.isAlive_ThreadPool) {
                this.init();
            }
            if (task !is null) {
                int size = this.taskQueue_ThreadPool.size();
                PriorityRunnable@ runnable;
                PriorityRunnable@ lowerPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
                for (int index = 0; index < size; index++) {
                    @runnable = cast<PriorityRunnable>(this.taskQueue_ThreadPool.get(index));
                    if (runnable.getPriority() > task.getPriority()) {
                        @lowerPriorityRunnable = runnable;
                        break;
                    }
                }
                if (lowerPriorityRunnable is this.threadObjectUtil.NULL_PRIORITY_RUNNABLE) {
                    this.taskQueue_ThreadPool.add(task);
                } else {
                    int index = this.taskQueue_ThreadPool.indexOf(lowerPriorityRunnable);
                    this.taskQueue_ThreadPool.addAt(index, task);
                }
                this.notify();
            }
        }
    }
    

    void runTask(Runnable@ task)
    {
        {
            if (!this.isAlive_ThreadPool) {
                this.init();
            }
            if (task !is null) {
                this.taskQueue_ThreadPool.add(task);
                this.notify();
            }
        }
    }
    

    Runnable@ getTask()
    {
        {
            while (this.taskQueue_ThreadPool.size() == 0) {
                if (!this.isAlive_ThreadPool) {
                    return this.NULL_RUNNABLE;
                }
                this.wait();
            }
            Runnable@ runnable = cast<Runnable>(this.taskQueue_ThreadPool.removeAt(0));
            return runnable;
        }
        return null;
    }
    

    void clear()
    {
        {
            if (this.isAlive_ThreadPool) {
                this.taskQueue_ThreadPool.clear();
            }
        }
    }
    

    void close()
    {
        {
            if (this.isAlive_ThreadPool) {
                this.isAlive_ThreadPool = false;
                this.taskQueue_ThreadPool.clear();
            }
        }
    }
    

    void join()
    {
        {
            this.isAlive_ThreadPool = false;
            this.taskQueue_ThreadPool.clear();
            this.notifyAll();
        }
    }
    

    bool isBusy()
    {
        if (!this.isAlive_ThreadPool) {
            return false;
        }
        if (this.taskQueue_ThreadPool.size() > 0) {
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
        if (this.numThreads_ThreadPool == 1) {
            this.isAlive_ThreadPool = false;
            this.taskQueue_ThreadPool.clear();
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
        return StringMaker().jinit_StringMaker().append(this.poolName_ThreadPool).append(ThreadPool::ROOT_NAME).appendint(this.threadID_ThreadPool++).toString();
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
    int jpostAdd_NORMAL_PRIORITY(int delta) { jclinit(); int old = jcell_NORMAL_PRIORITY; jcell_NORMAL_PRIORITY = int(old + delta); return old; }
}

