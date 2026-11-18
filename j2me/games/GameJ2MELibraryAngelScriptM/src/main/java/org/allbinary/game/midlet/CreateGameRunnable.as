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
// package org.allbinary.game.midlet

class CreateGameRunnable : JObjectBase, Runnable
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    DemoGameMidlet@ demoGameMidlet;
    ABHashtable@ hashtable;
    DemoGameMidletEvent@ startGameMidletEvent;

    // Java field initializers run after the super constructor
    void jfields_CreateGameRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    
    }
    

    CreateGameRunnable@ jinit_CreateGameRunnable(DemoGameMidlet@ demoGameMidlet, ABHashtable@ hashtable)
    {
        this.jfields_CreateGameRunnable();
        @this.demoGameMidlet = demoGameMidlet;
        @this.hashtable = hashtable;
        @this.startGameMidletEvent = DemoGameMidletEvent().jinit_DemoGameMidletEvent(this, DemoGameMidletStateFactory::getInstance().START_GAME);
        return this;
    }
    

    void run()
    {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
            this.demoGameMidlet.commandAction(MyCommandsFactory::getInstance().SET_DISPLAYABLE, progressCanvas);
            this.demoGameMidlet.stopGameCanvasRunnableInterface();
            this.demoGameMidlet.setGameCanvasRunnableInterface(this.demoGameMidlet.createGameCanvasRunnableInterface());
            this.demoGameMidlet.getGameCanvasRunnableInterface().setLoadStateHashtable(this.hashtable);
            this.demoGameMidlet.startGameCanvasRunnableInterface();
            DemoGameMidletEventHandler::getInstance().fireEvent(this.startGameMidletEvent);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            }
            else { jthrow(jex0); }
        }
    }
}

