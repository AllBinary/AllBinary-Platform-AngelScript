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
// package org.allbinary.midlet

class ExitRunnable : JObjectBase, Runnable
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    AllBinaryMidlet@ midlet;
    Processor@ processor;
    bool isProgress;

    // Java field initializers run after the super constructor
    void jfields_ExitRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    
    }
    

    ExitRunnable@ jinit_ExitRunnable(AllBinaryMidlet@ midlet, Processor@ processor, bool isProgress)
    {
        this.jfields_ExitRunnable();
        @this.midlet = midlet;
        this.isProgress = isProgress;
        @this.processor = processor;
        return this;
    }
    

    void run()
    {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            this.midlet.destroyAppInRunnable(false, this.isProgress);
            this.midlet.setDisplay(NullCanvas::NULL_CANVAS);
            this.midlet.notifyDestroyed();
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
            this.processor.process();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            try {
                this.processor.process();
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e2 = cast<Exception>(jex1);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
                }
                else { jthrow(jex1); }
            }
            }
            else { jthrow(jex0); }
        }
    }
}

