/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.displayable

class RepaintRunnable : ARunnable
{
    Canvas@ canvas_RepaintRunnable;
    

    RepaintRunnable@ jinit_RepaintRunnable(Canvas@ canvas)
    {
        this.jinit_ARunnable();
        @this.canvas_RepaintRunnable = canvas;
        return this;
    }
    

    void run()
    {
        try {
            this.canvas_RepaintRunnable.repaint();
            DisplayInfoSingleton::getInstance().process();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            LogUtil@ logUtil = LogUtil::getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
            }
            else { jthrow(jex0); }
        }
    }
}

