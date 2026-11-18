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
// package org.allbinary.canvas

class RunnableCanvas : MyCanvas, RunnableInterface
{
    NullUtil@ nullUtil;
    StdUtil@ stdUtil;
    ABSystemWrapper@ systemWrapper;
    TsUtil@ tsUtil;
    Thread@ thread_RunnableCanvas;
    Thread@ currentThread_RunnableCanvas;
    bool running_RunnableCanvas;
    TimeDelayHelper@ loopTimeHelper;
    Processor@ runnableCanvasRefreshHelper;
    CommonLabels@ commonLabels;
    ThreadObjectUtil@ threadObjectUtil;
    string SET_RUNNING;
    string IS_RUNNING_RunnableCanvas;
    string THREAD_RunnableCanvas;
    string NOT_EQUAL_RunnableCanvas;
    string PAUSE_SLEEP_RunnableCanvas;
    string START_PAUSE_RunnableCanvas;
    string END_PAUSE_RunnableCanvas;
    string PROCESS_LOOP_SLEEP_RunnableCanvas;
    int64 pauseWait_RunnableCanvas;
    bool notified_RunnableCanvas;

    // Java field initializers run after the super constructor
    void jfields_RunnableCanvas()
    {
    @this.nullUtil = NullUtil::getInstance();
    @this.stdUtil = StdUtil::getInstance();
    @this.systemWrapper = ABSystemWrapper::getInstance();
    @this.tsUtil = TsUtil::getInstance();
    @this.thread_RunnableCanvas = NullThread::NULL_THREAD;
    @this.currentThread_RunnableCanvas = NullThread::NULL_THREAD;
    
    @this.loopTimeHelper = TimeDelayHelper().jinit_TimeDelayHelper(NullWaitGameRunnable::getInstance().WAIT);
    @this.runnableCanvasRefreshHelper = Processor::getInstance();
    @this.commonLabels = CommonLabels::getInstance();
    @this.threadObjectUtil = ThreadObjectUtil::getInstance();
    this.SET_RUNNING = "setRunning";
    this.IS_RUNNING_RunnableCanvas = "isRunning";
    this.THREAD_RunnableCanvas = "Thread: ";
    this.NOT_EQUAL_RunnableCanvas = " != ";
    this.PAUSE_SLEEP_RunnableCanvas = "pause sleep";
    this.START_PAUSE_RunnableCanvas = "start pause - game thread sleep at: ";
    this.END_PAUSE_RunnableCanvas = "end pause - game thread sleep at: ";
    this.PROCESS_LOOP_SLEEP_RunnableCanvas = "processLoopSleep";
    this.pauseWait_RunnableCanvas = 0;
    this.notified_RunnableCanvas = false;
    }
    

