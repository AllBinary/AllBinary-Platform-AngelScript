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

class AllBinaryGameCanvas : RunnableCanvas, AllBinaryGameCanvasInterface, GameCanvasRunnableInterface, MenuListener, IntermissionCompositeInterface, IntermissionEnableListenerInterface, PopupMenuInterface, DisplayChangeEventListener, UpdateMyFontInterface
{
    BasicColorFactory@ basicColorFactory;
    BasicColorSetUtil@ basicSetColorUtil;
    TouchFeatureFactory@ touchFeatureFactory;
    OpenGLFeatureFactory@ openGLFeatureFactory;
    TouchButtonFactory@ touchButtonFactory;
    GameAdStateFactory@ gameAdStateFactory;
    GameStrings@ gameStrings;
    GameInputStrings@ gameInputStrings;
    GameStateFactory@ gameStateFactory;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper_AllBinaryGameCanvas;
    GameTickDisplayInfoSingleton@ gameTickDisplayInfoSingleton_AllBinaryGameCanvas;
    GameCanvasRunnable@ gameRunnable;
    GameCanvasPauseRunnable@ gamePauseRunnable;
    FormUtil@ formUtil;
    MyFormUtil@ myFormUtil;
    MyFontProcessor@ updateMyFontProcessor_AllBinaryGameCanvas;
    MyFontProcessor@ myFontProcessor_AllBinaryGameCanvas;
    Paintable@ gameSpecificPaintable;
    SensorGameUpdateProcessor@ sensorGameUpdateProcessor_AllBinaryGameCanvas;
    EndGameInfo@ endGameInfo;
    IntermissionInterface@ startIntermissionInterface_AllBinaryGameCanvas;
    IntermissionInterface@ endLevelIntermissionInterface_AllBinaryGameCanvas;
    AllBinaryGameLayerManager@ gameLayerManager;
    GameState@ gameState_AllBinaryGameCanvas;
    bool gameOver_AllBinaryGameCanvas;
    bool initialized_AllBinaryGameCanvas;
    TimeDelayHelper@ gameStateTimeHelper_AllBinaryGameCanvas;
    HighScoresHelperBaseInterface@ highScoresHelper;
    bool highScoreSubmitted_AllBinaryGameCanvas;
    HighScoresPaintable@ realHighScoresPaintable_AllBinaryGameCanvas;
    Paintable@ highScoresPaintable_AllBinaryGameCanvas;
    BasicArrayList@ localPlayerGameInputList_AllBinaryGameCanvas;
    bool isCheating_AllBinaryGameCanvas;
    ABHashtable@ hashtable_AllBinaryGameCanvas;
    bool isSingleKeyRepeatableProcessing_AllBinaryGameCanvas;
    BasicBuildGameInitializerFactory@ gameInitializationInterfaceFactoryInterface_AllBinaryGameCanvas;
    Paintable@ touchButtonsPaintable_AllBinaryGameCanvas;
    Paintable@ touchPaintable;
    PlayerGameInput@ cheatProcessor_AllBinaryGameCanvas;
    Processor@ gameInputProcessor_AllBinaryGameCanvas;
    Processor@ endGameProcessor_AllBinaryGameCanvas;
    Processor@ realEndGameProcessor_AllBinaryGameCanvas;
    Processor@ startIntermissionProcessor_AllBinaryGameCanvas;
    Processor@ realStartIntermissionProcessor_AllBinaryGameCanvas;
    Paintable@ endGamePaintable_AllBinaryGameCanvas;
    Paintable@ endGameStatePaintable_AllBinaryGameCanvas;
    Paintable@ nonBotPaintable;
    Paintable@ intermissionPaintable_AllBinaryGameCanvas;
    InitUpdatePaintable@ startIntermissionPaintable_AllBinaryGameCanvas;
    Processor@ mainStateProcessor_AllBinaryGameCanvas;
    Processor@ processGameProcessor_AllBinaryGameCanvas;
    HighScoresFactoryInterface@ highScoresFactoryInterface_AllBinaryGameCanvas;
    int startLevel_AllBinaryGameCanvas;
    BasicMenuInputProcessor@ mainMenuInputProcessor_AllBinaryGameCanvas;
    BasicMenuInputProcessor@ popupMenuInputProcessor_AllBinaryGameCanvas;
    BasicMenuInputProcessor@ menuInputProcessor_AllBinaryGameCanvas;
    ScrollSelectionForm@ menuForm_AllBinaryGameCanvas;
    Paintable@ formPaintable_AllBinaryGameCanvas;
    Paintable@ openMenuPaintable_AllBinaryGameCanvas;
    Paintable@ menuPaintable_AllBinaryGameCanvas;
    BaseTouchInput@ currentTouchInputFactory_AllBinaryGameCanvas;
    ColorFillBasePaintable@ colorFillPaintable;
    BaseGameStatistics@ baseGameStatistics_AllBinaryGameCanvas;
    PlayerQueue@ primaryPlayerQueue_AllBinaryGameCanvas;
    PlayerQueue@ secondaryPlayerQueue_AllBinaryGameCanvas;
    string BUILD_GAME;
    GameTypeFactory@ gameTypeFactory;
    ScreenCapture@ screenCapture;
    BasicMotionGesturesHandler@ basicMotionGesturesHandler_AllBinaryGameCanvas;
    GameKeyEventHandler@ gameKeyEventHandler_AllBinaryGameCanvas;
    DemoGameBehavior@ gameBehavior_AllBinaryGameCanvas;
    BaseMenuBehavior@ menuBehavior_AllBinaryGameCanvas;
    PaintableInterface@ progressPaintable_AllBinaryGameCanvas;
    int fontHeightP;
    DemoPaintableInterface@ gameCanvasStartListener_AllBinaryGameCanvas;
    InputProcessor@ rawGameInputProcessor_AllBinaryGameCanvas;
    InputProcessor@ rawInputProcessor_AllBinaryGameCanvas;
    InputProcessor@ inputProcessor_AllBinaryGameCanvas;
    int64 YIELD_SLEEP_AllBinaryGameCanvas;

