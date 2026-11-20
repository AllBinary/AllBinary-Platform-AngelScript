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

//TouchJ2ME
class TouchJ2ME : JObjectBase
{
    LogUtil@ logUtil;
    int DEVICE_ID_TouchJ2ME;
    AllMotionRecognizer@ motionRecognizer_TouchJ2ME;

    // Java field initializers run after the super constructor
    void jfields_TouchJ2ME()
    {
    @this.logUtil = LogUtil::getInstance();
    this.DEVICE_ID_TouchJ2ME = 0;
    @this.motionRecognizer_TouchJ2ME = AllMotionRecognizer().jinit_AllMotionRecognizer();
    }
    

    TouchJ2ME@ jinit_TouchJ2ME()
    {
        this.jfields_TouchJ2ME();
        BasicMotionGesturesHandler@ motionGesturesHandler = this.motionRecognizer_TouchJ2ME.getMotionGestureRecognizer().getMotionGesturesHandler();
        motionGesturesHandler.addListenerInterface(GameMotionGestureListener().jinit_GameMotionGestureListener(MotionGestureReceiveInterfaceFactory::getInstance()));
        return this;
    }
    

    void pointerDragged(int x, int y)
    {
        try {
            this.motionRecognizer_TouchJ2ME.processDraggedMotionEvent(x, y, this.DEVICE_ID_TouchJ2ME, 0);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerDragged", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void pointerPressed(int x, int y)
    {
        try {
            this.motionRecognizer_TouchJ2ME.processStartMotionEvent(x, y, this.DEVICE_ID_TouchJ2ME, 0);
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerPressed", e);
            }
            else { jthrow(jex1); }
        }
    }
    

    void pointerReleased(int x, int y)
    {
        try {
            this.motionRecognizer_TouchJ2ME.processEndMotionEvent(x, y, this.DEVICE_ID_TouchJ2ME, 0);
        } catch {
            Throwable@ jex2 = jcatch();
            if (cast<Exception>(jex2) !is null) {
                Exception@ e = cast<Exception>(jex2);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerReleased", e);
            }
            else { jthrow(jex2); }
        }
    }
}

