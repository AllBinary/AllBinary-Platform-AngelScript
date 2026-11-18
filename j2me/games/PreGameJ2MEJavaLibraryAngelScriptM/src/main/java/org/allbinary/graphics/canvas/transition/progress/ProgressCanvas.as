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
// package org.allbinary.graphics.canvas.transition.progress

class ProgressCanvas : RunnableCanvas, PaintableInterface, UpdateMyFontInterface
{
    bool hasPainted;
    BasicColor@ backgroundBasicColor_ProgressCanvas;
    Paintable@ GAUGE_PAINTABLE;
    float maxValue_ProgressCanvas;
    ABCustomGaugeItem@ gauge;
    string TEXT_ProgressCanvas;
    MyFontProcessor@ updateMyFontProcessor_ProgressCanvas;
    MyFontProcessor@ myFontProcessor_ProgressCanvas;
    AllBinaryMidlet@ allbinaryMidlet;
    float value_ProgressCanvas;
    string text_ProgressCanvas;
    bool background_ProgressCanvas;
    PaintableInterface@ paintable;
    bool inProgress;
    Processor@ IN_GAME_PROCESSOR_ProgressCanvas;
    Processor@ inGameProcessor;
    ProgressEndListener@ progressEndListener;
    string backgroundLabel_ProgressCanvas;
    string START_BACKGROUND_ProgressCanvas;
    string ADD_PORTION;
    string ADD_EARLY_PORTION;

    // Java field initializers run after the super constructor
    void jfields_ProgressCanvas()
    {
    
    
    @this.GAUGE_PAINTABLE = ProgressPaintable().jinit_ProgressPaintable(this);
    this.maxValue_ProgressCanvas = 100.0f;
    
    this.TEXT_ProgressCanvas = this.commonStrings.LOADING;
    @this.updateMyFontProcessor_ProgressCanvas = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor_ProgressCanvas = this.updateMyFontProcessor_ProgressCanvas;
    @this.allbinaryMidlet = AllBinaryMidlet::getNullInstance();
    
    this.text_ProgressCanvas = this.TEXT_ProgressCanvas;
    this.background_ProgressCanvas = true;
    @this.paintable = this.GAUGE_PAINTABLE;
    this.inProgress = false;
    @this.IN_GAME_PROCESSOR_ProgressCanvas = ProgressCanvas_j1().jinit_ProgressCanvas_j1(this);
    @this.inGameProcessor = Processor::getInstance();
    @this.progressEndListener = ProgressEndListener::instance;
    this.backgroundLabel_ProgressCanvas = "Background AI Game Loading...";
    this.START_BACKGROUND_ProgressCanvas = "startBackground";
    this.ADD_PORTION = "addPortion";
    this.ADD_EARLY_PORTION = "addEarlyPortion";
    }
    

    ProgressCanvas@ jinit_ProgressCanvas(string title, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_RunnableCanvas(NullCommandListener::NULL_COMMAND_LISTENER, CanvasStrings::getInstance().EMPTY_CHILD_NAME_LIST, false);
        this.jfields_ProgressCanvas();
        @this.backgroundBasicColor_ProgressCanvas = backgroundBasicColor;
        @this.gauge = ABCustomGaugeItem().jinit_ABCustomGaugeItem(StringUtil::getInstance().EMPTY_STRING, int(jdoubleToInt(this.maxValue_ProgressCanvas)), 0, backgroundBasicColor, foregroundBasicColor);
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.gauge.setHeight(font.getHeight() + 2);
        @this.myFontProcessor_ProgressCanvas = MyFontProcessor::getInstance();
    }
    

    void init(AllBinaryMidlet@ gameMidlet)
    {
        @this.allbinaryMidlet = gameMidlet;
    }
    

    void update(Graphics@ graphics)
    {
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
    }
    

    float getMaxValue()
    {
        return this.maxValue_ProgressCanvas;
    }
    

