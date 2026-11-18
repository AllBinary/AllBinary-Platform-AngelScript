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
// package org.allbinary.input.motion.button

class TouchButtonInput : Input, GameKeyEventSourceInterface
{
    LogUtil@ logUtil;
    GameKeyEventFactory@ gameKeyEventFactory_TouchButtonInput;
    int TOUCH_BUTTON_SOURCE_ID_TouchButtonInput;
    GameKeyEvent@ gameKeyEvent_TouchButtonInput;

    // Java field initializers run after the super constructor
    void jfields_TouchButtonInput()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.gameKeyEventFactory_TouchButtonInput = GameKeyEventFactory::getInstance();
    this.TOUCH_BUTTON_SOURCE_ID_TouchButtonInput = this.gameKeyEventFactory_TouchButtonInput.TOUCH_BUTTON_SOURCE_ID;
    @this.gameKeyEvent_TouchButtonInput = GameKeyEvent::NONE;
    }
    

    TouchButtonInput@ jinit_TouchButtonInput(int id, string name)
    {
        this.jinit_Input(id, name);
        this.jfields_TouchButtonInput();
        InputFactory@ inputFactory = InputFactory::getInstance();
        inputFactory.add(this.getId(), this);
        return this;
    }
    

    void update(InputToGameKeyMapping@ inputToGameKeyMapping)
    {
        try {
            GameKey@ gameKey = inputToGameKeyMapping.getInstance(this.getId());
            @this.gameKeyEvent_TouchButtonInput = this.gameKeyEventFactory_TouchButtonInput.getInstanceForInput(this, gameKey);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    int getSourceId()
    {
        return this.TOUCH_BUTTON_SOURCE_ID_TouchButtonInput;
    }
    

    GameKeyEvent@ getGameKeyEvent()
    {
        return this.gameKeyEvent_TouchButtonInput;
    }
}

