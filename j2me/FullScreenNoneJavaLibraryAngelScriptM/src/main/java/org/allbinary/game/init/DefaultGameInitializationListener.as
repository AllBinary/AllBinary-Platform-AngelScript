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
// package org.allbinary.game.init

class DefaultGameInitializationListener : JObjectBase, GameInitializedListenerInterface
{
    LogUtil@ logUtil;
    SWTJOGLProcessor@ swtJOGLProcessor;
    bool firstTime;

    // Java field initializers run after the super constructor
    void jfields_DefaultGameInitializationListener()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.swtJOGLProcessor = SWTJOGLProcessor::getInstance();
    this.firstTime = true;
    }
    

    DefaultGameInitializationListener@ jinit_DefaultGameInitializationListener()
    {
        this.jfields_DefaultGameInitializationListener();
        GameInitializedEventHandler@ gameInitializedEventHandler = GameInitializedEventHandler::getInstance();
        gameInitializedEventHandler.removeAllListeners();
        gameInitializedEventHandler.addListenerInterface(cast<GameInitializedListenerInterface>(this));
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onGameInitialized(GameInitializedEvent@ gameInitializedEvent)
    {
        string ON_GAME_INITIALIZED = "onGameInitialized";
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        try {
            this.logUtil.putF(commonStrings.START, this, ON_GAME_INITIALIZED);
            while (!this.swtJOGLProcessor.isHolderCreated()) {
                this.logUtil.putF(commonStrings.UPDATE, this, ON_GAME_INITIALIZED);
                Thread::sleep(20);
            }
            FeatureResourceInitializationUtil::getInstance().init(gameInitializedEvent.getLevel());
            if (this.firstTime) {
                this.firstTime = false;
            } else {
                this.swtJOGLProcessor.onSurfaceChanged();
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(commonStrings.EXCEPTION, this, ON_GAME_INITIALIZED, e);
            }
            else { jthrow(jex0); }
        }
    }
}

