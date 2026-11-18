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

class TouchButtonRecognizer : JObjectBase
{
    LogUtil@ logUtil;
    RectangleCollisionUtil@ rectangleCollisionUtil;
    UpGameKeyEventHandler@ upGameKeyEventHandler;
    DownGameKeyEventHandler@ downGameKeyEventHandler;
    TouchButtonInput@ lastPressedTouchButtonInput;
    CurrentlyPressedTouchButtonSingleton@ currentlyPressedTouchButtonSingleton;
    ReleaseHelper@ releaseHelper;

    // Java field initializers run after the super constructor
    void jfields_TouchButtonRecognizer()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.rectangleCollisionUtil = RectangleCollisionUtil::getInstance();
    @this.upGameKeyEventHandler = UpGameKeyEventHandler::getInstance();
    @this.downGameKeyEventHandler = DownGameKeyEventHandler::getInstance();
    @this.lastPressedTouchButtonInput = BasicTouchInputFactory::getInstance().NONE;
    @this.currentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton::getInstance();
    
    }
    

    TouchButtonRecognizer@ jinit_TouchButtonRecognizer()
    {
        this.jfields_TouchButtonRecognizer();
        if (TouchScreenFactory::getInstance().isMultiTouch()) {
            @this.releaseHelper = MultitouchReleaseHelper().jinit_MultitouchReleaseHelper(this);
        } else {
            @this.releaseHelper = ReleaseHelper().jinit_ReleaseHelper(this);
        }
        return this;
    }
    

    void processRelease(TouchButtonInput@ touchButtonInput, int deviceId)
    {
        this.releaseHelper.release(touchButtonInput, deviceId);
        GameKeyEvent@ gameKeyEvent = touchButtonInput.getGameKeyEvent();
        this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
        this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
        this.currentlyPressedTouchButtonSingleton.remove(touchButtonInput);
    }
    

    bool releaseTouchButtonInput(int x, int y, int deviceId)
    {
        TouchButtonInput@ touchButtonInput = this.lastPressedTouchButtonInput;
        if (this.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
            @this.lastPressedTouchButtonInput = BasicTouchInputFactory::getInstance().NONE;
            this.processRelease(touchButtonInput, deviceId);
            return true;
        } else {
            BasicArrayList@ list = TouchButtonFactory::getInstance().getList();
            Rectangle@ rectangle;
            GPoint@ point;
            TouchButton@ touchButton;
            for (int index = list.size() - 1; index >= 0; index--) {
                @touchButton = cast<TouchButton>(list.objectArray[index]);
                @rectangle = touchButton.getRectangle();
                @point = rectangle.getPoint();
                if (this.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                    @touchButtonInput = touchButton.getTouchButtonInput();
                    this.processRelease(touchButtonInput, deviceId);
                    return true;
                }
            }
        }
        return false;
    }
    

    bool pressTouchButtonInput(int x, int y, int deviceId)
    {
        BasicArrayList@ list = TouchButtonFactory::getInstance().getList();
        Rectangle@ rectangle;
        GPoint@ point;
        TouchButton@ touchButton;
        TouchButtonInput@ touchButtonInput;
        GameKeyEvent@ gameKeyEvent;
        for (int index = list.size() - 1; index >= 0; index--) {
            @touchButton = cast<TouchButton>(list.objectArray[index]);
            @rectangle = touchButton.getRectangle();
            @point = rectangle.getPoint();
            if (this.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                @touchButtonInput = touchButton.getTouchButtonInput();
                if (!this.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
                    this.releaseHelper.release(touchButtonInput, deviceId);
                    @this.lastPressedTouchButtonInput = touchButtonInput;
                    this.currentlyPressedTouchButtonSingleton.add(touchButtonInput);
                    @gameKeyEvent = touchButtonInput.getGameKeyEvent();
                    this.downGameKeyEventHandler.fireEvent(gameKeyEvent);
                    this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
                }
                return true;
            }
        }
        return false;
    }
}

