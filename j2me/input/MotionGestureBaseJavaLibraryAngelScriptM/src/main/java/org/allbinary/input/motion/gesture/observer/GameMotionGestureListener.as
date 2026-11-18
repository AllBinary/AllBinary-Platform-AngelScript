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
// package org.allbinary.input.motion.gesture.observer

class GameMotionGestureListener : JObjectBase, MotionGestureEventListener
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    BasicArrayList@ motionGestureCollection;
    BasicArrayList@ touchGestureCollection;
    CompleteMotionGestureListenerInterface@ signed;

    // Java field initializers run after the super constructor
    void jfields_GameMotionGestureListener()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.motionGestureCollection = BasicArrayListD().jinit_BasicArrayListD();
    @this.touchGestureCollection = BasicArrayListD().jinit_BasicArrayListD();
    
    }
    

    GameMotionGestureListener@ jinit_GameMotionGestureListener(CompleteMotionGestureListenerInterface@ signed)
    {
        this.jfields_GameMotionGestureListener();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        @this.signed = signed;
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    void onUpMotionGestureEvent(MotionGestureEvent@ ev)
    {
        this.onMotionGestureEvent(ev);
    }
    

    void onDownMotionGestureEvent(MotionGestureEvent@ ev)
    {
        this.onMotionGestureEvent(ev);
    }
    

    void onLeftMotionGestureEvent(MotionGestureEvent@ ev)
    {
        this.onMotionGestureEvent(ev);
    }
    

    void onRightMotionGestureEvent(MotionGestureEvent@ ev)
    {
        this.onMotionGestureEvent(ev);
    }
    

    void onDiagonalDownRightMotionGestureEvent(MotionGestureEvent@ ev)
    {
        this.onMotionGestureEvent(ev);
    }
    

    void onDiagonalDownLeftMotionGestureEvent(MotionGestureEvent@ ev)
    {
        this.onMotionGestureEvent(ev);
    }
    

    void onDiagonalUpRightMotionGestureEvent(MotionGestureEvent@ ev)
    {
        this.onMotionGestureEvent(ev);
    }
    

    void onDiagonalUpLeftMotionGestureEvent(MotionGestureEvent@ ev)
    {
        this.onMotionGestureEvent(ev);
    }
    

    void onPressedMotionGestureEvent(MotionGestureEvent@ ev)
    {
        this.touchGestureCollection.add(ev.getMotionGesture());
    }
    

    void released(MotionGestureEvent@ ev)
    {
        try {
            this.touchGestureCollection.add(ev.getMotionGesture());
            this.signed.onMotionGestureCompleted(this.touchGestureCollection);
            this.touchGestureCollection.clear();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(this.commonStrings.EXCEPTION_LABEL);
            stringBuffer.append(StringUtil::getInstance().toString(ev.getMotionGesture()));
            this.logUtil.put(stringBuffer.toString(), this, "release", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void onScrolledMotionGestureEvent(MotionGestureEvent@ motionGestureEvent)
    {
    }
    

    void onMotionGestureEvent(MotionGestureEvent@ ev)
    {
        try {
            MotionGestureInput@ motionGestureInput = ev.getMotionGesture();
            if (motionGestureInput is TouchMotionGestureFactory::getInstance().PRESSED) {
                this.onPressedMotionGestureEvent(ev);
            } else if (motionGestureInput is TouchMotionGestureFactory::getInstance().RELEASED) {
                this.released(ev);
            } else {
                this.motionGestureCollection.add(motionGestureInput);
                this.signed.onMotionGestureCompleted(this.motionGestureCollection);
                this.motionGestureCollection.clear();
                this.touchGestureCollection.clear();
            }
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(this.commonStrings.EXCEPTION_LABEL);
            stringBuffer.append(StringUtil::getInstance().toString(ev.getMotionGesture()));
            this.logUtil.put(stringBuffer.toString(), this, "onMotionGestureEvent", e);
            }
            else { jthrow(jex1); }
        }
    }
}

