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
// package org.allbinary.game.displayable.canvas

class RunnableCanvasSingleThreadStartRunnable : GameRunnable
{
    LogUtil@ logUtil;
    RunnableCanvas@ runnableCanvas_RunnableCanvasSingleThreadStartRunnable;

    // Java field initializers run after the super constructor
    void jfields_RunnableCanvasSingleThreadStartRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    
    }
    

    RunnableCanvasSingleThreadStartRunnable@ jinit_RunnableCanvasSingleThreadStartRunnable(RunnableCanvas@ demoCanvas)
    {
        this.jinit_GameRunnable();
        this.jfields_RunnableCanvasSingleThreadStartRunnable();
        @this.runnableCanvas_RunnableCanvasSingleThreadStartRunnable = demoCanvas;
        return this;
    }
    

    void run()
    {
        try {
            this.runnableCanvas_RunnableCanvasSingleThreadStartRunnable.run();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void processLoopSleep()
    {
        this.runnableCanvas_RunnableCanvasSingleThreadStartRunnable.processLoopSleep();
    }
}

