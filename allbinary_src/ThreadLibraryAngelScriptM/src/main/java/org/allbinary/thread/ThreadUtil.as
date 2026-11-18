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

class ThreadUtil : JObjectBase
{
    LogUtil@ logUtil;
    string JOIN;

    // Java field initializers run after the super constructor
    void jfields_ThreadUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    this.JOIN = "join";
    }

    ThreadUtil@ jinit_ThreadUtil()
    {
        this.jfields_ThreadUtil();
        return this;
    }
    

    bool isRunning(Thread@ thread)
    {
        if (thread !is null && thread.isAlive()) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void join(Thread@ thread)
    {
        if (ThreadUtil::getInstance().isRunning(thread)) {
            this.logUtil.putF("Waiting for Thread To Join/End", this, this.JOIN);
            thread.join();
        }
    }
}

namespace ThreadUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ThreadUtil().jinit_ThreadUtil();
    }

    ThreadUtil@ jcell_instance;
    ThreadUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ThreadUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ThreadUtil@ getInstance()
    {
        return ThreadUtil::instance;
    }
}

