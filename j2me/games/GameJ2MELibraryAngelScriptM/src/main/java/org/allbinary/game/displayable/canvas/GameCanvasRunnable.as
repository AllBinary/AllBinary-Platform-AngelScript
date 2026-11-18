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

class GameCanvasRunnable : GameRunnable
{
    LogUtil@ logUtil;
    GameTickDisplayInfoSingleton@ gameTickDisplayInfoSingleton_GameCanvasRunnable;
    AllBinaryGameCanvas@ allBinaryGameCanvas_GameCanvasRunnable;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper_GameCanvasRunnable;

    // Java field initializers run after the super constructor
    void jfields_GameCanvasRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.gameTickDisplayInfoSingleton_GameCanvasRunnable = GameTickDisplayInfoSingleton::getInstance();
    
    @this.gameTickTimeDelayHelper_GameCanvasRunnable = GameTickTimeDelayHelperFactory::getInstance();
    }
    

    GameCanvasRunnable@ jinit_GameCanvasRunnable(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        this.jinit_GameRunnable();
        this.jfields_GameCanvasRunnable();
        @this.allBinaryGameCanvas_GameCanvasRunnable = allBinaryGameCanvas;
        return this;
    }
    

    void run()
    {
        try {
            this.allBinaryGameCanvas_GameCanvasRunnable.getLoopTimeHelperP().setStartTime(this.gameTickTimeDelayHelper_GameCanvasRunnable.setStartTime());
            this.gameTickDisplayInfoSingleton_GameCanvasRunnable.update();
            this.allBinaryGameCanvas_GameCanvasRunnable.processGame();
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
        this.allBinaryGameCanvas_GameCanvasRunnable.processLoopSleep();
    }
}

