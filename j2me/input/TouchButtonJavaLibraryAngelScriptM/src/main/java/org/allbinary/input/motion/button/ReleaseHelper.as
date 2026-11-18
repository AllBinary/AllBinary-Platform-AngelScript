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

class ReleaseHelper : JObjectBase
{
    TouchButtonRecognizer@ touchButtonRecognizer;
    

    ReleaseHelper@ jinit_ReleaseHelper(TouchButtonRecognizer@ touchButtonRecognizer)
    {
        @this.touchButtonRecognizer = touchButtonRecognizer;
        return this;
    }
    

    void release(TouchButtonInput@ touchButtonInput, int deviceId)
    {
        TouchButtonInput@ nextTouchButtonInput;
        GameKeyEvent@ gameKeyEvent;
        for (int index = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() - 1; index >= 0; index--) {
            @nextTouchButtonInput = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index);
            @gameKeyEvent = nextTouchButtonInput.getGameKeyEvent();
            this.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent);
            this.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index);
        }
    }
}

