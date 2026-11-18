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

class TouchButtonsPaintableComposite : ProcessPaintable, CompleteMotionGestureInputEventListenerInterface
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    InputMappingInterface@ inputMappingInterface_TouchButtonsPaintableComposite;
    TouchButtonsMappingPaintable@ touchButtonsPaintable;
    TimeDelayHelper@ timeHelper_TouchButtonsPaintableComposite;
    bool released_TouchButtonsPaintableComposite;
    string METHOD_NAME_TouchButtonsPaintableComposite;
    string RELEASE_TouchButtonsPaintableComposite;
    string FAST_REPEAT_TouchButtonsPaintableComposite;
    string IGNORE_TouchButtonsPaintableComposite;

    // Java field initializers run after the super constructor
    void jfields_TouchButtonsPaintableComposite()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    @this.timeHelper_TouchButtonsPaintableComposite = TimeDelayHelper().jinit_TimeDelayHelper(250);
    this.released_TouchButtonsPaintableComposite = true;
    this.METHOD_NAME_TouchButtonsPaintableComposite = "onCompleteMotionGestureInputEvent";
    this.RELEASE_TouchButtonsPaintableComposite = "Ignoring: MotionGestureInput Release";
    this.FAST_REPEAT_TouchButtonsPaintableComposite = "Ignoring: MotionGestureInput Repeated To Quickly";
    this.IGNORE_TouchButtonsPaintableComposite = "Ignoring: Until Released";
    }
    

    TouchButtonsPaintableComposite@ jinit_TouchButtonsPaintableComposite(InputMappingInterface@ inputMappingInterface, BasicColor@ basicColor)
    {
        this.jinit_ProcessPaintable();
        this.jfields_TouchButtonsPaintableComposite();
        @this.inputMappingInterface_TouchButtonsPaintableComposite = inputMappingInterface;
        CompleteMotionGestureInputEventHandler::getInstance().addListenerInterface(this);
        @this.touchButtonsPaintable = TouchButtonsMappingPaintable().jinit_TouchButtonsMappingPaintable(basicColor);
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onCompleteMotionGestureInputEvent(CompleteMotionGestureInputEvent@ completeMotionGestureInputEvent)
    {
        try {
            this.logUtil.putF(this.commonStrings.START, this, "onCompleteMotionGestureInputEvent");
            TouchMotionGestureFactory@ touchMotionGestureFactory = TouchMotionGestureFactory::getInstance();
            GameKeyCompleteMotionGestureInputEvent@ gameKeyCompleteMotionGestureInputEvent = cast<GameKeyCompleteMotionGestureInputEvent>(completeMotionGestureInputEvent);
            GameKey@ gameKey = gameKeyCompleteMotionGestureInputEvent.getGameKey();
            MotionGestureInput@ motionGestureInput = completeMotionGestureInputEvent.getMotionGestureInput();
            if (motionGestureInput is touchMotionGestureFactory.RELEASED) {
                this.logUtil.putF(this.RELEASE_TouchButtonsPaintableComposite, this, this.METHOD_NAME_TouchButtonsPaintableComposite);
                this.released_TouchButtonsPaintableComposite = true;
                return;
            }
            if (motionGestureInput is TouchMotionGestureFactory::getInstance().NO_MOTION && !this.timeHelper_TouchButtonsPaintableComposite.isTimeTNT()) {
                this.logUtil.putF(this.FAST_REPEAT_TouchButtonsPaintableComposite, this, this.METHOD_NAME_TouchButtonsPaintableComposite);
                return;
            }
            if (!this.released_TouchButtonsPaintableComposite) {
                this.logUtil.putF(this.IGNORE_TouchButtonsPaintableComposite, this, this.METHOD_NAME_TouchButtonsPaintableComposite);
                return;
            }
            this.released_TouchButtonsPaintableComposite = false;
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("GameKey: ").append(StringUtil::getInstance().toString(gameKey)).append(" MotionGestureInput: ").append(StringUtil::getInstance().toString(motionGestureInput)).toString(), this, this.METHOD_NAME_TouchButtonsPaintableComposite);
            this.inputMappingInterface_TouchButtonsPaintableComposite.processInputMapping(gameKey, motionGestureInput);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.METHOD_NAME_TouchButtonsPaintableComposite, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void process()
    {
        CompleteMotionGestureInputEventHandler::getInstance().removeListener(this);
    }
}

