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

class GameCommandCanvas : MyCanvas, MenuListener, DisplayChangeEventListener, UpdateMyFontInterface
{
    Processor@ repaintProcessor_GameCommandCanvas;
    GameInputStrings@ gameInputStrings;
    BasicColor@ foregroundBasicColor;
    BasicColor@ backgroundBasicColor;
    InputToGameKeyMapping@ inputToGameKeyMapping;
    GameKeyFactory@ gameKeyFactory;
    GameKeyEventFactory@ gameKeyEventFactory_GameCommandCanvas;
    DownGameKeyEventHandler@ downGameKeyEventHandler_GameCommandCanvas;
    UpGameKeyEventHandler@ upGameKeyEventHandler_GameCommandCanvas;
    RepaintBehavior@ repaintBehavior;
    MyFontProcessor@ updateMyFontProcessor;
    MyFontProcessor@ myFontProcessor;
    int foregroundColor;
    int backgroundColor;
    BasicMenuInputProcessor@ menuInputProcessor_GameCommandCanvas;
    Paintable@ menuPaintable_GameCommandCanvas;
    PaintableForm@ menuForm_GameCommandCanvas;
    bool isSingleKeyRepeatableProcessing_GameCommandCanvas;
    int fontHeight;

    // Java field initializers run after the super constructor
    void jfields_GameCommandCanvas()
    {
    @this.repaintProcessor_GameCommandCanvas = ScreenRepaintProcessorFactory::getInstance().create(this);
    @this.gameInputStrings = GameInputStrings::getInstance();
    
    
    @this.inputToGameKeyMapping = PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance().getInputMapping();
    @this.gameKeyFactory = GameKeyFactory::getInstance();
    @this.gameKeyEventFactory_GameCommandCanvas = GameKeyEventFactory::getInstance();
    @this.downGameKeyEventHandler_GameCommandCanvas = DownGameKeyEventHandler::getInstance();
    @this.upGameKeyEventHandler_GameCommandCanvas = UpGameKeyEventHandler::getInstance();
    
    @this.updateMyFontProcessor = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor = this.updateMyFontProcessor;
    
    
    @this.menuInputProcessor_GameCommandCanvas = NoMenuInputProcessor::getInstance();
    @this.menuPaintable_GameCommandCanvas = NullPaintable::getInstance();
    @this.menuForm_GameCommandCanvas = PaintableForm::getNullPaintableForm();
    this.isSingleKeyRepeatableProcessing_GameCommandCanvas = Features::getInstance().isFeature(InputFeatureFactory::getInstance().SINGLE_KEY_REPEAT_PRESS);
    this.fontHeight = 0;
    }
    

