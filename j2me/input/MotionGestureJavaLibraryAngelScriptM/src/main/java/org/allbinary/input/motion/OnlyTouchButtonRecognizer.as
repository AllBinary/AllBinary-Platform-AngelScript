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

class OnlyTouchButtonRecognizer : MotionRecognizer
{
    TouchButtonRecognizer@ touchButtonRecognizer_OnlyTouchButtonRecognizer;
    bool touchButtonProcessing_OnlyTouchButtonRecognizer;

    // Java field initializers run after the super constructor
    void jfields_OnlyTouchButtonRecognizer()
    {
    
    this.touchButtonProcessing_OnlyTouchButtonRecognizer = false;
    }
    

    OnlyTouchButtonRecognizer@ jinit_OnlyTouchButtonRecognizer()
    {
        this.jinit_MotionRecognizer();
        this.jfields_OnlyTouchButtonRecognizer();
        @this.touchButtonRecognizer_OnlyTouchButtonRecognizer = TouchButtonRecognizer().jinit_TouchButtonRecognizer();
        return this;
    }
    

    void processStartMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        if (this.touchButtonRecognizer_OnlyTouchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            this.touchButtonProcessing_OnlyTouchButtonRecognizer = true;
        }
    }
    

    void processEndMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        if (this.touchButtonProcessing_OnlyTouchButtonRecognizer) {
            this.touchButtonProcessing_OnlyTouchButtonRecognizer = false;
        }
        if (this.touchButtonRecognizer_OnlyTouchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
            return;
        }
    }
    

    void processDraggedMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        if (this.touchButtonProcessing_OnlyTouchButtonRecognizer) {
            this.touchButtonRecognizer_OnlyTouchButtonRecognizer.pressTouchButtonInput(x, y, deviceId);
        }
    }
}

