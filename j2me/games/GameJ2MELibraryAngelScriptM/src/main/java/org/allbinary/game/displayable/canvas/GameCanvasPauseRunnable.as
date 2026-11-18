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

class GameCanvasPauseRunnable : GameRunnable
{
    LogUtil@ logUtil;
    AllBinaryGameCanvas@ allBinaryGameCanvas_GameCanvasPauseRunnable;

    // Java field initializers run after the super constructor
    void jfields_GameCanvasPauseRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    
    }
    

    GameCanvasPauseRunnable@ jinit_GameCanvasPauseRunnable(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        this.jinit_GameRunnable();
        this.jfields_GameCanvasPauseRunnable();
        @this.allBinaryGameCanvas_GameCanvasPauseRunnable = allBinaryGameCanvas;
        return this;
    }
    

    void run()
    {
    }
    

    void processLoopSleep()
    {
        try {
            Features@ features = Features::getInstance();
            bool isOpenGL = features.isDefault(OpenGLFeatureFactory::getInstance().OPENGL);
            if (isOpenGL) {
                this.allBinaryGameCanvas_GameCanvasPauseRunnable.processSleep();
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