    RunnableCanvas@ jinit_RunnableCanvas(CommandListener@ commandListener, BasicArrayList@ childNameList, bool hasParam)
    {
        this.jinit_MyCanvas(CommonStrings::getInstance().UNKNOWN, childNameList);
        this.jfields_RunnableCanvas();
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("RunnableCanvas delay: ").appendint(this.loopTimeHelper.delay).toString(), this, this.commonStrings.CONSTRUCTOR);
        @this.runnableCanvasRefreshHelper = RunnableCanvasRefreshHelper().jinit_RunnableCanvasRefreshHelper(this);
        if (commandListener !is null) {
            this.initCommands(commandListener);
        } else if (hasParam) {
            this.logUtil.putF("commandListener was null", this, "initCommands");
        }
        return this;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, "initCommands");
    }
    

    bool isMainCanvas()
    {
        if (this.getCustomCommandListener() !is null) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void setThread(Thread@ thread)
    {
        @this.thread_RunnableCanvas = thread;
    }
    

    void setRunning(bool running)
    {
        this.running_RunnableCanvas = running;
        if (!this.running_RunnableCanvas) {
            @this.thread_RunnableCanvas = NullThread::NULL_THREAD;
            {
                this.threadObjectUtil.notifyObject(this);
            }
        }
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.IS_RUNNING_RunnableCanvas).appendboolean(this.running_RunnableCanvas).toString(), this, this.SET_RUNNING);
    }
    

    bool isRunning()
    {
        if (this.thread_RunnableCanvas is this.currentThread_RunnableCanvas) {
            return this.running_RunnableCanvas;
        } else {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(this.THREAD_RunnableCanvas);
            if (this.thread_RunnableCanvas !is null) {
                stringBuffer.append(this.thread_RunnableCanvas.toString());
            }
            stringBuffer.append(this.NOT_EQUAL_RunnableCanvas);
            if (this.currentThread_RunnableCanvas !is null) {
                stringBuffer.append(StringUtil::getInstance().toString(this.currentThread_RunnableCanvas));
            }
            this.logUtil.putF(stringBuffer.toString(), this, this.IS_RUNNING_RunnableCanvas);
            return false;
        }
        return false;
    }
    

    TimeDelayHelper@ getLoopTimeHelperP()
    {
        return this.loopTimeHelper;
    }
    

    void setWait(int wait)
    {
        this.loopTimeHelper.delay = wait;
        this.pauseWait_RunnableCanvas = int64(wait) * 3;
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("setWait - delay: ").appendint(this.loopTimeHelper.delay).toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    int getWait()
    {
        return this.loopTimeHelper.delay;
    }
    

    void setCurrentThread()
    {
        @this.currentThread_RunnableCanvas = Thread::currentThread();
    }
    

    void setCurrentThreadFake()
    {
        @this.currentThread_RunnableCanvas = this.thread_RunnableCanvas;
    }
    

    void showNotify()
    {
        try {
            this.stopWaiting();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "showNotify", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void stopWaiting()
    {
        this.notified_RunnableCanvas = true;
        {
            this.threadObjectUtil.notifyObject(this);
        }
        this.repaint();
    }
    

    void waitOnNotify(int64 wait)
    {
        if (!this.notified_RunnableCanvas) {
            if (wait > 0) {
                this.threadObjectUtil.waitObjectFor(this, wait);
            } else {
                this.threadObjectUtil.waitObject(this);
            }
        }
    }
    

    void processSleep()
    {
        Thread::sleep(this.pauseWait_RunnableCanvas);
    }
    

    bool isPausable()
    {
        return false;
    }
    

    void processGameSleep(int64 sleep)
    {
        Thread::sleep(sleep);
    }
    

    void processLoopSleep()
    {
        this.runnableCanvasRefreshHelper.process();
        if (this.isPaused()) {
            StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
            if (this.isRunning() && !this.isSingleThread()) {
                stringMaker.delete(0, stringMaker.length());
                int64 currentTimeMillis = this.systemWrapper.currentTimeMillis();
                this.logUtil.putF(stringMaker.append(this.START_PAUSE_RunnableCanvas).appendlong(currentTimeMillis).append(this.PAUSE_SLEEP_RunnableCanvas).appendlong(this.pauseWait_RunnableCanvas).toString(), this, this.PROCESS_LOOP_SLEEP_RunnableCanvas);
                while (this.isPaused() && this.isRunning() && !this.isSingleThread()) {
                    this.processSleep();
                    if (!this.isPausable()) {
                        stringMaker.delete(0, stringMaker.length());
                        this.logUtil.putF(stringMaker.append(this.END_PAUSE_RunnableCanvas).appendlong(currentTimeMillis).toString(), this, this.PROCESS_LOOP_SLEEP_RunnableCanvas);
                        return;
                    }
                }
            }
        }
        int64 elapsedTime = this.loopTimeHelper.getElapsedTNT();
        int64 wait = int64(this.loopTimeHelper.delay);
        if (elapsedTime > wait) {
            elapsedTime = wait;
        } else {
            this.processGameSleep(wait - elapsedTime);
        }
    }
    

    bool isSingleThread()
    {
        return false;
    }
    

    void run()
    {
        this.setCurrentThread();
    }
    

    void end2()
    {
    }
    

    int getType()
    {
        return -1;
    }
}