    // Java field initializers run after the super constructor
    void jfields_AllBinaryGameCanvas()
    {
    @this.basicColorFactory = BasicColorFactory::getInstance();
    @this.basicSetColorUtil = BasicColorSetUtil::getInstance();
    @this.touchFeatureFactory = TouchFeatureFactory::getInstance();
    @this.openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
    @this.touchButtonFactory = TouchButtonFactory::getInstance();
    @this.gameAdStateFactory = GameAdStateFactory::getInstance();
    @this.gameStrings = GameStrings::getInstance();
    @this.gameInputStrings = GameInputStrings::getInstance();
    @this.gameStateFactory = GameStateFactory::getInstance();
    @this.gameTickTimeDelayHelper_AllBinaryGameCanvas = GameTickTimeDelayHelperFactory::getInstance();
    @this.gameTickDisplayInfoSingleton_AllBinaryGameCanvas = GameTickDisplayInfoSingleton::getInstance();
    @this.gameRunnable = GameCanvasRunnable().jinit_GameCanvasRunnable(this);
    @this.gamePauseRunnable = GameCanvasPauseRunnable().jinit_GameCanvasPauseRunnable(this);
    @this.formUtil = FormUtil::getInstance();
    @this.myFormUtil = MyFormUtil::getInstance();
    @this.updateMyFontProcessor_AllBinaryGameCanvas = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor_AllBinaryGameCanvas = this.updateMyFontProcessor_AllBinaryGameCanvas;
    @this.gameSpecificPaintable = NullPaintable::getInstance();
    @this.sensorGameUpdateProcessor_AllBinaryGameCanvas = SingleSensorGameUpdateProcessor().jinit_SingleSensorGameUpdateProcessor();
    @this.endGameInfo = EndGameInfo().jinit_EndGameInfo();
    @this.startIntermissionInterface_AllBinaryGameCanvas = Intermission().jinit_Intermission();
    @this.endLevelIntermissionInterface_AllBinaryGameCanvas = Intermission().jinit_Intermission();
    @this.gameLayerManager = AllBinaryGameLayerManager::getNullInstance();
    @this.gameState_AllBinaryGameCanvas = this.gameStateFactory.NO_GAME_STATE;
    
    
    @this.gameStateTimeHelper_AllBinaryGameCanvas = TimeDelayHelper().jinit_TimeDelayHelper(0);
    
    
    @this.realHighScoresPaintable_AllBinaryGameCanvas = HighScoresPaintable().jinit_HighScoresPaintable();
    @this.highScoresPaintable_AllBinaryGameCanvas = NullPaintable::getInstance();
    @this.localPlayerGameInputList_AllBinaryGameCanvas = BasicArrayListD().jinit_BasicArrayListD();
    
    @this.hashtable_AllBinaryGameCanvas = this.stdUtil.NULL_TABLE;
    
    @this.gameInitializationInterfaceFactoryInterface_AllBinaryGameCanvas = BasicBuildGameInitializerFactory::NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;
    @this.touchButtonsPaintable_AllBinaryGameCanvas = NullPaintable::getInstance();
    @this.touchPaintable = NullPaintable::getInstance();
    @this.cheatProcessor_AllBinaryGameCanvas = NoPlayerGameInput::getInstance();
    @this.gameInputProcessor_AllBinaryGameCanvas = Processor::getInstance();
    @this.endGameProcessor_AllBinaryGameCanvas = Processor::getInstance();
    @this.realEndGameProcessor_AllBinaryGameCanvas = Processor::getInstance();
    @this.startIntermissionProcessor_AllBinaryGameCanvas = Processor::getInstance();
    @this.realStartIntermissionProcessor_AllBinaryGameCanvas = Processor::getInstance();
    @this.endGamePaintable_AllBinaryGameCanvas = NullPaintable::getInstance();
    @this.endGameStatePaintable_AllBinaryGameCanvas = NullPaintable::getInstance();
    @this.nonBotPaintable = NullPaintable::getInstance();
    @this.intermissionPaintable_AllBinaryGameCanvas = NullPaintable::getInstance();
    @this.startIntermissionPaintable_AllBinaryGameCanvas = NullInitUpdatePaintable::getInstance();
    @this.mainStateProcessor_AllBinaryGameCanvas = Processor::getInstance();
    @this.processGameProcessor_AllBinaryGameCanvas = Processor::getInstance();
    
    
    @this.mainMenuInputProcessor_AllBinaryGameCanvas = NoMenuInputProcessor::getInstance();
    @this.popupMenuInputProcessor_AllBinaryGameCanvas = NoMenuInputProcessor::getInstance();
    @this.menuInputProcessor_AllBinaryGameCanvas = NoMenuInputProcessor::getInstance();
    @this.menuForm_AllBinaryGameCanvas = ScrollSelectionForm::getNullScrollSelectionForm();
    @this.formPaintable_AllBinaryGameCanvas = NullPaintable::getInstance();
    @this.openMenuPaintable_AllBinaryGameCanvas = NullPaintable::getInstance();
    @this.menuPaintable_AllBinaryGameCanvas = NullPaintable::getInstance();
    @this.currentTouchInputFactory_AllBinaryGameCanvas = NoButtonsTouchInputFactory::getInstance();
    @this.colorFillPaintable = ColorFillPaintableFactory::getInstance_jstatic().getInstance(this.basicColorFactory.BLACK, true);
    @this.baseGameStatistics_AllBinaryGameCanvas = GameStatisticsFactory::getInstance();
    @this.primaryPlayerQueue_AllBinaryGameCanvas = PrimaryPlayerQueueFactory::getInstance();
    @this.secondaryPlayerQueue_AllBinaryGameCanvas = SecondaryPlayerQueueFactory::getInstance();
    this.BUILD_GAME = "buildGame";
    @this.gameTypeFactory = GameTypeFactory::getInstance();
    @this.screenCapture = ScreenCaptureFactory::getInstance();
    @this.basicMotionGesturesHandler_AllBinaryGameCanvas = BasicMotionGesturesHandler::getInstance();
    @this.gameKeyEventHandler_AllBinaryGameCanvas = GameKeyEventHandler::getInstance();
    
    
    @this.progressPaintable_AllBinaryGameCanvas = ProgressCanvasFactory::getLazyInstance();
    
    @this.gameCanvasStartListener_AllBinaryGameCanvas = NullDemoPaintable::NULL_DEMO_PAINTABLE;
    @this.rawGameInputProcessor_AllBinaryGameCanvas = GameCanvasInputProcessor().jinit_GameCanvasInputProcessor(this);
    @this.rawInputProcessor_AllBinaryGameCanvas = FormInputProcessor().jinit_FormInputProcessor(this);
    @this.inputProcessor_AllBinaryGameCanvas = this.getRawGameInputProcessor();
    this.YIELD_SLEEP_AllBinaryGameCanvas = 100;
    }
    

