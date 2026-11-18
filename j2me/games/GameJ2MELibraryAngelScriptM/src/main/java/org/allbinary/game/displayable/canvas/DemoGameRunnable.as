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

class DemoGameRunnable : GameRunnable
{
    LogUtil@ logUtil;
    DemoCanvas@ demoCanvas_DemoGameRunnable;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper_DemoGameRunnable;

    // Java field initializers run after the super constructor
    void jfields_DemoGameRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    
    @this.gameTickTimeDelayHelper_DemoGameRunnable = GameTickTimeDelayHelperFactory::getInstance();
    }
    

    DemoGameRunnable@ jinit_DemoGameRunnable(DemoCanvas@ demoCanvas)
    {
        this.jinit_GameRunnable();
        this.jfields_DemoGameRunnable();
        @this.demoCanvas_DemoGameRunnable = demoCanvas;
        return this;
    }
    

    void run()
    {
        try {
            this.demoCanvas_DemoGameRunnable.getLoopTimeHelperP().setStartTime(this.gameTickTimeDelayHelper_DemoGameRunnable.setStartTime());
            this.demoCanvas_DemoGameRunnable.processGame();
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
        this.demoCanvas_DemoGameRunnable.processLoopSleep();
    }
}

