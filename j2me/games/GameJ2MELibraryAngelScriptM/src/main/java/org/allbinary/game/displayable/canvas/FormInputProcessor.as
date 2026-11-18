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

class FormInputProcessor : InputProcessor
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    GameKeyEventFactory@ gameKeyEventFactory_FormInputProcessor;
    DownKeyEventHandler@ downKeyEventHandler_FormInputProcessor;
    UpGameKeyEventHandler@ upGameKeyEventHandler_FormInputProcessor;
    InputFactory@ inputFactory_FormInputProcessor;
    PlatformKeyFactory@ platformKeyFactory_FormInputProcessor;
    AllBinaryGameCanvas@ allBinaryGameCanvas_FormInputProcessor;

    // Java field initializers run after the super constructor
    void jfields_FormInputProcessor()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.gameKeyEventFactory_FormInputProcessor = GameKeyEventFactory::getInstance();
    @this.downKeyEventHandler_FormInputProcessor = DownKeyEventHandler::getInstance();
    @this.upGameKeyEventHandler_FormInputProcessor = UpGameKeyEventHandler::getInstance();
    @this.inputFactory_FormInputProcessor = InputFactory::getInstance();
    @this.platformKeyFactory_FormInputProcessor = PlatformKeyFactory::getInstance();
    
    }
    

    FormInputProcessor@ jinit_FormInputProcessor(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        this.jinit_InputProcessor();
        this.jfields_FormInputProcessor();
        @this.allBinaryGameCanvas_FormInputProcessor = allBinaryGameCanvas;
        return this;
    }
    

    void keyPressedByDevice(int keyCode, int deviceId)
    {
        try {
            PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.inputFactory_FormInputProcessor.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps::getInstance().SPACE).append(this.inputFactory_FormInputProcessor.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_PRESSED);
            Input@ input = this.inputFactory_FormInputProcessor.getInstanceById(keyCode);
            GameKeyEvent@ gameKeyEvent = this.gameKeyEventFactory_FormInputProcessor.getInstanceForInput(this.allBinaryGameCanvas_FormInputProcessor, input);
            this.downKeyEventHandler_FormInputProcessor.fireEventForGameKeyEvent(gameKeyEvent);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void keyReleasedByDevice(Canvas@ canvas, int keyCode, int deviceId)
    {
        try {
            Input@ input = this.inputFactory_FormInputProcessor.getInstanceById(keyCode);
            if (this.platformKeyFactory_FormInputProcessor.isEnter(input)) {
                PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.inputFactory_FormInputProcessor.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps::getInstance().SPACE).append(this.inputFactory_FormInputProcessor.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_RELEASED);
                GameKey@ gameKey = GameKeyFactory::getInstance().KEY_NUM0;
                GameKeyEventSourceInterface@ gameKeyEventSourceInterface = cast<GameKeyEventSourceInterface>(canvas);
                GameKeyEvent@ gameKeyEvent = this.gameKeyEventFactory_FormInputProcessor.getInstanceForInput(gameKeyEventSourceInterface, gameKey);
                this.upGameKeyEventHandler_FormInputProcessor.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler_FormInputProcessor.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            }
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e);
            }
            else { jthrow(jex1); }
        }
    }
}

