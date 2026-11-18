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

class ReleaseControlledMotionGestureListener : JObjectBase, MotionGestureEventListener
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    MotionGestureInput@ currentMotionGesture;
    bool isMouseGestureOccurring;
    BasicArrayList@ motionGestureCollection;
    CompleteMotionGestureListenerInterface@ signed;

    // Java field initializers run after the super constructor
    void jfields_ReleaseControlledMotionGestureListener()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.currentMotionGesture = TouchMotionGestureFactory::getInstance().NO_MOTION;
    this.isMouseGestureOccurring = false;
    @this.motionGestureCollection = BasicArrayListD().jinit_BasicArrayListD();
    
    }
    

    ReleaseControlledMotionGestureListener@ jinit_ReleaseControlledMotionGestureListener(CompleteMotionGestureListenerInterface@ signed)
    {
        this.jfields_ReleaseControlledMotionGestureListener();
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
        this.isMouseGestureOccurring = true;
        @this.currentMotionGesture = TouchMotionGestureFactory::getInstance().NO_MOTION;
        this.onMotionGestureEvent(ev);
    }
    

    void onScrolledMotionGestureEvent(MotionGestureEvent@ motionGestureEvent)
    {
    }
    

    void released(MotionGestureEvent@ ev)
    {
        try {
            if (this.isMouseGestureOccurring == false) {
                return;
            }
            this.isMouseGestureOccurring = false;
            this.signed.onMotionGestureCompleted(this.motionGestureCollection);
            this.motionGestureCollection.clear();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(StringMaker().jinit_StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(StringUtil::getInstance().toString(ev.getMotionGesture())).toString(), this, "release", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void onMotionGestureEvent(MotionGestureEvent@ ev)
    {
        if (this.isMouseGestureOccurring == false) {
            return;
        }
        MotionGestureInput@ motionGestureInput = ev.getMotionGesture();
        if (motionGestureInput is TouchMotionGestureFactory::getInstance().PRESSED) {
            this.onPressedMotionGestureEvent(ev);
        } else if (motionGestureInput is TouchMotionGestureFactory::getInstance().RELEASED) {
            this.released(ev);
        } else {
            if (this.currentMotionGesture !is motionGestureInput) {
                @this.currentMotionGesture = motionGestureInput;
                this.motionGestureCollection.add(ev.getMotionGesture());
            }
        }
    }
}

