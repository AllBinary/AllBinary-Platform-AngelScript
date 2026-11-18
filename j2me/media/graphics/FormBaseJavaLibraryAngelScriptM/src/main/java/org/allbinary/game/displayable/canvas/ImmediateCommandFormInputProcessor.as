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

class ImmediateCommandFormInputProcessor : CommandFormInputProcessor
{
    TimeDelayHelper@ timeHelper_ImmediateCommandFormInputProcessor;
    GameCommandCanvas@ gameCommandCanvas;

    // Java field initializers run after the super constructor
    void jfields_ImmediateCommandFormInputProcessor()
    {
    @this.timeHelper_ImmediateCommandFormInputProcessor = TimeDelayHelper().jinit_TimeDelayHelper(25);
    
    }
    

    ImmediateCommandFormInputProcessor@ jinit_ImmediateCommandFormInputProcessor(BasicArrayList@ gameKeyEventList, int playerInputId, GameCommandCanvas@ gameCommandCanvas, ScrollSelectionForm@ form)
    {
        this.jinit_CommandFormInputProcessor(gameKeyEventList, playerInputId, gameCommandCanvas, form);
        this.jfields_ImmediateCommandFormInputProcessor();
        @this.gameCommandCanvas = gameCommandCanvas;
        return this;
    }
    

    void onPressGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        try {
            CommandFormInputProcessor::onPressGameKeyEvent(gameKeyEvent);
            if (this.timeHelper_ImmediateCommandFormInputProcessor.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_PRESS_GAME_KEY, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void onDownGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        try {
            CommandFormInputProcessor::onDownGameKeyEvent(gameKeyEvent);
            if (this.timeHelper_ImmediateCommandFormInputProcessor.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_DOWN_GAME_KEY, e);
            }
            else { jthrow(jex1); }
        }
    }
    

    void onUpGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        try {
            CommandFormInputProcessor::onUpGameKeyEvent(gameKeyEvent);
            if (this.timeHelper_ImmediateCommandFormInputProcessor.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch {
            Throwable@ jex2 = jcatch();
            if (cast<Exception>(jex2) !is null) {
                Exception@ e = cast<Exception>(jex2);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_UP_GAME_KEY, e);
            }
            else { jthrow(jex2); }
        }
    }
    

    void onMotionGestureEvent(MotionGestureEvent@ motionGestureEvent)
    {
        try {
            CommandFormInputProcessor::onMotionGestureEvent(motionGestureEvent);
            if (this.timeHelper_ImmediateCommandFormInputProcessor.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch {
            Throwable@ jex3 = jcatch();
            if (cast<Exception>(jex3) !is null) {
                Exception@ e = cast<Exception>(jex3);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "onMotionGestureEvent", e);
            }
            else { jthrow(jex3); }
        }
    }
}

