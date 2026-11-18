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
// package org.allbinary.game.score.displayable

class HighScoreRunnable : ARunnable
{
    HighScoresCanvas@ highScoresCanvas;
    

    HighScoreRunnable@ jinit_HighScoreRunnable(HighScoresCanvas@ highScoresCanvas)
    {
        this.jinit_ARunnable();
        @this.highScoresCanvas = highScoresCanvas;
        return this;
    }
    

    void run()
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        LogUtil@ logUtil = LogUtil::getInstance();
        HighScoresCanvas@ highScoresCanvas = this.highScoresCanvas;
        try {
            bool isHTML = J2MEUtil::isHTML();
            if (!isHTML) {
                while (!highScoresCanvas.hasPainted) {
                }
                highScoresCanvas.hasPainted = false;
            }
            StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
            ABSystemWrapper@ systemWrapper = ABSystemWrapper::getInstance();
            int64 currentTimeMillis = systemWrapper.currentTimeMillis();
            logUtil.putF(stringMaker.append("HighScoresCanvas - Request repaint to be sure: ").appendlong(currentTimeMillis).toString(), this, commonStrings.RUN);
            highScoresCanvas.repaintBehavior.onChangeRepaint(highScoresCanvas);
            if (!isHTML) {
                while (!highScoresCanvas.hasPainted) {
                }
            }
            stringMaker.delete(0, stringMaker.length());
            logUtil.putF(stringMaker.append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ").appendlong(currentTimeMillis).toString(), this, commonStrings.RUN);
            highScoresCanvas.executeUpdate();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
            }
            else { jthrow(jex0); }
        }
    }
}

