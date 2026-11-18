// Generated Code Do Not Modify
// package org.allbinary.thread

class ThreadObjectUtil : JObjectBase
{
    PriorityRunnable@ NULL_PRIORITY_RUNNABLE;

    // Java field initializers run after the super constructor
    void jfields_ThreadObjectUtil()
    {
    @this.NULL_PRIORITY_RUNNABLE = NullPriorityRunnable().jinit_NullPriorityRunnable();
    }

    ThreadObjectUtil@ jinit_ThreadObjectUtil()
    {
        this.jfields_ThreadObjectUtil();
        return this;
    }
    

    void notifyObject(JObject@ anyType)
    {
        anyType.notify();
    }
    

    void waitObject(JObject@ anyType)
    {
        anyType.wait();
    }
    

    void waitObjectFor(JObject@ anyType, int64 delay)
    {
        TsUtil::getInstance().waitFor(anyType, delay);
    }
    

    void processThread(Runnable@ runnable)
    {
        Thread@ thread = Thread().jinit_Thread(runnable);
        thread.start();
    }
}

namespace ThreadObjectUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ThreadObjectUtil().jinit_ThreadObjectUtil();
    }

    ThreadObjectUtil@ jcell_instance;
    ThreadObjectUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ThreadObjectUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ThreadObjectUtil@ getInstance()
    {
        return ThreadObjectUtil::instance;
    }
}

