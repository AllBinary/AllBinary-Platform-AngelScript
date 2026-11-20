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
    CommonStrings@ commonStrings_ExitRunnable;
    AllBinaryMidlet@ midlet_ExitRunnable;
    Processor@ processor_ExitRunnable;
    bool isProgress_ExitRunnable;

    // Java field initializers run after the super constructor
    void jfields_ExitRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_ExitRunnable = CommonStrings::getInstance();
    
    
    
    }
    

    ExitRunnable@ jinit_ExitRunnable(AllBinaryMidlet@ midlet, Processor@ processor, bool isProgress)
    {
        this.jfields_ExitRunnable();
        @this.midlet_ExitRunnable = midlet;
        this.isProgress_ExitRunnable = isProgress;
        @this.processor_ExitRunnable = processor;
        return this;
    }
    

    void run()
    {
        try {
            this.logUtil.putF(this.commonStrings_ExitRunnable.START_RUNNABLE, this, this.commonStrings_ExitRunnable.RUN);
            this.midlet_ExitRunnable.destroyAppInRunnable(false, this.isProgress_ExitRunnable);
            this.midlet_ExitRunnable.setDisplay(NullCanvas::NULL_CANVAS);
            this.midlet_ExitRunnable.notifyDestroyed();
            this.logUtil.putF(this.commonStrings_ExitRunnable.END_RUNNABLE, this, this.commonStrings_ExitRunnable.RUN);
            this.processor_ExitRunnable.process();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings_ExitRunnable.EXCEPTION, this, this.commonStrings_ExitRunnable.RUN, e);
            try {
                this.processor_ExitRunnable.process();
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e2 = cast<Exception>(jex1);
                this.logUtil.put(this.commonStrings_ExitRunnable.EXCEPTION, this, this.commonStrings_ExitRunnable.RUN, e);
                }
                else { jthrow(jex1); }
            }
            }
            else { jthrow(jex0); }
        }
    }
}

