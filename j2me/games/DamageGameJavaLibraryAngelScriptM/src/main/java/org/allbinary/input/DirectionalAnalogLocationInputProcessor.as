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
// package org.allbinary.input

class DirectionalAnalogLocationInputProcessor : AnalogLocationInputProcessor, GameKeyEventSourceInterface
{
    LogUtil@ logUtil;
    GameInputProcessor@[]@ inputProcessorArray_DirectionalAnalogLocationInputProcessor;
    GameKeyFactory@ gameKeyFactory_DirectionalAnalogLocationInputProcessor;
    GameKeyEvent@ leftGameKeyEvent_DirectionalAnalogLocationInputProcessor;
    GameKeyEvent@ rightGameKeyEvent_DirectionalAnalogLocationInputProcessor;
    GameKeyEvent@ upGameKeyEvent_DirectionalAnalogLocationInputProcessor;
    GameKeyEvent@ downGameKeyEvent_DirectionalAnalogLocationInputProcessor;
    GameKeyEvent@ leftTriggerGameKeyEvent_DirectionalAnalogLocationInputProcessor;
    GameKeyEvent@ rightTriggerGameKeyEvent_DirectionalAnalogLocationInputProcessor;

    // Java field initializers run after the super constructor
    void jfields_DirectionalAnalogLocationInputProcessor()
    {
    @this.logUtil = LogUtil::getInstance();
    
    @this.gameKeyFactory_DirectionalAnalogLocationInputProcessor = GameKeyFactory::getInstance();
    @this.leftGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEvent::NONE;
    @this.rightGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEvent::NONE;
    @this.upGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEvent::NONE;
    @this.downGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEvent::NONE;
    @this.leftTriggerGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEvent::NONE;
    @this.rightTriggerGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEvent::NONE;
    }
    

    DirectionalAnalogLocationInputProcessor@ jinit_DirectionalAnalogLocationInputProcessor(GameInputProcessor@[]@ inputProcessorArray)
    {
        this.jinit_AnalogLocationInputProcessor();
        this.jfields_DirectionalAnalogLocationInputProcessor();
        @this.inputProcessorArray_DirectionalAnalogLocationInputProcessor = inputProcessorArray;
        try {
            @this.leftGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEventFactory::getInstance().getInstanceForInput(this, this.gameKeyFactory_DirectionalAnalogLocationInputProcessor.LEFT);
            @this.rightGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEventFactory::getInstance().getInstanceForInput(this, this.gameKeyFactory_DirectionalAnalogLocationInputProcessor.RIGHT);
            @this.upGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEventFactory::getInstance().getInstanceForInput(this, this.gameKeyFactory_DirectionalAnalogLocationInputProcessor.UP);
            @this.downGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEventFactory::getInstance().getInstanceForInput(this, this.gameKeyFactory_DirectionalAnalogLocationInputProcessor.DOWN);
            @this.leftTriggerGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEventFactory::getInstance().getInstanceForInput(this, this.gameKeyFactory_DirectionalAnalogLocationInputProcessor.KEY_NUM0);
            @this.rightTriggerGameKeyEvent_DirectionalAnalogLocationInputProcessor = GameKeyEventFactory::getInstance().getInstanceForInput(this, this.gameKeyFactory_DirectionalAnalogLocationInputProcessor.KEY_NUM5);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
            else { jthrow(jex0); }
        }
        return this;
    }
    

    void process(AllBinaryLayerManager@ allbinaryLayerManager, AnalogLocationInput@ analogLocationInput)
    {
        try {
            CustomGPoint@ customGPoint;
            @customGPoint = analogLocationInput.getCustomGPoint();
            int x = customGPoint.getX();
            int y = customGPoint.getY();
            int leftTrigger = analogLocationInput.getLeftTrigger();
            int rightTrigger = analogLocationInput.getRightTrigger();
            if (x < 0) {
                this.inputProcessorArray_DirectionalAnalogLocationInputProcessor[this.leftGameKeyEvent_DirectionalAnalogLocationInputProcessor.getKey()].processAnalog(allbinaryLayerManager, this.leftGameKeyEvent_DirectionalAnalogLocationInputProcessor, x);
            } else if (x > 0) {
                this.inputProcessorArray_DirectionalAnalogLocationInputProcessor[this.rightGameKeyEvent_DirectionalAnalogLocationInputProcessor.getKey()].processAnalog(allbinaryLayerManager, this.rightGameKeyEvent_DirectionalAnalogLocationInputProcessor, x);
            }
            if (y < 0) {
                this.inputProcessorArray_DirectionalAnalogLocationInputProcessor[this.downGameKeyEvent_DirectionalAnalogLocationInputProcessor.getKey()].processAnalog(allbinaryLayerManager, this.downGameKeyEvent_DirectionalAnalogLocationInputProcessor, y);
            } else if (y > 0) {
                this.inputProcessorArray_DirectionalAnalogLocationInputProcessor[this.upGameKeyEvent_DirectionalAnalogLocationInputProcessor.getKey()].processAnalog(allbinaryLayerManager, this.upGameKeyEvent_DirectionalAnalogLocationInputProcessor, y);
            }
            if (leftTrigger > 0) {
                this.inputProcessorArray_DirectionalAnalogLocationInputProcessor[this.leftTriggerGameKeyEvent_DirectionalAnalogLocationInputProcessor.getKey()].processAnalog(allbinaryLayerManager, this.leftTriggerGameKeyEvent_DirectionalAnalogLocationInputProcessor, leftTrigger);
            }
            if (rightTrigger > 0) {
                this.inputProcessorArray_DirectionalAnalogLocationInputProcessor[this.rightTriggerGameKeyEvent_DirectionalAnalogLocationInputProcessor.getKey()].processAnalog(allbinaryLayerManager, this.rightTriggerGameKeyEvent_DirectionalAnalogLocationInputProcessor, rightTrigger);
            }
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put("Unable to process analog input", this, commonStrings.PROCESS, e);
            }
            else { jthrow(jex1); }
        }
    }
    

    int getSourceId()
    {
        return 0;
    }
}

