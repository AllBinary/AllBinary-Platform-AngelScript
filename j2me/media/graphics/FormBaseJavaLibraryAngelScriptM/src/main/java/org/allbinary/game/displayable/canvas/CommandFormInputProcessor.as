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

//In general allow scrolling of the menu and selection the center item
class CommandFormInputProcessor : BasicMenuInputProcessor
{
    int MOTION_GESTURE_SOURCE_ID_CommandFormInputProcessor;
    int CLICK_DELAY_CommandFormInputProcessor;
    TimeDelayHelper@ clickTimeHelper_CommandFormInputProcessor;
    int DOUBLE_CLICK_DELAY_CommandFormInputProcessor;
    TimeDelayHelper@ doubleClickTimeHelper_CommandFormInputProcessor;
    bool isSingleKeyProcessing;
    ScrollSelectionForm@ form_CommandFormInputProcessor;
    bool hasPressed_CommandFormInputProcessor;
    string PROCESS_COMMAND_CommandFormInputProcessor;
    string NAME_LABEL_CommandFormInputProcessor;

    // Java field initializers run after the super constructor
    void jfields_CommandFormInputProcessor()
    {
    this.MOTION_GESTURE_SOURCE_ID_CommandFormInputProcessor = GameKeyEventFactory::getInstance().MOTION_GESTURE_SOURCE_ID;
    this.CLICK_DELAY_CommandFormInputProcessor = 150;
    @this.clickTimeHelper_CommandFormInputProcessor = TimeDelayHelper().jinit_TimeDelayHelper(this.CLICK_DELAY_CommandFormInputProcessor);
    this.DOUBLE_CLICK_DELAY_CommandFormInputProcessor = 1200;
    @this.doubleClickTimeHelper_CommandFormInputProcessor = TimeDelayHelper().jinit_TimeDelayHelper(this.DOUBLE_CLICK_DELAY_CommandFormInputProcessor);
    this.isSingleKeyProcessing = InputFeatureFactory::getInstance().isSingleKeyProcessing();
    
    this.hasPressed_CommandFormInputProcessor = false;
    this.PROCESS_COMMAND_CommandFormInputProcessor = "processCommand";
    this.NAME_LABEL_CommandFormInputProcessor = " ScrollSelectionForm: ";
    }
    

    CommandFormInputProcessor@ jinit_CommandFormInputProcessor(BasicArrayList@ gameKeyEventList, int playerInputId, MyCanvas@ gameCanvas, ScrollSelectionForm@ form)
    {
        this.jinit_BasicMenuInputProcessor(gameKeyEventList, playerInputId, gameCanvas);
        this.jfields_CommandFormInputProcessor();
        @this.form_CommandFormInputProcessor = form;
        return this;
    }
    

    int processInput(int key)
    {
        if (key == Canvas::LEFT || key == Canvas::RIGHT || key == Canvas::UP || key == Canvas::DOWN) {
            PrimaryPlayerQueueFactory::getInstance().add(SelectSound::getInstance());
            this.form_CommandFormInputProcessor.processInputKey(key);
            return 1;
        } else if (key == Canvas::FIRE) {
            PrimaryPlayerQueueFactory::getInstance().add(SelectSound::getInstance());
            return this.processCommand();
        }
        return 0;
    }
    

    int processCommand()
    {
        CommandCurrentSelectionForm@ commandCurrentSelectionForm = cast<CommandCurrentSelectionForm>(this.form_CommandFormInputProcessor);
        Command@ command = commandCurrentSelectionForm.getSelectedCommand();
        this.logUtil.putF(command.toString(), this, this.PROCESS_COMMAND_CommandFormInputProcessor);
        Features@ features = Features::getInstance();
        OpenGLFeatureFactory@ openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
        if (SWTUtil::isSWT && features.isFeature(openGLFeatureFactory.OPENGL) && command !is GameCommandsFactory::getInstance().EXIT_COMMAND) {
            CommandRunnable().jinit_CommandRunnable(this, command).run();
        } else {
            PrimaryThreadPool::getInstance().runTask(CommandRunnable().jinit_CommandRunnable(this, command));
        }
        if (command is GameCommandsFactory::getInstance().QUIT_COMMAND) {
            return -1;
        } else {
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
                key = gameKeyEvent.getKey();
                if (gameKeyEvent.getSourceId() != this.MOTION_GESTURE_SOURCE_ID_CommandFormInputProcessor) {
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
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.PROCESS_INPUT, e);
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
        TouchMotionGestureFactory@ touchMotionGestureFactory = TouchMotionGestureFactory::getInstance();
        MotionGestureInput@ motionGestureInput = motionGestureEvent.getMotionGesture();
        if (motionGestureInput is touchMotionGestureFactory.RELEASED) {
            GPoint@ point = motionGestureEvent.getCurrentPoint();
            if (this.form_CommandFormInputProcessor.isInForm(point)) {
                int index = this.form_CommandFormInputProcessor.getSelectedIndexForPoint(point);
                if (index != -1) {
                    PrimaryPlayerQueueFactory::getInstance().add(SelectSound::getInstance());
                    if (index == this.form_CommandFormInputProcessor.getSelectedIndex()) {
                        if (this.clickTimeHelper_CommandFormInputProcessor.isTimeTNT()) {
                            this.processCommand();
                        }
                    } else {
                        this.form_CommandFormInputProcessor.setSelectedIndex(index);
                    }
                } else {
                }
            }
            if (this.hasPressed_CommandFormInputProcessor) {
                if (!this.doubleClickTimeHelper_CommandFormInputProcessor.isTimeTNT()) {
                    this.logUtil.putF("Double Press", this, this.gameInputStrings.PROCESS_MOTION_INPUT);
                    this.processCommand();
                }
                this.doubleClickTimeHelper_CommandFormInputProcessor.delay = this.DOUBLE_CLICK_DELAY_CommandFormInputProcessor;
                this.doubleClickTimeHelper_CommandFormInputProcessor.setStartTimeTNT();
            }
            this.hasPressed_CommandFormInputProcessor = false;
        } else if (motionGestureInput is touchMotionGestureFactory.PRESSED) {
            this.doubleClickTimeHelper_CommandFormInputProcessor.delay = 0;
            this.hasPressed_CommandFormInputProcessor = true;
        }
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append(BasicMenuInputProcessor::toString()).append(this.NAME_LABEL_CommandFormInputProcessor).append(this.form_CommandFormInputProcessor.toString()).toString();
    }
}