    AllBinaryGameCanvas@ jinit_AllBinaryGameCanvas(CommandListener@ commandListener, AllBinaryGameLayerManager@ gameLayerManager, HighScoresFactoryInterface@ highScoresFactoryInterface, BasicBuildGameInitializerFactory@ gameInitializationInterfaceFactoryInterface, bool buffered)
    {
        this.jinit_RunnableCanvas(commandListener, CanvasStrings::getInstance().EMPTY_CHILD_NAME_LIST, true);
        this.jfields_AllBinaryGameCanvas();
        @this.highScoresHelper = highScoresFactoryInterface.createHighScoresHelper();
        @this.gameInitializationInterfaceFactoryInterface_AllBinaryGameCanvas = gameInitializationInterfaceFactoryInterface;
        this.init(gameLayerManager, buffered);
        @this.highScoresFactoryInterface_AllBinaryGameCanvas = highScoresFactoryInterface;
        if (this.gameLayerManager.getGameInfo().getGameType() is this.gameTypeFactory.BOT || this.gameLayerManager.getGameInfo().getGameType() is this.gameTypeFactory.NONE) {
            @this.gameBehavior_AllBinaryGameCanvas = DemoGameBehavior::getInstance();
            @this.menuBehavior_AllBinaryGameCanvas = BaseMenuBehavior::getInstance();
        } else {
            @this.gameBehavior_AllBinaryGameCanvas = BaseGameBehavior::getInstance();
            @this.menuBehavior_AllBinaryGameCanvas = this.getInGameMenuBehavior();
        }
        this.initPopupMenu();
        this.initMenu();
        this.initSpecialPaint();
        DisplayChangeEventHandler::getInstance().addListenerInterface(this);
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        try {
            Font@ font = graphics.getFont();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(MyFontProcessor::defaultCharWidth(font)).append(this.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.fontHeightP = font.getHeight();
            this.myFormUtil.updateMeasurement(graphics);
            Rectangle@ popupMenuRectangle = this.myFormUtil.getPopupMenuRectangle();
            BasicPopupMenuPaintable@ basicPopupMenuPaintable = (cast<BasicPopupMenuPaintable>(this.getOpenMenuPaintable()));
            basicPopupMenuPaintable.init(popupMenuRectangle);
            if (this.getPopupMenuInputProcessor() !is NoMenuInputProcessor::getInstance()) {
                PopupMenuInputProcessor@ popupMenuInputProcessor = (cast<PopupMenuInputProcessor>(this.getPopupMenuInputProcessor()));
                popupMenuInputProcessor.init(popupMenuRectangle);
            }
            @this.myFontProcessor_AllBinaryGameCanvas = MyFontProcessor::getInstance();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    BaseMenuBehavior@ getInGameMenuBehavior()
    {
        return InGameMenuBehavior::getInstance();
    }
    

    void setCurrentThread()
    {
        if (J2MEUtil::isHTML()) {
            RunnableCanvas::setCurrentThreadFake();
        } else {
            RunnableCanvas::setCurrentThread();
        }
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onDisplayChangeEvent(DisplayChangeEvent@ displayChangeEvent)
    {
        try {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings.START).append(DisplayInfoSingleton::getInstance().toString()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            @this.myFontProcessor_AllBinaryGameCanvas = this.updateMyFontProcessor_AllBinaryGameCanvas;
            this.menuBehavior_AllBinaryGameCanvas.onDisplayChangeEvent(this, displayChangeEvent);
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
            else { jthrow(jex1); }
        }
    }
    

    void updateMenuFromEvent(DisplayChangeEvent@ displayChangeEvent)
    {
        FormType@ formType = FormTypeFactory::getInstance().getFormType();
        Rectangle@ rectangle = this.formUtil.createFormRectangle();
        this.menuForm_AllBinaryGameCanvas.init(rectangle, formType);
        if (this.currentTouchInputFactory_AllBinaryGameCanvas !is NoButtonsTouchInputFactory::getInstance()) {
            this.touchButtonFactory.toggle(this.isPaused(), this.currentTouchInputFactory_AllBinaryGameCanvas.getList());
        }
        @this.myFontProcessor_AllBinaryGameCanvas = this.updateMyFontProcessor_AllBinaryGameCanvas;
    }
    

    void processSleep()
    {
        RunnableCanvas::processSleep();
        if (AllBinaryMediaManager::update()) {
            if (!this.primaryPlayerQueue_AllBinaryGameCanvas.process()) {
                this.secondaryPlayerQueue_AllBinaryGameCanvas.process();
            }
        }
        if (this.menuInputProcessor_AllBinaryGameCanvas.processInputList() != -1) {
            this.runnableCanvasRefreshHelper.process();
        }
    }
    

    void initPopupMenu()
    {
        if (this.popupMenuInputProcessor_AllBinaryGameCanvas is NoMenuInputProcessor::getInstance()) {
            Features@ features = Features::getInstance();
            Rectangle@ popupMenuRectangle = this.myFormUtil.getPopupMenuRectangle();
            if (features.isFeature(this.touchFeatureFactory.TOUCH_ENABLED)) {
                this.setOpenMenuPaintable(BasicPopupMenuPaintable().jinit_BasicPopupMenuPaintable(popupMenuRectangle, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor()));
                this.setPopupMenuInputProcessor(PopupMenuInputProcessor().jinit_PopupMenuInputProcessor(BasicArrayListD().jinit_BasicArrayListD(), -1, this, popupMenuRectangle));
            }
        } else {
        }
    }
    

    void initMenu()
    {
        try {
            this.menuBehavior_AllBinaryGameCanvas.initMenu(this);
        } catch {
            Throwable@ jex2 = jcatch();
            if (cast<Exception>(jex2) !is null) {
                Exception@ e = cast<Exception>(jex2);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "initMenu", e);
            }
            else { jthrow(jex2); }
        }
    }
    

    void initMenu2()
    {
        this.closeMenu();
        FormType@ formType = FormTypeFactory::getInstance().getFormType();
        GameLimitedCommandTextItemArrayFactory@ gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory::getInstance();
        CommandTextItemArrayFactory@ commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory();
        ABCustomItem@[]@ items = commandTextItemArrayFactory.getInstance(this.getCommandStack(), this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        Rectangle@ rectangle = this.formUtil.createFormRectangle();
        this.setMenuForm(CommandCurrentSelectionFormFactory::getInstance(StringUtil::getInstance().EMPTY_STRING, items, rectangle, formType, 25, false, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor()));
        ScrollSelectionForm@ scrollSelectionForm = this.getMenuForm();
        Features@ features = Features::getInstance();
        if (features.isFeature(this.touchFeatureFactory.TOUCH_ENABLED)) {
            @this.mainMenuInputProcessor_AllBinaryGameCanvas = PopupCommandFormInputProcessor().jinit_PopupCommandFormInputProcessor(BasicArrayListD().jinit_BasicArrayListD(), -1, this, scrollSelectionForm, cast<PopupMenuInputProcessor>(this.getPopupMenuInputProcessor()));
        } else {
        }
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor());
        if (scrollSelectionForm !is ScrollSelectionFormNoneFactory::getInstance()) {
            this.setFormPaintable(FormPaintable().jinit_FormPaintable(scrollSelectionForm));
        } else {
        }
        this.closeMenu();
    }
    

    void updateMenu()
    {
        try {
            this.menuBehavior_AllBinaryGameCanvas.updateMenu(this);
        } catch {
            Throwable@ jex3 = jcatch();
            if (cast<Exception>(jex3) !is null) {
                Exception@ e = cast<Exception>(jex3);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "initMenu", e);
            }
            else { jthrow(jex3); }
        }
    }
    

    void updateMenu2()
    {
        ScrollSelectionForm@ scrollSelectionForm = this.getMenuForm();
        scrollSelectionForm.deleteAll();
        GameLimitedCommandTextItemArrayFactory@ gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory::getInstance();
        CommandTextItemArrayFactory@ commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory();
        ABCustomItem@[]@ items = commandTextItemArrayFactory.getInstance(this.getCommandStack(), this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        int size = int(items.length());
        for (int index = 0; index < size; index++) {
            scrollSelectionForm.append(items[index]);
        }
        FormType@ formType = FormTypeFactory::getInstance().getFormType();
        Rectangle@ rectangle = this.formUtil.createFormRectangle();
        scrollSelectionForm.init(rectangle, formType);
    }
    

    void pause()
    {
        this.gameBehavior_AllBinaryGameCanvas.pause(this);
        this.closeMenu();
        RunnableCanvas::pause();
        this.touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil::getInstance().getImmutableInstance());
        this.tsUtil.gc();
    }
    

    void unPause()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.UNPAUSE);
        this.closeMenu();
        this.tsUtil.gc();
        RunnableCanvas::unPause();
        this.touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil::getInstance().getImmutableInstance());
        this.gameBehavior_AllBinaryGameCanvas.unPause(this);
    }
    

    bool isPausable()
    {
        if (CurrentDisplayableFactory::getInstance().getUsedRunnable() is NullWaitGameRunnable::getInstance()) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void popupMenu()
    {
        this.menuBehavior_AllBinaryGameCanvas.popupMenu(this);
    }
    

    void popupMenu2()
    {
        this.primaryPlayerQueue_AllBinaryGameCanvas.add(SelectSound::getInstance());
        this.setMenuPaintable(this.getFormPaintable());
        this.setMenuInputProcessor(this.mainMenuInputProcessor_AllBinaryGameCanvas);
        this.basicMotionGesturesHandler_AllBinaryGameCanvas.addListenerInterface(this.mainMenuInputProcessor_AllBinaryGameCanvas);
        this.gameKeyEventHandler_AllBinaryGameCanvas.addListener(this.mainMenuInputProcessor_AllBinaryGameCanvas);
    }
    

    void toggleMenu()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.TOGGLE_MENU);
        if (this.getMenuPaintable() is this.getOpenMenuPaintable()) {
            this.pause();
            this.updateMenu();
            this.popupMenu();
        } else if (this.getMenuPaintable() is this.getFormPaintable()) {
            this.primaryPlayerQueue_AllBinaryGameCanvas.add(SelectSound::getInstance());
            this.unPause();
        }
    }
    

    void closeMenu()
    {
        this.menuBehavior_AllBinaryGameCanvas.closeMenu(this);
    }
    

    void closeMenu2()
    {
        this.setMenuPaintable(this.getOpenMenuPaintable());
        this.basicMotionGesturesHandler_AllBinaryGameCanvas.removeListener(this.mainMenuInputProcessor_AllBinaryGameCanvas);
        this.gameKeyEventHandler_AllBinaryGameCanvas.removeListener(this.mainMenuInputProcessor_AllBinaryGameCanvas);
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor());
    }
    

    void open()
    {
        this.basicMotionGesturesHandler_AllBinaryGameCanvas.addListenerInterface(this.menuInputProcessor_AllBinaryGameCanvas);
        this.gameKeyEventHandler_AllBinaryGameCanvas.addListener(this.menuInputProcessor_AllBinaryGameCanvas);
    }
    

    void close()
    {
        this.basicMotionGesturesHandler_AllBinaryGameCanvas.removeListener(this.menuInputProcessor_AllBinaryGameCanvas);
        this.gameKeyEventHandler_AllBinaryGameCanvas.removeListener(this.menuInputProcessor_AllBinaryGameCanvas);
        this.primaryPlayerQueue_AllBinaryGameCanvas.clear();
        this.secondaryPlayerQueue_AllBinaryGameCanvas.clear();
    }
    

    void processorInit()
    {
        this.setMainStateProcessor(Processor::getInstance());
        this.setProcessGameProcessorInit();
    }
    

    void setProcessGameProcessorInit()
    {
        this.setProcessGameProcessor(GameProcessor().jinit_GameProcessor(this));
    }
    

    void initSpecialPaint()
    {
        this.menuBehavior_AllBinaryGameCanvas.initSpecialPaint(this);
    }
    

    void init(AllBinaryGameLayerManager@ gameLayerManager, bool buffered)
    {
        this.gameStateTimeHelper_AllBinaryGameCanvas.setStartTimeTNT();
        this.setHighScoreSubmitted(false);
        this.setLayerManager(gameLayerManager);
        if (!buffered) {
            string BUFF_MESSAGE = "XXX Not Buffering Causes Concurrency Issues XXX";
            this.logUtil.putF(BUFF_MESSAGE, this, this.commonStrings.CONSTRUCTOR);
        } else {
            jthrow(Exception().jinit_Exception("Buffering is disabled"));
        }
        this.setGameInputProcessor(Processor::getInstance());
        Features@ features = Features::getInstance();
        if (features.isFeature(GameFeatureFactory::getInstance().CHEATING)) {
            this.isCheating_AllBinaryGameCanvas = true;
            @this.cheatProcessor_AllBinaryGameCanvas = CheatGameInputProcessor().jinit_CheatGameInputProcessor(this);
            this.gameKeyEventHandler_AllBinaryGameCanvas.addListener(this.cheatProcessor_AllBinaryGameCanvas);
        } else {
            this.isCheating_AllBinaryGameCanvas = false;
            @this.cheatProcessor_AllBinaryGameCanvas = NoPlayerGameInput::getInstance();
        }
        @this.realEndGameProcessor_AllBinaryGameCanvas = EndGameProcessor().jinit_EndGameProcessor(this);
        this.setEndGameProcessor(Processor::getInstance());
        @this.realStartIntermissionProcessor_AllBinaryGameCanvas = StartIntermissionProcessor().jinit_StartIntermissionProcessor(this);
        @this.startIntermissionProcessor_AllBinaryGameCanvas = Processor::getInstance();
        this.setEndGameStatePaintable(EndGamePaintable().jinit_EndGamePaintable(this));
        this.setEndGamePaintable(NullPaintable::getInstance());
        this.setIntermissionPaintable(NullPaintable::getInstance());
        this.getStartIntermissionInterface().setListener(this);
    }
    

    void notifyIntermission(bool enable)
    {
        if (enable) {
            @this.startIntermissionProcessor_AllBinaryGameCanvas = this.realStartIntermissionProcessor_AllBinaryGameCanvas;
        } else {
            @this.startIntermissionProcessor_AllBinaryGameCanvas = Processor::getInstance();
        }
        if (enable) {
            this.setIntermissionPaintable(this.getStartIntermissionPaintable());
        } else {
            this.setIntermissionPaintable(NullPaintable::getInstance());
        }
    }
    

    void mediaInit()
    {
        ForcedLogUtil::log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    void initConfigurable(AbeClientInformationInterface@ abeClientInformation)
    {
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        progressCanvas.addNormalPortion(50, "Setting Configurables");
        GameInitializationUtil::getInstance().initGame(abeClientInformation, this, this.gameInitializationInterfaceFactoryInterface_AllBinaryGameCanvas);
        GameFeatureFactory@ gameFeatureFactory = GameFeatureFactory::getInstance();
        ChangedGameFeatureListener@ changedGameFeatureListener = ChangedGameFeatureListener::getInstance();
        if (changedGameFeatureListener.isChangedFeature(gameFeatureFactory.SOUND)) {
            Features@ features = Features::getInstance();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Sound Changing To: ").appendboolean(features.isFeature(gameFeatureFactory.SOUND)).toString(), this, "initConfigurable");
            this.mediaInit();
            changedGameFeatureListener.remove(gameFeatureFactory.SOUND);
        }
        SensorFeatureFactory@ sensorFeatureFactory = SensorFeatureFactory::getInstance();
        if (changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.ORIENTATION_SENSORS) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.NO_ORIENTATION) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            changedGameFeatureListener.remove(sensorFeatureFactory.NO_ORIENTATION);
            changedGameFeatureListener.remove(sensorFeatureFactory.ORIENTATION_SENSORS);
            changedGameFeatureListener.remove(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS);
        }
        ResourceLoadingLevelFactory@ resourceLoadingLevelFactory = ResourceLoadingLevelFactory::getInstance();
        this.loadResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_GAME);
    }
    

    void initApp(AbeClientInformationInterface@ abeClientInformation)
    {
        this.initConfigurable(abeClientInformation);
        this.processorInit();
        this.sensorGameUpdateProcessor_AllBinaryGameCanvas.process(this.gameLayerManager);
        this.sensorGameUpdateProcessor_AllBinaryGameCanvas.sendNotifications(this.gameLayerManager);
        this.initTouch();
    }
    

    void initTouch()
    {
        GameInitializedEvent@ gameInitializedEvent = GameInitializationUtil::getInstance().EVENT;
        ResourceLoadingLevelFactory@ resourceLoadingLevelFactory = ResourceLoadingLevelFactory::getInstance();
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_TOUCH);
        GameInitializedEventHandler::getInstance().fireEvent(gameInitializedEvent);
        this.touchButtonFactory.defaultList();
        this.updateTouch();
        this.postInitTouch();
    }
    

    void updateCurrentTouchInputFactory(BaseTouchInput@ nextTouchInput)
    {
        if (nextTouchInput !is this.currentTouchInputFactory_AllBinaryGameCanvas) {
            @this.currentTouchInputFactory_AllBinaryGameCanvas = nextTouchInput;
            PreLogUtil::put(this.currentTouchInputFactory_AllBinaryGameCanvas.toString(), this, this.gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY);
            this.touchButtonFactory.toggle(this.isPaused(), this.currentTouchInputFactory_AllBinaryGameCanvas.getList());
        }
    }
    

    void updateTouch()
    {
        this.gameBehavior_AllBinaryGameCanvas.updateTouch(this);
    }
    

    void updateTouch2()
    {
        Features@ features = Features::getInstance();
        if (features.isFeature(this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            if (this.gameLayerManager.getGameInfo().getCurrentLevel() - this.getStartLevel() == 1) {
                this.setTouchPaintableP(NullPaintable::getInstance());
            }
        }
    }
    

    void postInitTouch()
    {
        this.setTouchButtonsPaintable(TouchButtonsPaintableFactory::getInstance(this.gameLayerManager.getForegroundBasicColor()));
        this.updateScreenButtonPaintable();
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        this.removeAllCommands();
        this.addCommands();
        this.setCommandListener(cmdListener);
    }
    

    void addCommands()
    {
        GameCommandsFactory@ gameCommandsFactory = GameCommandsFactory::getInstance();
        MyCommandsFactory@ myCommandsFactory = MyCommandsFactory::getInstance();
        if (DebugFactory::getInstance() !is NoDebug::getInstance()) {
            this.addCommand(gameCommandsFactory.START_TRACE);
        }
        this.addCommand(gameCommandsFactory.RESTART_COMMAND);
        this.addCommand(myCommandsFactory.PAUSE_COMMAND);
        this.addCommand(gameCommandsFactory.QUIT_COMMAND);
        bool isOverScan = OperatingSystemFactory::getInstance().getOperatingSystemInstance().isOverScan();
        if (J2MEUtil::isHTML()) {
        } else if (SWTUtil::isSWT) {
        } else if (!isOverScan) {
            if (TouchScreenFactory::getInstance().isTouch() && InGameFeatures().jinit_InGameFeatures().isAny()) {
                this.addCommand(InGameOptionsForm::DISPLAY);
            }
            this.addCommand(gameCommandsFactory.SAVE);
            this.addCommand(gameCommandsFactory.DISPLAY_LOAD_FORM);
        }
    }
    

    void itemStateChanged(Item@ item)
    {
        try {
            string itemLabel = item.getLabel();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonLabels.ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged");
            if ((cast<ChoiceGroup>(item) !is null)) {
                GameFeatureUtil@ gameFeatureUtil = GameFeatureUtil::getInstance();
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup(cast<ChoiceGroup>(item));
                } else {
                    gameFeatureUtil.updateMultiple(cast<ChoiceGroup>(item));
                }
            }
            this.sensorGameUpdateProcessor_AllBinaryGameCanvas.process(this.gameLayerManager);
            this.updateTouch();
            this.updateScreenButtonPaintable();
            this.sensorGameUpdateProcessor_AllBinaryGameCanvas.sendNotifications(this.gameLayerManager);
        } catch {
            Throwable@ jex4 = jcatch();
            if (cast<Exception>(jex4) !is null) {
                Exception@ e = cast<Exception>(jex4);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "itemStateChanged", e);
            }
            else { jthrow(jex4); }
        }
    }
    

    void updateScreenButtonPaintable()
    {
        this.gameBehavior_AllBinaryGameCanvas.updateScreenButtonPaintable(this);
    }
    

    void updateScreenButtonPaintable2()
    {
        Features@ features = Features::getInstance();
        if (features.isFeature(this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(this.getTouchButtonsPaintable());
            this.setStartLevel(this.gameLayerManager.getGameInfo().getCurrentLevel());
        } else if (features.isFeature(this.touchFeatureFactory.SHOW_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(this.getTouchButtonsPaintable());
        } else if (features.isFeature(this.touchFeatureFactory.HIDE_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(NullPaintable::getInstance());
        } else {
            this.setTouchPaintableP(NullPaintable::getInstance());
        }
    }
    

    AllBinaryGameLayerManager@ getLayerManager()
    {
        return this.gameLayerManager;
    }
    

    void setLayerManager(AllBinaryGameLayerManager@ layerManager)
    {
        @this.gameLayerManager = layerManager;
    }
    

    bool isGameOver()
    {
        return this.gameOver_AllBinaryGameCanvas;
    }
    

    void setGameOver(bool gameOver)
    {
        this.gameOver_AllBinaryGameCanvas = gameOver;
    }
    

    void processGameOver()
    {
        PreLogUtil::put(this.commonStrings.START, this, this.gameStrings.SET_GAME_OVER);
        this.setGameOver(true);
        this.removePauseCommand();
        this.setGameState(this.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
        this.setEndGamePaintable(this.getEndGameStatePaintable());
    }
    

    bool isHighScoreSubmitted()
    {
        return this.highScoreSubmitted_AllBinaryGameCanvas;
    }
    

    void setHighScoreSubmitted(bool highScoreSubmitted)
    {
        this.highScoreSubmitted_AllBinaryGameCanvas = highScoreSubmitted;
        if (highScoreSubmitted) {
            this.highScoresHelper.setSelectedHighScores(NullHighScoresSingletonFactory::getInstance());
        }
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("isHighScoreSubmitted: ").appendboolean(highScoreSubmitted).toString(), this, "setHighScoreSubmitted");
    }
    

    GameState@ getGameState()
    {
        return this.gameState_AllBinaryGameCanvas;
    }
    

    void setGameState(GameState@ gameState)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.gameStrings.GAME_STATE).append(this.stringUtil.toString(gameState)).toString(), this, this.gameStrings.SET_GAME_STATE);
        @this.gameState_AllBinaryGameCanvas = gameState;
        this.gameStateTimeHelper_AllBinaryGameCanvas.setStartTimeTNT();
        this.updateEndGameProcessor();
        this.updateGameKeyEventProcessor();
        this.gameBehavior_AllBinaryGameCanvas.setGameState(this);
    }
    

    void updateGameState()
    {
        GameAdState@ gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.processAdState(this.gameState_AllBinaryGameCanvas, this.gameLayerManager.getGameInfo().getGameType());
        if (this.gameState_AllBinaryGameCanvas !is this.gameStateFactory.PLAYING_GAME_STATE) {
            gameAdState.processPageAdState();
        }
    }
    

    void updateGameKeyEventProcessor()
    {
        if (this.getGameState() !is this.gameStateFactory.PLAYING_GAME_STATE || this.isCheating_AllBinaryGameCanvas) {
        } else {
        }
    }
    

    void removeAllGameKeyInputListenersOnBuild()
    {
        this.removeAllGameKeyInputListeners();
    }
    

    void removeAllGameKeyInputListeners()
    {
        this.gameBehavior_AllBinaryGameCanvas.removeAllGameKeyInputListeners(this);
    }
    

    void removeAllGameKeyInputListeners2()
    {
        this.logUtil.putF("Remove PlayerInput Listeners", this, "removeAllGameKeyInputListeners");
        for (int index = this.localPlayerGameInputList_AllBinaryGameCanvas.size() - 1; index >= 0; index--) {
            PlayerGameInput@ playerGameInput = cast<PlayerGameInput>(this.localPlayerGameInputList_AllBinaryGameCanvas.get(index));
            this.removeKeyInputListener(playerGameInput);
            playerGameInput.removeNonAIInputGameKeyEvents();
        }
    }
    

    void removeKeyInputListener(PlayerGameInput@ playerGameInput)
    {
        this.gameKeyEventHandler_AllBinaryGameCanvas.removeListener(playerGameInput);
    }
    

    void updateEndGameProcessor()
    {
        this.gameBehavior_AllBinaryGameCanvas.updateEndGameProcessor(this);
    }
    

    void updateEndGameProcessor2()
    {
        if (this.getGameState() is this.gameStateFactory.SHOW_END_RESULT_GAME_STATE || this.getGameState() is this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) {
            this.setEndGameProcessor(this.realEndGameProcessor_AllBinaryGameCanvas);
        } else {
            this.setEndGameProcessor(Processor::getInstance());
        }
    }
    

    void buildGameInit(bool isPortion)
    {
    }
    

    void cleanupGame()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLEANUP);
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        progressCanvas.addNormalPortion(10, "Cleaning Up");
        this.primaryPlayerQueue_AllBinaryGameCanvas.clear();
        this.secondaryPlayerQueue_AllBinaryGameCanvas.clear();
        GameLevelDisplayChangeEventListenersFactory::getInstance().clear();
    }
    

    void loadResourceLoadingLevel(ResourceLoadingLevel@ resourceLoadingLevel)
    {
        GameInitializedEvent@ gameInitializedEvent = GameInitializationUtil::getInstance().EVENT;
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel);
        GameInitializedEventHandler::getInstance().fireEvent(gameInitializedEvent);
    }
    

    void loadResources(int level)
    {
        GameInitializedEvent@ gameInitializedEvent = GameInitializationUtil::getInstance().EVENT;
        gameInitializedEvent.setLevel(level);
        GameInitializedEventHandler::getInstance().fireEvent(gameInitializedEvent);
    }
    

    void updateColor()
    {
    }
    

    void buildGame(int portion)
    {
        this.screenCapture.endRecording();
        this.screenCapture.startRecording();
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        Features@ features = Features::getInstance();
        progressCanvas.addNormalPortion(portion, "Generic Build");
        this.removeAllGameKeyInputListenersOnBuild();
        this.updateTouch();
        progressCanvas.addNormalPortion(portion, "High Scores");
        this.highScoresFactoryInterface_AllBinaryGameCanvas.fetchHighScores(this.gameLayerManager.getGameInfo(), this.highScoresHelper);
        this.setHighScoresPaintable(NullPaintable::getInstance());
        progressCanvas.addNormalPortion(portion, "Finishing.");
        this.getEndGameInfoP().update(this.getLayerManager().getGameInfo(), this);
        this.isSingleKeyRepeatableProcessing_AllBinaryGameCanvas = features.isFeature(InputFeatureFactory::getInstance().SINGLE_KEY_REPEAT_PRESS);
        this.setGameOver(false);
        progressCanvas.addNormalPortion(portion, "Finishing..");
        this.updateColor();
        this.getStartIntermissionPaintable().update();
        if (!this.isRunningInAnotherThread()) {
            return;
        }
        progressCanvas.addNormalPortion(portion, "Finishing...");
        if (this.isMainCanvas() || !this.isInitialized()) {
            if (features.isFeature(MainFeatureFactory::getInstance().LOAD_ONDEMAND)) {
                if (this.getCustomCommandListener() !is null) {
                    progressCanvas.end();
                }
            } else {
                progressCanvas.end();
            }
            this.setInitialized(true);
        }
        if (this.getCustomCommandListener() is NullCommandListener::NULL_COMMAND_LISTENER) {
            this.logUtil.putF("Show Game Paintable in DemoCanvas Thread", this, this.BUILD_GAME);
            this.gameCanvasStartListener_AllBinaryGameCanvas.showGamePaintable();
        } else {
            this.logUtil.putF("No GameCanvasStartListener", this, this.BUILD_GAME);
        }
        this.colorFillPaintable.setBasicColorP(this.gameLayerManager.getBackgroundBasicColor());
        this.gameBehavior_AllBinaryGameCanvas.buildGame(this);
    }
    

    void buildGame2()
    {
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(this.localPlayerGameInputList_AllBinaryGameCanvas.size()).toString(), this, this.BUILD_GAME);
        PlayerGameInput@ playerGameInput;
        for (int index = this.localPlayerGameInputList_AllBinaryGameCanvas.size() - 1; index >= 0; index--) {
            @playerGameInput = cast<PlayerGameInput>(this.localPlayerGameInputList_AllBinaryGameCanvas.get(index));
            PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput.toString()).toString(), this, this.BUILD_GAME);
            playerGameInput.removeNonAIInputGameKeyEvents();
            this.addKeyInputListener(playerGameInput);
        }
    }
    

    void addKeyInputListener(PlayerGameInput@ playerGameInput)
    {
        GameKeyEventHandler::getInstance().addListenerForPlayer(playerGameInput, playerGameInput.getPlayerInputId());
    }
    

    void setGameCanvasStartListener(DemoPaintableInterface@ gameCanvasStartListener)
    {
        @this.gameCanvasStartListener_AllBinaryGameCanvas = gameCanvasStartListener;
    }
    

    void loadState()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.LOAD);
        ABHashtable@ hashtable = this.getLoadStateHashtable();
        if (hashtable !is null && hashtable.size() > 0) {
            string levelAsString = jstringOf(hashtable.get(jbox(GameInfo::LEVEL_NAME)));
            int level = Integer::valueOf(levelAsString).intValue();
            GameInfo@ gameInfo = this.gameLayerManager.getGameInfo();
            gameInfo.setCurrentLevel(level);
        }
    }
    

    ABHashtable@ getLoadStateHashtable()
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString(this.hashtable_AllBinaryGameCanvas)).toString(), this, "getLoadStateHashtable");
        return this.hashtable_AllBinaryGameCanvas;
    }
    

    void setLoadStateHashtable(ABHashtable@ hashtable)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString(hashtable)).toString(), this, "setLoadStateHashtable");
        @this.hashtable_AllBinaryGameCanvas = hashtable;
    }
    

    ABHashtable@ getCurrentStateHashtable()
    {
        ABHashtable@ hashtable = this.stdUtil.createHashtable();
        int level = this.gameLayerManager.getGameInfo().getCurrentLevel();
        hashtable.put(GameInfo::LEVEL_NAME, Integer::toString(level));
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("End: ").append(this.stringUtil.toString(hashtable)).toString(), this, "getCurrentStateHashtable");
        return hashtable;
    }
    

    void paintGameOver(Graphics@ graphics)
    {
        ForcedLogUtil::log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    void draw(Graphics@ graphics)
    {
        this.colorFillPaintable.paint(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.gameLayerManager.getForegroundBasicColor());
        this.gameSpecificPaintable.paint(graphics);
    }
    

    void clear(Graphics@ graphics)
    {
        this.colorFillPaintable.paint(graphics);
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_AllBinaryGameCanvas.process(graphics);
        this.baseGameStatistics_AllBinaryGameCanvas.nextRefresh();
        this.draw(graphics);
        this.menuPaintable_AllBinaryGameCanvas.paint(graphics);
        this.progressPaintable_AllBinaryGameCanvas.paint(graphics);
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
    

    void processEndLevelIntermissionGameState()
    {
    }
    

    void nonBotPaint(Graphics@ graphics)
    {
        this.endGamePaintable_AllBinaryGameCanvas.paint(graphics);
        this.intermissionPaintable_AllBinaryGameCanvas.paint(graphics);
        this.paintIntermission(graphics);
        this.touchPaintable.paint(graphics);
    }
    

    void paintIntermission(Graphics@ graphics)
    {
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
        this.inputProcessor_AllBinaryGameCanvas.keyPressedByDevice(keyCode, deviceId);
    }
    

    void keyRepeatedByDevice(int keyCode, int deviceId)
    {
        if (this.isSingleKeyRepeatableProcessing_AllBinaryGameCanvas) {
            this.inputProcessor_AllBinaryGameCanvas.keyPressedByDevice(keyCode, deviceId);
        }
    }
    

    void keyReleasedByDevice(int keyCode, int deviceId)
    {
        this.inputProcessor_AllBinaryGameCanvas.keyReleasedByDevice(this, keyCode, deviceId);
    }
    

    void handleRawKey(int keyCode, int deviceId, bool repeated)
    {
    }
    

    int endProgress(bool isProgress)
    {
        int portion = 30;
        if (isProgress && this.isMainCanvas()) {
            MyCommandsFactory@ myCommandsFactory = MyCommandsFactory::getInstance();
            ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
            progressCanvas.start();
            this.getCustomCommandListener().commandAction(myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
            portion = 4;
        }
        return portion;
    }
    

    void processPlayingGame()
    {
        this.cheatProcessor_AllBinaryGameCanvas.update();
        this.sensorGameUpdateProcessor_AllBinaryGameCanvas.getInputSensor().update();
        this.gameInputProcessor_AllBinaryGameCanvas.process();
        this.gameLayerManager.process();
        this.startIntermissionProcessor_AllBinaryGameCanvas.process();
    }
    

    void threadInit()
    {
    }
    

    void processGame()
    {
        RunnableCanvas::process();
        if (AllBinaryMediaManager::update()) {
            if (!this.primaryPlayerQueue_AllBinaryGameCanvas.process()) {
                this.secondaryPlayerQueue_AllBinaryGameCanvas.process();
            }
        }
        this.mainStateProcessor_AllBinaryGameCanvas.process();
        this.menuInputProcessor_AllBinaryGameCanvas.processInputList();
        this.endGameProcessor_AllBinaryGameCanvas.process();
        this.baseGameStatistics_AllBinaryGameCanvas.nextFrame();
    }
    

    void notifyDonePainting()
    {
        {
            this.threadObjectUtil.notifyObject(this);
        }
    }
    

    void shouldWait()
    {
        Features@ features = Features::getInstance();
        if (AndroidUtil::isAndroid()) {
        } else if (features.isFeature(this.openGLFeatureFactory.OPENGL_2D)) {
        } else {
            if (features.isDefault(this.openGLFeatureFactory.OPENGL)) {
                OpenGLImageSpecificFactory@ openGLImageSpecificFactory = OpenGLImageSpecificFactory::getInstance();
                while (openGLImageSpecificFactory.updating) {
                    Thread::sleep(this.YIELD_SLEEP_AllBinaryGameCanvas);
                }
            }
        }
    }
    

    void run()
    {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
            progressCanvas.addNormalPortion(50, "Game Thread");
            this.setCurrentThread();
            this.setRunning(true);
            if (this.getCustomCommandListener() is NullCommandListener::NULL_COMMAND_LISTENER) {
                Thread::sleep(this.YIELD_SLEEP_AllBinaryGameCanvas);
            }
            this.shouldWait();
            this.threadInit();
            if (this.getCustomCommandListener() is NullCommandListener::NULL_COMMAND_LISTENER) {
                Thread::sleep(this.YIELD_SLEEP_AllBinaryGameCanvas);
            }
            this.open();
            GameAdState@ gameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.init();
            gameAdState.setGameIsReady(true);
            this.gameBehavior_AllBinaryGameCanvas.run(this);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch {
            Throwable@ jex5 = jcatch();
            if (cast<Exception>(jex5) !is null) {
                Exception@ e = cast<Exception>(jex5);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            }
            else { jthrow(jex5); }
        }
    }
    

    void run2()
    {
        Features@ features = Features::getInstance();
        if (features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil::isHTML()) {
            if (features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                this.logUtil.putF(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), this, this.commonStrings.RUN);
            }
            if (J2MEUtil::isHTML()) {
                this.logUtil.putF(GraphicsStrings::getInstance().HTML, this, this.commonStrings.RUN);
            }
            CurrentDisplayableFactory@ currentDisplayableFactory = CurrentDisplayableFactory::getInstance();
            currentDisplayableFactory.setRunnable(this.gameRunnable);
            currentDisplayableFactory.setDisplayable(this);
            OpenGLThreadUtil::getInstance().onResume();
        } else if (features.isDefault(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) {
            this.logUtil.putF(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName(), this, this.commonStrings.RUN);
            OpenGLThreadUtil::getInstance().onResume();
            while (this.isRunning()) {
                this.run3();
            }
            this.end();
        } else {
            this.logUtil.putF("this thread", this, this.commonStrings.RUN);
            while (this.isRunning()) {
                this.run3();
            }
            this.end();
        }
    }
    

    void run3()
    {
        this.loopTimeHelper.setStartTime(this.gameTickTimeDelayHelper_AllBinaryGameCanvas.setStartTime());
        this.gameTickDisplayInfoSingleton_AllBinaryGameCanvas.update();
        this.processGame();
        this.processLoopSleep();
    }
    

    void setRunning(bool running)
    {
        RunnableCanvas::setRunning(running);
        try {
            Features@ features = Features::getInstance();
            if (running) {
            } else {
                if (features.isDefault(this.openGLFeatureFactory.OPENGL) || SWTUtil::isSWT) {
                    if (this.gameLayerManager.getGameInfo().getGameType() !is this.gameTypeFactory.BOT) {
                        CurrentDisplayableFactory@ currentDisplayableFactory = CurrentDisplayableFactory::getInstance();
                        currentDisplayableFactory.clearRunnable();
                    }
                    this.end();
                }
            }
        } catch {
            Throwable@ jex6 = jcatch();
            if (cast<Exception>(jex6) !is null) {
                Exception@ e = cast<Exception>(jex6);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e);
            }
            else { jthrow(jex6); }
        }
    }
    

    void end()
    {
        this.screenCapture.endRecording();
        this.baseGameStatistics_AllBinaryGameCanvas.add(StringMaker().jinit_StringMaker().append(this.baseGameStatistics_AllBinaryGameCanvas.toString()).append(CommonSeps::getInstance().NEW_LINE).toString());
        this.baseGameStatistics_AllBinaryGameCanvas.init();
        this.gameKeyEventHandler_AllBinaryGameCanvas.removeListener(this.cheatProcessor_AllBinaryGameCanvas);
        this.close();
        this.removeAllGameKeyInputListeners();
        this.endGameThread();
    }
    

    void endGameThread()
    {
        DisplayChangeEventHandler::getInstance().removeListener(this);
        GameLevelDisplayChangeEventListenersFactory::getInstance().clear();
        GameAdState@ gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.notPlayingAdState();
    }
    

    HighScore@ createHighScore(int64 score)
    {
        GameInfo@ gameInfo = this.gameLayerManager.getGameInfo();
        return HighScore().jinit_HighScore(0, "NONE", GameInfo().jinit_GameInfo(gameInfo.getGameType(), gameInfo.getGameMode(), PlayerTypesFactory::getInstance().PLAYER_TYPE_ONE, 0, 0), score);
    }
    

    void setHighScore(AbeClientInformationInterface@ abeClientInformation, string name, int64 score, bool autoSubmit, bool isLast)
    {
        this.gameBehavior_AllBinaryGameCanvas.setHighScore(abeClientInformation, this, name, score, autoSubmit, isLast);
    }
    

    void setHighScore2(AbeClientInformationInterface@ abeClientInformation, string name, int64 score, bool autoSubmit, bool isLast)
    {
        HighScore@ highScore = this.createHighScore(score);
        HighScoreTextBox@ textBox = HighScoreTextBox().jinit_HighScoreTextBox(this.highScoresFactoryInterface_AllBinaryGameCanvas, this.highScoresHelper, abeClientInformation, this.gameLayerManager.getGameInfo(), this.getCustomCommandListener(), name, highScore, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        if (isLast) {
            this.getCustomCommandListener().commandAction(GameCommandsFactory::getInstance().SET_MENU_DISPLAYABLE, textBox);
        }
        if (autoSubmit) {
            SecondaryThreadPool::getInstance().runTask(SaveHighScoreRunnable().jinit_SaveHighScoreRunnable(isLast, textBox));
        }
    }
    

    TimeDelayHelper@ getGameStateTimeHelper()
    {
        return this.gameStateTimeHelper_AllBinaryGameCanvas;
    }
    

    void setInitialized(bool initialized)
    {
        this.initialized_AllBinaryGameCanvas = initialized;
    }
    

    bool isInitialized()
    {
        return this.initialized_AllBinaryGameCanvas;
    }
    

    int getSourceId()
    {
        return AllBinaryGameCanvas::id;
    }
    

    void setProgressPaintable(PaintableInterface@ paintable)
    {
        @this.progressPaintable_AllBinaryGameCanvas = paintable;
    }
    

    IntermissionInterface@ getStartIntermissionInterface()
    {
        return this.startIntermissionInterface_AllBinaryGameCanvas;
    }
    

    IntermissionInterface@ getEndLevelIntermissionInterface()
    {
        return this.endLevelIntermissionInterface_AllBinaryGameCanvas;
    }
    

    void setTouchPaintableP(Paintable@ paintable)
    {
        @this.touchPaintable = paintable;
    }
    

    Paintable@ getTouchPaintableP()
    {
        return this.touchPaintable;
    }
    

    void setEndGamePaintable(Paintable@ endGamePaintable)
    {
        @this.endGamePaintable_AllBinaryGameCanvas = endGamePaintable;
    }
    

    Paintable@ getEndGamePaintable()
    {
        return this.endGamePaintable_AllBinaryGameCanvas;
    }
    

    void setIntermissionPaintable(Paintable@ intermissionPaintable)
    {
        @this.intermissionPaintable_AllBinaryGameCanvas = intermissionPaintable;
    }
    

    Paintable@ getIntermissionPaintable()
    {
        return this.intermissionPaintable_AllBinaryGameCanvas;
    }
    

    EndGameInfo@ getEndGameInfoP()
    {
        return this.endGameInfo;
    }
    

    void setHighScoresPaintable(Paintable@ highScoresPaintable)
    {
        @this.highScoresPaintable_AllBinaryGameCanvas = highScoresPaintable;
    }
    

    Paintable@ getHighScoresPaintable()
    {
        return this.highScoresPaintable_AllBinaryGameCanvas;
    }
    

    HighScoresPaintable@ getRealHighScoresPaintable()
    {
        return this.realHighScoresPaintable_AllBinaryGameCanvas;
    }
    

    void clearPlayerGameInputList()
    {
        PlayerGameInput@ playerGameInput;
        for (int index = this.localPlayerGameInputList_AllBinaryGameCanvas.size() - 1; index >= 0; index--) {
            @playerGameInput = cast<PlayerGameInput>(this.localPlayerGameInputList_AllBinaryGameCanvas.get(index));
            this.gameKeyEventHandler_AllBinaryGameCanvas.removeListener(playerGameInput);
        }
        this.localPlayerGameInputList_AllBinaryGameCanvas.clear();
    }
    

    void addPlayerGameInput(PlayerGameInput@ playerGameInput)
    {
        this.localPlayerGameInputList_AllBinaryGameCanvas.add(playerGameInput);
    }
    

    void setMenuInputProcessor(BasicMenuInputProcessor@ menuInputProcessor)
    {
        @this.menuInputProcessor_AllBinaryGameCanvas = menuInputProcessor;
    }
    

    BasicMenuInputProcessor@ getMenuInputProcessor()
    {
        return this.menuInputProcessor_AllBinaryGameCanvas;
    }
    

    ScrollSelectionForm@ getMenuForm()
    {
        return this.menuForm_AllBinaryGameCanvas;
    }
    

    void setMenuForm(ScrollSelectionForm@ menuForm)
    {
        @this.menuForm_AllBinaryGameCanvas = menuForm;
    }
    

    int getStartLevel()
    {
        return this.startLevel_AllBinaryGameCanvas;
    }
    

    void setStartLevel(int startLevel)
    {
        this.startLevel_AllBinaryGameCanvas = startLevel;
    }
    

    void setTouchButtonsPaintable(Paintable@ touchButtonsPaintable)
    {
        @this.touchButtonsPaintable_AllBinaryGameCanvas = touchButtonsPaintable;
    }
    

    Paintable@ getTouchButtonsPaintable()
    {
        return this.touchButtonsPaintable_AllBinaryGameCanvas;
    }
    

    void setGameInputProcessor(Processor@ gameInputProcessor)
    {
        @this.gameInputProcessor_AllBinaryGameCanvas = gameInputProcessor;
    }
    

    Processor@ getGameInputProcessor()
    {
        return this.gameInputProcessor_AllBinaryGameCanvas;
    }
    

    void setEndGameProcessor(Processor@ endGameProcessor)
    {
        @this.endGameProcessor_AllBinaryGameCanvas = endGameProcessor;
    }
    

    Processor@ getEndGameProcessor()
    {
        return this.endGameProcessor_AllBinaryGameCanvas;
    }
    

    void setEndGameStatePaintable(Paintable@ endGameStatePaintable)
    {
        @this.endGameStatePaintable_AllBinaryGameCanvas = endGameStatePaintable;
    }
    

    Paintable@ getEndGameStatePaintable()
    {
        return this.endGameStatePaintable_AllBinaryGameCanvas;
    }
    

    void setNonBotPaintableP(Paintable@ nonBotPaintable)
    {
        @this.nonBotPaintable = nonBotPaintable;
    }
    

    Paintable@ getNonBotPaintableP()
    {
        return this.nonBotPaintable;
    }
    

    void setStartIntermissionPaintable(InitUpdatePaintable@ startIntermissionPaintable)
    {
        @this.startIntermissionPaintable_AllBinaryGameCanvas = startIntermissionPaintable;
    }
    

    InitUpdatePaintable@ getStartIntermissionPaintable()
    {
        return this.startIntermissionPaintable_AllBinaryGameCanvas;
    }
    

    void setMainStateProcessor(Processor@ mainStateProcessor)
    {
        @this.mainStateProcessor_AllBinaryGameCanvas = mainStateProcessor;
    }
    

    Processor@ getMainStateProcessor()
    {
        return this.mainStateProcessor_AllBinaryGameCanvas;
    }
    

    void setProcessGameProcessor(Processor@ processGameProcessor)
    {
        @this.processGameProcessor_AllBinaryGameCanvas = processGameProcessor;
    }
    

    Processor@ getProcessGameProcessor()
    {
        return this.processGameProcessor_AllBinaryGameCanvas;
    }
    

    void setOpenMenuPaintable(Paintable@ openMenuPaintable)
    {
        @this.openMenuPaintable_AllBinaryGameCanvas = openMenuPaintable;
    }
    

    Paintable@ getOpenMenuPaintable()
    {
        return this.openMenuPaintable_AllBinaryGameCanvas;
    }
    

    void setPopupMenuInputProcessor(BasicMenuInputProcessor@ popupMenuInputProcessor)
    {
        @this.popupMenuInputProcessor_AllBinaryGameCanvas = popupMenuInputProcessor;
    }
    

    BasicMenuInputProcessor@ getPopupMenuInputProcessor()
    {
        return this.popupMenuInputProcessor_AllBinaryGameCanvas;
    }
    

    SensorGameUpdateProcessor@ getSensorGameUpdateProcessor()
    {
        return this.sensorGameUpdateProcessor_AllBinaryGameCanvas;
    }
    

    InputProcessor@ getRawGameInputProcessor()
    {
        return this.rawGameInputProcessor_AllBinaryGameCanvas;
    }
    

    InputProcessor@ getRawInputProcessor()
    {
        return this.rawInputProcessor_AllBinaryGameCanvas;
    }
    

    void setInputProcessor(InputProcessor@ inputProcessor)
    {
        @this.inputProcessor_AllBinaryGameCanvas = inputProcessor;
    }
    

    InputProcessor@ getInputProcessor()
    {
        return this.inputProcessor_AllBinaryGameCanvas;
    }
    

    void setMenuPaintable(Paintable@ menuPaintable)
    {
        @this.menuPaintable_AllBinaryGameCanvas = menuPaintable;
    }
    

    Paintable@ getMenuPaintable()
    {
        return this.menuPaintable_AllBinaryGameCanvas;
    }
    

    void setFormPaintable(Paintable@ formPaintable)
    {
        @this.formPaintable_AllBinaryGameCanvas = formPaintable;
    }
    

    Paintable@ getFormPaintable()
    {
        return this.formPaintable_AllBinaryGameCanvas;
    }
    

    void setGameSpecificPaintableP(Paintable@ gameSpecificPaintable)
    {
        @this.gameSpecificPaintable = gameSpecificPaintable;
    }
    

    Paintable@ getGameSpecificPaintableP()
    {
        return this.gameSpecificPaintable;
    }
    

    bool isSingleThread()
    {
        return OpenGLFeatureUtil::getInstance().isAnyThreed() || SWTUtil::isSWT;
    }
    

    bool isRunningInAnotherThread()
    {
        Features@ features = Features::getInstance();
        OpenGLFeatureFactory@ openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
        if (features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
            return true;
        } else {
            return this.isRunning();
        }
        return false;
    }
    

    int getType()
    {
        return AllBinaryGameCanvas::TYPE;
    }
    

    string getTitle()
    {
        return RunnableCanvas::getTitle();
    }
    

    bool isPaused()
    {
        return RunnableCanvas::isPaused();
    }
}

namespace AllBinaryGameCanvas
{
    const int id = 0;
    const int TYPE = 2;
}

