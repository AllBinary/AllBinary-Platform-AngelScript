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

class GameCanvasInputProcessor : InputProcessor
{
    LogUtil@ logUtil;
    AllBinaryGameCanvas@ allBinaryGameCanvas_GameCanvasInputProcessor;
    DownGameKeyEventHandler@ downGameKeyEventHandler_GameCanvasInputProcessor;
    UpGameKeyEventHandler@ upGameKeyEventHandler_GameCanvasInputProcessor;
    DownKeyEventHandler@ downKeyEventHandler_GameCanvasInputProcessor;
    SmallIntegerSingletonFactory@ smallIntegerSingletonFactory_GameCanvasInputProcessor;
    InputToGameKeyMapping@ inputToGameKeyMapping_GameCanvasInputProcessor;
    GameKey@ NONE_GameCanvasInputProcessor;
    GameKeyEventFactory@ gameKeyEventFactory_GameCanvasInputProcessor;

    // Java field initializers run after the super constructor
    void jfields_GameCanvasInputProcessor()
    {
    @this.logUtil = LogUtil::getInstance();
    
    @this.downGameKeyEventHandler_GameCanvasInputProcessor = DownGameKeyEventHandler::getInstance();
    @this.upGameKeyEventHandler_GameCanvasInputProcessor = UpGameKeyEventHandler::getInstance();
    @this.downKeyEventHandler_GameCanvasInputProcessor = DownKeyEventHandler::getInstance();
    @this.smallIntegerSingletonFactory_GameCanvasInputProcessor = SmallIntegerSingletonFactory::getInstance();
    @this.inputToGameKeyMapping_GameCanvasInputProcessor = PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance().getInputMapping();
    @this.NONE_GameCanvasInputProcessor = GameKeyFactory::getInstance().NONE;
    @this.gameKeyEventFactory_GameCanvasInputProcessor = GameKeyEventFactory::getInstance();
    }
    

    GameCanvasInputProcessor@ jinit_GameCanvasInputProcessor(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        this.jinit_InputProcessor();
        this.jfields_GameCanvasInputProcessor();
        @this.allBinaryGameCanvas_GameCanvasInputProcessor = allBinaryGameCanvas;
        this.inputToGameKeyMapping_GameCanvasInputProcessor.init(this.allBinaryGameCanvas_GameCanvasInputProcessor);
        return this;
    }
    

    void keyPressedByDevice(int keyCode, int deviceId)
    {
        try {
            GameKey@ gameKey = this.inputToGameKeyMapping_GameCanvasInputProcessor.getInstanceForCanvas(this.allBinaryGameCanvas_GameCanvasInputProcessor, keyCode);
            if (gameKey !is this.NONE_GameCanvasInputProcessor) {
                GameKeyEvent@ gameKeyEvent = this.gameKeyEventFactory_GameCanvasInputProcessor.getInstanceForInput(this.allBinaryGameCanvas_GameCanvasInputProcessor, gameKey);
                this.downGameKeyEventHandler_GameCanvasInputProcessor.fireEvent(gameKeyEvent);
                this.downGameKeyEventHandler_GameCanvasInputProcessor.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            }
            JInteger@ keyCodeAsInteger = this.smallIntegerSingletonFactory_GameCanvasInputProcessor.getAtNoThrow(keyCode);
            this.downKeyEventHandler_GameCanvasInputProcessor.fireEventI(keyCodeAsInteger);
            this.downKeyEventHandler_GameCanvasInputProcessor.getInstanceForDevice(deviceId).fireEventI(keyCodeAsInteger);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void keyReleasedByDevice(Canvas@ canvas, int keyCode, int deviceId)
    {
        this.removeGameKeyEvent(canvas, keyCode, deviceId, false);
    }
    

    void removeGameKeyEvent(Canvas@ canvas, int keyCode, int deviceId, bool repeated)
    {
        try {
            GameKey@ gameKey = this.inputToGameKeyMapping_GameCanvasInputProcessor.getInstanceForCanvas(canvas, keyCode);
            if (gameKey !is this.NONE_GameCanvasInputProcessor) {
                GameKeyEventSourceInterface@ gameKeyEventSourceInterface = cast<GameKeyEventSourceInterface>(canvas);
                GameKeyEvent@ gameKeyEvent = this.gameKeyEventFactory_GameCanvasInputProcessor.getInstanceForInput(gameKeyEventSourceInterface, gameKey);
                this.upGameKeyEventHandler_GameCanvasInputProcessor.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler_GameCanvasInputProcessor.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT);
            }
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e);
            }
            else { jthrow(jex1); }
        }
    }
}