    void start()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.START_METHOD_NAME);
        this.setBackground(true);
        this.gauge.setHeight(30);
        this.gauge.setLabel(this.commonStrings.PLEASE_WAIT);
        this.setText(this.TEXT_ProgressCanvas);
        this.setValue(0);
        @this.inGameProcessor = Processor::getInstance();
        @this.paintable = this.GAUGE_PAINTABLE;
        this.inProgress = true;
    }
    

    void startBackground(bool background)
    {
        this.logUtil.putF(this.commonStrings.START, this, this.START_BACKGROUND_ProgressCanvas);
        this.setBackground(background);
        @this.myFontProcessor_ProgressCanvas = this.updateMyFontProcessor_ProgressCanvas;
        this.gauge.setLabel(this.backgroundLabel_ProgressCanvas);
        this.setText(this.TEXT_ProgressCanvas);
        this.setValue(0);
        @this.inGameProcessor = Processor::getInstance();
        @this.paintable = this.GAUGE_PAINTABLE;
    }
    

    void endActual()
    {
        this.allbinaryMidlet.commandAction(GameCommandsFactory::getInstance().SHOW_GAME_CANVAS, NullCanvas::NULL_CANVAS);
        this.inProgress = false;
        this.inGame();
    }
    

    void inGame()
    {
        this.progressEndListener.onEndEvent();
        @this.inGameProcessor = this.IN_GAME_PROCESSOR_ProgressCanvas;
    }
    

    void end()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.END_METHOD_NAME);
        this.gauge.setValue(this.getMaxValue());
        this.endActual();
        @this.paintable = NullPaintable::getInstance();
    }
    

    void endFromInitialLazyLoadingComplete()
    {
        this.progressEndListener.onEndEvent();
        this.gauge.setValue(this.getMaxValue());
        @this.inGameProcessor = this.IN_GAME_PROCESSOR_ProgressCanvas;
    }
    

    bool isInGame()
    {
        if (this.inGameProcessor is this.IN_GAME_PROCESSOR_ProgressCanvas) {
            return true;
        }
        return false;
    }
    

    void endIfPaintedSinceStart()
    {
    }
    

    void addEarlyPortion(int value, string text, int index)
    {
        this.setText(StringMaker().jinit_StringMaker().append(text).append(SmallIntegerSingletonFactory::getInstance().getAt(index).toString()).toString());
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / float(value));
    }
    

    void addPortion(int value, string text, int index)
    {
        this.setText(StringMaker().jinit_StringMaker().append(text).append(SmallIntegerSingletonFactory::getInstance().getAt(index).toString()).toString());
        PreLogUtil::put(this.text_ProgressCanvas, this, this.ADD_PORTION);
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / float(value));
    }
    

    void addNormalPortion(int value, string text)
    {
        if (this.text_ProgressCanvas != text) {
            PreLogUtil::put(text, this, this.ADD_PORTION);
        }
        this.setText(text);
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / float(value));
    }
    

    void setValue(int value)
    {
        this.value_ProgressCanvas = float(value);
        this.gauge.setValue(float(value));
    }
    

    void paint(Graphics@ graphics)
    {
        this.paintable.paint(graphics);
    }
    

    void paint2(Graphics@ graphics)
    {
        this.myFontProcessor_ProgressCanvas.process(graphics);
        graphics.setColor(this.backgroundBasicColor_ProgressCanvas.intValue());
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight());
        this.gauge.paintXY(graphics, 0, 0);
        this.hasPainted = true;
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
    

    float getValue()
    {
        return this.value_ProgressCanvas;
    }
    

    void setText(string text)
    {
        this.text_ProgressCanvas = text;
    }
    

    string getText()
    {
        return this.text_ProgressCanvas;
    }
    

    void setBackground(bool background)
    {
        this.background_ProgressCanvas = background;
    }
    

    bool isBackground()
    {
        return this.background_ProgressCanvas;
    }
}

class ProgressCanvas_j1 : Processor
{
    ProgressCanvas@ jouter;
    ThreadPool@ pathFindingThreadPool;

    ProgressCanvas_j1@ jinit_ProgressCanvas_j1(ProgressCanvas@ jouter)
    {
        @this.jouter = jouter;
        this.jinit_Processor();
        @this.pathFindingThreadPool = PathFindingThreadPool::getInstance();
        return this;
    }


        void process()
        {
            this.pathFindingThreadPool.runAPriorityTask();
        }
}

