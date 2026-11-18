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

class ThreadFactoryUtil : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_ThreadFactoryUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    ThreadFactoryUtil@ jinit_ThreadFactoryUtil()
    {
        this.jfields_ThreadFactoryUtil();
        return this;
    }
    

    Thread@ getInstanceGameCanvasRunnable(GameCanvasRunnableInterface@ runnable)
    {
        return this.getInstanceType(runnable, runnable.getType());
    }
    

    Thread@ getInstanceForRunnable(ABRunnable@ runnable)
    {
        return this.getInstanceType(runnable, runnable.getType());
    }
    

    Thread@ getInstanceType(Runnable@ runnable, int type)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        if (J2MEUtil::isHTML()) {
            if (type == DemoCanvas::TYPE || type == AllBinaryGameCanvas::TYPE) {
                RunnableCanvasSingleThreadStartRunnable@ demoGameSingleThreadStartRunnable = RunnableCanvasSingleThreadStartRunnable().jinit_RunnableCanvasSingleThreadStartRunnable(cast<RunnableCanvas>(runnable));
                PreLogUtil::put(StringMaker().jinit_StringMaker().append("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ").append(StringUtil::getInstance().toString(runnable)).toString(), this, commonStrings.CONSTRUCTOR);
                ThreadPool@ primaryThreadPool = PrimaryThreadPool::getInstance();
                primaryThreadPool.runTask(demoGameSingleThreadStartRunnable);
            } else {
                PreLogUtil::put(StringMaker().jinit_StringMaker().append("Using Pseudo Thread for Runnable under PlayN/HTML5: ").append(StringUtil::getInstance().toString(runnable)).toString(), this, commonStrings.CONSTRUCTOR);
                ThreadPool@ primaryThreadPool = PrimaryThreadPool::getInstance();
                primaryThreadPool.runTask(runnable);
            }
        }
        Thread@ thread = Thread().jinit_Thread(runnable, runnable.toString());
        this.logUtil.putF(thread.toString(), this, commonStrings.CONSTRUCTOR);
        return thread;
    }
    

    void start(Thread@ thread)
    {
        thread.start();
    }
}

namespace ThreadFactoryUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ThreadFactoryUtil().jinit_ThreadFactoryUtil();
    }

    ThreadFactoryUtil@ jcell_instance;
    ThreadFactoryUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ThreadFactoryUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ThreadFactoryUtil@ getInstance()
    {
        return ThreadFactoryUtil::instance;
    }
}

