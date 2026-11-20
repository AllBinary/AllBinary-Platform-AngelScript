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
    CommonStrings@ commonStrings_ReleaseControlledMotionGestureListener;
    MotionGestureInput@ currentMotionGesture_ReleaseControlledMotionGestureListener;
    bool isMouseGestureOccurring_ReleaseControlledMotionGestureListener;
    BasicArrayList@ motionGestureCollection_ReleaseControlledMotionGestureListener;
    CompleteMotionGestureListenerInterface@ signed_ReleaseControlledMotionGestureListener;

    // Java field initializers run after the super constructor
    void jfields_ReleaseControlledMotionGestureListener()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_ReleaseControlledMotionGestureListener = CommonStrings::getInstance();
    @this.currentMotionGesture_ReleaseControlledMotionGestureListener = TouchMotionGestureFactory::getInstance().NO_MOTION;
    this.isMouseGestureOccurring_ReleaseControlledMotionGestureListener = false;
    @this.motionGestureCollection_ReleaseControlledMotionGestureListener = BasicArrayListD().jinit_BasicArrayListD();
    
    }
    

    ReleaseControlledMotionGestureListener@ jinit_ReleaseControlledMotionGestureListener(CompleteMotionGestureListenerInterface@ signed)
    {
        this.jfields_ReleaseControlledMotionGestureListener();
        this.logUtil.putF(this.commonStrings_ReleaseControlledMotionGestureListener.START, this, this.commonStrings_ReleaseControlledMotionGestureListener.CONSTRUCTOR);
        @this.signed_ReleaseControlledMotionGestureListener = signed;
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(this.commonStrings_ReleaseControlledMotionGestureListener.NOT_IMPLEMENTED, this);
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
        this.isMouseGestureOccurring_ReleaseControlledMotionGestureListener = true;
        @this.currentMotionGesture_ReleaseControlledMotionGestureListener = TouchMotionGestureFactory::getInstance().NO_MOTION;
        this.onMotionGestureEvent(ev);
    }
    

    void onScrolledMotionGestureEvent(MotionGestureEvent@ motionGestureEvent)
    {
    }
    

    void released(MotionGestureEvent@ ev)
    {
        try {
            if (this.isMouseGestureOccurring_ReleaseControlledMotionGestureListener == false) {
                return;
            }
            this.isMouseGestureOccurring_ReleaseControlledMotionGestureListener = false;
            this.signed_ReleaseControlledMotionGestureListener.onMotionGestureCompleted(this.motionGestureCollection_ReleaseControlledMotionGestureListener);
            this.motionGestureCollection_ReleaseControlledMotionGestureListener.clear();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(StringMaker().jinit_StringMaker().append(this.commonStrings_ReleaseControlledMotionGestureListener.EXCEPTION_LABEL).append(StringUtil::getInstance().toString(ev.getMotionGesture())).toString(), this, "release", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void onMotionGestureEvent(MotionGestureEvent@ ev)
    {
        if (this.isMouseGestureOccurring_ReleaseControlledMotionGestureListener == false) {
            return;
        }
        MotionGestureInput@ motionGestureInput = ev.getMotionGesture();
        if (motionGestureInput is TouchMotionGestureFactory::getInstance().PRESSED) {
            this.onPressedMotionGestureEvent(ev);
        } else if (motionGestureInput is TouchMotionGestureFactory::getInstance().RELEASED) {
            this.released(ev);
        } else {
            if (this.currentMotionGesture_ReleaseControlledMotionGestureListener !is motionGestureInput) {
                @this.currentMotionGesture_ReleaseControlledMotionGestureListener = motionGestureInput;
                this.motionGestureCollection_ReleaseControlledMotionGestureListener.add(ev.getMotionGesture());
            }
        }
    }
}