    GameCommandCanvas@ jinit_GameCommandCanvas(CommandListener@ cmdListener, string name, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_MyCanvas(name, CanvasStrings::getInstance().EMPTY_CHILD_NAME_LIST);
        this.jfields_GameCommandCanvas();
        @this.repaintBehavior = RepaintBehavior::getInstance();
        @this.foregroundBasicColor = foregroundBasicColor;
        @this.backgroundBasicColor = backgroundBasicColor;
        this.foregroundColor = this.foregroundBasicColor.intValue();
        this.backgroundColor = this.backgroundBasicColor.intValue();
        this.initCommands(cmdListener);
        if (cmdListener !is NullCommandListener::NULL_COMMAND_LISTENER) {
            try {
                this.initMenu();
                this.repaintProcessor_GameCommandCanvas.process();
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<Exception>(jex0) !is null) {
                    Exception@ e = cast<Exception>(jex0);
                jthrow(RuntimeException().jinit_RuntimeException());
                }
                else { jthrow(jex0); }
            }
        }
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        try {
            Font@ font = graphics.getFont();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(MyFontProcessor::defaultCharWidth(font)).append(this.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.fontHeight = font.getHeight();
            Rectangle@ rectangle = this.createRectangle(this.menuForm_GameCommandCanvas.size());
            this.menuForm_GameCommandCanvas.init(rectangle, FormTypeFactory::getInstance().VERTICAL_CENTER_FORM);
            this.update();
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
            else { jthrow(jex1); }
        }
        @this.myFontProcessor = MyFontProcessor::getInstance();
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onDisplayChangeEvent(DisplayChangeEvent@ displayChangeEvent)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings.START).append(DisplayInfoSingleton::getInstance().toString()).toString(), this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
        @this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory::getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    void initMenu()
    {
        ScrollSelectionForm@ form = this.createForm();
        @this.menuForm_GameCommandCanvas = form;
        if (form !is ScrollSelectionFormNoneFactory::getInstance()) {
            this.setMenuInputProcessor(ImmediateCommandFormInputProcessor().jinit_ImmediateCommandFormInputProcessor(BasicArrayListD().jinit_BasicArrayListD(), -1, this, form));
            @this.menuPaintable_GameCommandCanvas = FormPaintable().jinit_FormPaintable(form);
        }
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    ScrollSelectionForm@ createForm()
    {
        ABCustomItem@[]@ items = CommandTextItemArrayFactory().jinit_CommandTextItemArrayFactory(AllCommandsVisitor().jinit_AllCommandsVisitor()).getInstance(this.getCommandStack(), this.backgroundBasicColor, this.foregroundBasicColor);
        Rectangle@ rectangle = this.createRectangle(int(items.length()));
        return CommandCurrentSelectionFormFactory::getInstance(StringUtil::getInstance().EMPTY_STRING, items, rectangle, FormTypeFactory::getInstance().VERTICAL_CENTER_FORM, 15, false, this.backgroundBasicColor, this.foregroundBasicColor);
    }
    

    Rectangle@ createRectangle(int size)
    {
        int height = size * this.fontHeight;
        int startY = (this.displayInfo.getLastHeight() * 2 / 3) - height;
        PointFactory@ pointFactory = PointFactory::getInstance();
        Rectangle@ rectangle = Rectangle().jinit_Rectangle(pointFactory.createXY(30, startY), this.displayInfo.getLastWidth() - 30, startY);
        return rectangle;
    }
    

    void open()
    {
        this.logUtil.putF(this.commonStrings.START, this, "open");
        BasicMotionGesturesHandler::getInstance().addListenerInterface(this.getMenuInputProcessor());
        GameKeyEventHandler::getInstance().addListener(this.getMenuInputProcessor());
        DisplayChangeEventHandler::getInstance().addListenerInterface(this);
    }
    

    void close()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE);
        BasicMotionGesturesHandler::getInstance().removeListener(this.getMenuInputProcessor());
        GameKeyEventHandler::getInstance().removeListener(this.getMenuInputProcessor());
        DisplayChangeEventHandler::getInstance().removeListener(this);
    }
    

    void update()
    {
        this.repaintProcessor_GameCommandCanvas.process();
    }
    

    int getSourceId()
    {
        return GameCommandCanvas::id;
    }
    

    void keyPressed(int keyCode)
    {
        this.keyPressedByDevice(keyCode, 0);
    }
    

    void keyReleased(int keyCode)
    {
        this.keyReleasedByDevice(keyCode, 0);
    }
    

    void keyRepeated(int keyCode)
    {
        this.keyRepeatedByDevice(keyCode, 0);
    }
    

    void keyPressedByDevice(int keyCode, int deviceId)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonSeps::getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED);
        this.addGameKeyEvent(keyCode, 0, false);
    }
    

    void keyReleasedByDevice(int keyCode, int deviceId)
    {
        this.removeGameKeyEvent(keyCode, deviceId, false);
    }
    

    void keyRepeatedByDevice(int keyCode, int deviceId)
    {
        if (this.isSingleKeyRepeatableProcessing_GameCommandCanvas) {
            this.addGameKeyEvent(keyCode, deviceId, true);
        }
    }
    

    void addGameKeyEvent(int keyCode, int deviceId, bool repeated)
    {
        try {
            GameKey@ gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey !is this.gameKeyFactory.NONE) {
                GameKeyEvent@ gameKeyEvent = this.gameKeyEventFactory_GameCommandCanvas.getInstanceForInput(this, gameKey);
                this.downGameKeyEventHandler_GameCommandCanvas.fireEvent(gameKeyEvent);
                this.downGameKeyEventHandler_GameCommandCanvas.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            }
        } catch {
            Throwable@ jex2 = jcatch();
            if (cast<Exception>(jex2) !is null) {
                Exception@ e = cast<Exception>(jex2);
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e);
            }
            else { jthrow(jex2); }
        }
    }
    

    void removeGameKeyEvent(int keyCode, int deviceId, bool repeated)
    {
        try {
            GameKey@ gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey !is this.gameKeyFactory.NONE) {
                GameKeyEvent@ gameKeyEvent = this.gameKeyEventFactory_GameCommandCanvas.getInstanceForInput(this, gameKey);
                this.upGameKeyEventHandler_GameCommandCanvas.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler_GameCommandCanvas.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT);
            }
        } catch {
            Throwable@ jex3 = jcatch();
            if (cast<Exception>(jex3) !is null) {
                Exception@ e = cast<Exception>(jex3);
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e);
            }
            else { jthrow(jex3); }
        }
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor.process(graphics);
        this.menuPaintable_GameCommandCanvas.paint(graphics);
        this.repaintBehavior.repaint(this);
    }
    

    void setMenuInputProcessor(BasicMenuInputProcessor@ menuInputProcessor)
    {
        @this.menuInputProcessor_GameCommandCanvas = menuInputProcessor;
    }
    

    BasicMenuInputProcessor@ getMenuInputProcessor()
    {
        return this.menuInputProcessor_GameCommandCanvas;
    }
}

namespace GameCommandCanvas
{
    const int id = 0;
}

