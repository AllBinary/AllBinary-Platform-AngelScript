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
class PathFindingThreadPool : ThreadPool
{
    

    PathFindingThreadPool@ jinit_PathFindingThreadPool(string poolName, int numThreads, int priority)
    {
        this.jinit_ThreadPool(poolName, numThreads, ThreadPool::NORMAL_PRIORITY);
        return this;
    }
    

    void runTaskWithPriority(PriorityRunnable@ task)
    {
        ThreadPool::runTaskWithPriority(task);
    }
    

    void runTask(Runnable@ task)
    {
        ThreadPool::runTask(task);
    }
    

    void startTask(Runnable@ task)
    {
    }
    

    void completedTask(Runnable@ task)
    {
    }
}

namespace PathFindingThreadPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PathFindingThreadPool().jinit_PathFindingThreadPool("PathFinding", 1, 1);
    }

    ThreadPool@ jcell_instance;
    ThreadPool@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ThreadPool@ value) property { jclinit(); @jcell_instance = value; }
    

    ThreadPool@ getInstance()
    {
        return PathFindingThreadPool::instance;
    }
}

