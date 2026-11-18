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
// package org.allbinary.game.displayable.canvas

class PopupMenuInputProcessor : BasicMenuInputProcessor
{
    RectangleCollisionUtil@ rectangleCollisionUtil_PopupMenuInputProcessor;
    int CLICK_DELAY_PopupMenuInputProcessor;
    TimeDelayHelper@ clickTimeHelper_PopupMenuInputProcessor;
    Rectangle@ rectangle_PopupMenuInputProcessor;

    // Java field initializers run after the super constructor
    void jfields_PopupMenuInputProcessor()
    {
    @this.rectangleCollisionUtil_PopupMenuInputProcessor = RectangleCollisionUtil::getInstance();
    this.CLICK_DELAY_PopupMenuInputProcessor = 120;
    @this.clickTimeHelper_PopupMenuInputProcessor = TimeDelayHelper().jinit_TimeDelayHelper(this.CLICK_DELAY_PopupMenuInputProcessor);
    
    }
    

    PopupMenuInputProcessor@ jinit_PopupMenuInputProcessor(BasicArrayList@ gameKeyEventList, int playerInputId, MyCanvas@ gameCanvas, Rectangle@ rectangle)
    {
        this.jinit_BasicMenuInputProcessor(gameKeyEventList, playerInputId, gameCanvas);
        this.jfields_PopupMenuInputProcessor();
        @this.rectangle_PopupMenuInputProcessor = rectangle;
        return this;
    }
    

    void init(Rectangle@ rectangle)
    {
        @this.rectangle_PopupMenuInputProcessor = rectangle;
    }
    

    int processInput(int key)
    {
        if (key == Canvas::KEY_STAR) {
            AllBinaryGameCanvas@ gameCanvas = cast<AllBinaryGameCanvas>(this.getCanvas());
            gameCanvas.toggleMenu();
            return 1;
        }
        return 0;
    }
    

    int processInputList()
    {
        try {
            int motionInputsIndex = this.processMotionInputs();
            BasicArrayList@ list = this.getGameKeyEventList();
            int size = list.size();
            int key = 0;
            GameKeyEvent@ gameKeyEvent;
            for (int index = 0; index < size; index++) {
                @gameKeyEvent = cast<GameKeyEvent>(list.objectArray[index]);
                if (gameKeyEvent !is null) {
                    key = gameKeyEvent.getKey();
                    if (this.processInput(key) == 1) {
                        break;
                    }
                }
            }
            this.clear();
            if (size > 0 || motionInputsIndex >= 0) {
                return 1;
            } else {
                return -1;
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, GameInputStrings::getInstance().PROCESS_INPUT, e);
            return -1;
            }
            else { jthrow(jex0); }
        }
        return 0;
    }
    

    int processMotionInputs()
    {
        int lastIndex = this.motionGestureEventList.size() - 1;
        if (lastIndex >= 0) {
            MotionGestureEvent@ motionGestureEvent = cast<MotionGestureEvent>(this.motionGestureEventList.objectArray[lastIndex]);
            this.processMotionInput(motionGestureEvent);
        }
        this.motionGestureEventList.clear();
        return lastIndex;
    }
    

    void processMotionInput(MotionGestureEvent@ motionGestureEvent)
    {
        if (motionGestureEvent is null) {
            this.logUtil.putF("Exception: Bug", this, this.gameInputStrings.PROCESS_MOTION_INPUT);
            return;
        }
        TouchMotionGestureFactory@ touchMotionGestureFactory = TouchMotionGestureFactory::getInstance();
        MotionGestureInput@ motionGestureInput = motionGestureEvent.getMotionGesture();
        if (motionGestureInput is touchMotionGestureFactory.RELEASED) {
            GPoint@ point = motionGestureEvent.getCurrentPoint();
            GPoint@ rectPoint = this.rectangle_PopupMenuInputProcessor.getPoint();
            if (this.rectangleCollisionUtil_PopupMenuInputProcessor.isInside(rectPoint.getX(), rectPoint.getY(), this.rectangle_PopupMenuInputProcessor.getMaxX() + 20, this.rectangle_PopupMenuInputProcessor.getMaxY(), point.getX(), point.getY())) {
                if (this.clickTimeHelper_PopupMenuInputProcessor.isTimeTNT()) {
                    AllBinaryGameCanvas@ gameCanvas = cast<AllBinaryGameCanvas>(this.getCanvas());
                    gameCanvas.toggleMenu();
                }
            }
        }
    }
}

