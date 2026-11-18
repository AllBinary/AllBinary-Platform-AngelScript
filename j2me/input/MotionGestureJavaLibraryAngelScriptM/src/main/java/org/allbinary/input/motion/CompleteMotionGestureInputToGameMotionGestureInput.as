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
// package org.allbinary.input.motion

class CompleteMotionGestureInputToGameMotionGestureInput : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_CompleteMotionGestureInputToGameMotionGestureInput()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    CompleteMotionGestureInputToGameMotionGestureInput@ jinit_CompleteMotionGestureInputToGameMotionGestureInput()
    {
        this.jfields_CompleteMotionGestureInputToGameMotionGestureInput();
        return this;
    }
    

    void init()
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        try {
            PreLogUtil::put("Compound Motion Gestures", this, commonStrings.INIT);
            MotionGestureConfiguration@ motionGestureConfiguration = MotionGestureConfigurationFactory::getInstance();
            TouchMotionGestureFactory@ touchMotionGestureFactory = TouchMotionGestureFactory::getInstance();
            BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownLeftTouchInputToGameKeyEventAction::getInstance());
            @list = BasicArrayListD().jinit_BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownRightTouchInputToGameKeyEventAction::getInstance());
            @list = BasicArrayListD().jinit_BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_UP_LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpLeftTouchInputToGameKeyEventAction::getInstance());
            @list = BasicArrayListD().jinit_BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_UP_RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpRightTouchInputToGameKeyEventAction::getInstance());
            @list = BasicArrayListD().jinit_BasicArrayListD();
            list.add(touchMotionGestureFactory.LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, LeftTouchInputToGameKeyEventAction::getInstance());
            @list = BasicArrayListD().jinit_BasicArrayListD();
            list.add(touchMotionGestureFactory.RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, RightTouchInputToGameKeyEventAction::getInstance());
            @list = BasicArrayListD().jinit_BasicArrayListD();
            list.add(touchMotionGestureFactory.DOWN);
            motionGestureConfiguration.addMotionGestureAction(list, DownTouchInputToGameKeyEventAction::getInstance());
            @list = BasicArrayListD().jinit_BasicArrayListD();
            list.add(touchMotionGestureFactory.UP);
            motionGestureConfiguration.addMotionGestureAction(list, UpTouchInputToGameKeyEventAction::getInstance());
            @list = BasicArrayListD().jinit_BasicArrayListD();
            list.add(touchMotionGestureFactory.RELEASED);
            motionGestureConfiguration.addMotionGestureAction(list, ReleaseTouchInputToGameKeyEventAction::getInstance());
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
            }
            else { jthrow(jex0); }
        }
    }
}

namespace CompleteMotionGestureInputToGameMotionGestureInput
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CompleteMotionGestureInputToGameMotionGestureInput().jinit_CompleteMotionGestureInputToGameMotionGestureInput();
    }

    CompleteMotionGestureInputToGameMotionGestureInput@ jcell_instance;
    CompleteMotionGestureInputToGameMotionGestureInput@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CompleteMotionGestureInputToGameMotionGestureInput@ value) property { jclinit(); @jcell_instance = value; }
    

    CompleteMotionGestureInputToGameMotionGestureInput@ getInstance()
    {
        return CompleteMotionGestureInputToGameMotionGestureInput::instance;
    }
}

