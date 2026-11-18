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
    ProgressCanvas@ progressCanvas;
    bool isLast;
    HighScoreTextBox@ textBox;

    // Java field initializers run after the super constructor
    void jfields_SaveHighScoreRunnable()
    {
    @this.progressCanvas = ProgressCanvasFactory::getInstance();
    
    
    }
    

    SaveHighScoreRunnable@ jinit_SaveHighScoreRunnable(bool isLast, HighScoreTextBox@ textBox)
    {
        this.jfields_SaveHighScoreRunnable();
        this.isLast = isLast;
        @this.textBox = textBox;
        return this;
    }
    

    void run()
    {
        LogUtil@ logUtil = LogUtil::getInstance();
        try {
            if (this.isLast) {
                this.textBox.submit();
            } else {
                this.textBox.saveHighScore();
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, "run", e);
            this.progressCanvas.end();
            }
            else { jthrow(jex0); }
        }
    }
}

