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

class SaveHighScoreRunnable : JObjectBase, Runnable
{
    ProgressCanvas@ progressCanvas_SaveHighScoreRunnable;
    bool isLast_SaveHighScoreRunnable;
    HighScoreTextBox@ textBox_SaveHighScoreRunnable;

    // Java field initializers run after the super constructor
    void jfields_SaveHighScoreRunnable()
    {
    @this.progressCanvas_SaveHighScoreRunnable = ProgressCanvasFactory::getInstance();
    
    
    }
    

    SaveHighScoreRunnable@ jinit_SaveHighScoreRunnable(bool isLast, HighScoreTextBox@ textBox)
    {
        this.jfields_SaveHighScoreRunnable();
        this.isLast_SaveHighScoreRunnable = isLast;
        @this.textBox_SaveHighScoreRunnable = textBox;
        return this;
    }
    

    void run()
    {
        LogUtil@ logUtil = LogUtil::getInstance();
        try {
            if (this.isLast_SaveHighScoreRunnable) {
                this.textBox_SaveHighScoreRunnable.submit();
            } else {
                this.textBox_SaveHighScoreRunnable.saveHighScore();
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, "run", e);
            this.progressCanvas_SaveHighScoreRunnable.end();
            }
            else { jthrow(jex0); }
        }
    }
}

