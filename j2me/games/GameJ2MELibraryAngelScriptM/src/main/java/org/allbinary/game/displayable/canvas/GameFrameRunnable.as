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

class GameFrameRunnable : GameRunnable
{
    LogUtil@ logUtil;
    GameTickDisplayInfoSingleton@ gameTickDisplayInfoSingleton_GameFrameRunnable;
    AllBinaryGameCanvas@ allBinaryGameCanvas_GameFrameRunnable;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper_GameFrameRunnable;

    // Java field initializers run after the super constructor
    void jfields_GameFrameRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.gameTickDisplayInfoSingleton_GameFrameRunnable = GameTickDisplayInfoSingleton::getInstance();
    
    @this.gameTickTimeDelayHelper_GameFrameRunnable = GameTickTimeDelayHelperFactory::getInstance();
    }
    

    GameFrameRunnable@ jinit_GameFrameRunnable(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        this.jinit_GameRunnable();
        this.jfields_GameFrameRunnable();
        @this.allBinaryGameCanvas_GameFrameRunnable = allBinaryGameCanvas;
        return this;
    }
    

    void run()
    {
        try {
            AllBinaryGameCanvas@ allBinaryGameCanvas = this.allBinaryGameCanvas_GameFrameRunnable;
            allBinaryGameCanvas.getLoopTimeHelperP().setStartTime(this.gameTickTimeDelayHelper_GameFrameRunnable.setStartTime());
            this.gameTickDisplayInfoSingleton_GameFrameRunnable.update();
            allBinaryGameCanvas.processGame();
            if (!allBinaryGameCanvas.isRunning() || allBinaryGameCanvas.isPaused()) {
                allBinaryGameCanvas.notifyDonePainting();
            }
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
}

