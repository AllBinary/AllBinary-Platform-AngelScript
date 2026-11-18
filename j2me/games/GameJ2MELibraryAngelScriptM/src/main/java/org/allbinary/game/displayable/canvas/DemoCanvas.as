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

class DemoCanvas : RunnableCanvas, GameCanvasRunnableInterface, MenuListener, DisplayChangeEventListener, DemoPaintableInterface
{
    BasicColorFactory@ basicColorFactory;
    MyCommandsFactory@ myCommandsFactory;
    GameAdStateFactory@ gameAdStateFactory;
    GameInputStrings@ gameInputStrings;
    GameStateFactory@ gameStateFactory;
    ThreadFactoryUtil@ threadFactoryUtil_DemoCanvas;
    FormUtil@ formUtil;
    Paintable@ fullscreenPaintable;
    StatePaintable@ basicGameDemoPaintable_DemoCanvas;
    SpecialAnimation@ specialAnimationInterface_DemoCanvas;
    Animation@ paintedSpecialAnimationInterface_DemoCanvas;
    FullScreenUtil@ fullScreenUtil_DemoCanvas;
    AllBinaryGameCanvas@ gameCanvas_DemoCanvas;
    HighScoresHelperBase@ highScoresHelper_DemoCanvas;
    HighScoresPaintable@ realHighScoresPaintable_DemoCanvas;
    Paintable@ highScoresPaintable_DemoCanvas;
    int state_DemoCanvas;
    Thread@ canvasThread_DemoCanvas;
    TimeDelayHelper@ timeDelayHelper_DemoCanvas;
    BasicColor@ basicColor_DemoCanvas;
    AbeClientInformationInterface@ abeClientInformation;
    HighScoresFactoryInterface@ highScoresFactoryInterface_DemoCanvas;
    BasicMenuInputProcessor@ menuInputProcessor_DemoCanvas;
    ScrollSelectionForm@ menuForm_DemoCanvas;
    BasicBuildGameInitializerFactory@ gameInitializationInterfaceFactoryInterface_DemoCanvas;
    bool initialized_DemoCanvas;
    DemoGameStartupRunnable@ demoGameRunnable_DemoCanvas;
    Paintable@ defaultPaintableInterface_DemoCanvas;
    PaintableInterface@ paintableInterface_DemoCanvas;
    InitUpdatePaintable@ overlayPaintable_DemoCanvas;
    PaintableInterface@ progressPaintable_DemoCanvas;
    int tempWait_DemoCanvas;
    InputToGameKeyMapping@ inputToGameKeyMapping_DemoCanvas;
    GameRunnable@ gameRunnable;
    bool isSingleKeyRepeatableProcessing_DemoCanvas;
    GameKey@ NONE_DemoCanvas;
    GameKeyEventFactory@ gameKeyEventFactory_DemoCanvas;
    int lastKeyNotMapped_DemoCanvas;
    string SET_STATE_DemoCanvas;
    BaseGameStatistics@ baseGameStatistics_DemoCanvas;

    // Java field initializers run after the super constructor
    void jfields_DemoCanvas()
    {
    @this.basicColorFactory = BasicColorFactory::getInstance();
    @this.myCommandsFactory = MyCommandsFactory::getInstance();
    @this.gameAdStateFactory = GameAdStateFactory::getInstance();
    @this.gameInputStrings = GameInputStrings::getInstance();
    @this.gameStateFactory = GameStateFactory::getInstance();
    @this.threadFactoryUtil_DemoCanvas = ThreadFactoryUtil::getInstance();
    @this.formUtil = FormUtil::getInstance();
    @this.fullscreenPaintable = FullScreenPaintableFactory::getInstance().paintable;
    @this.basicGameDemoPaintable_DemoCanvas = StatePaintableFactory::getInstance();
    @this.specialAnimationInterface_DemoCanvas = SpecialAnimation::getInstance();
    @this.paintedSpecialAnimationInterface_DemoCanvas = SpecialAnimation::getInstance();
    @this.fullScreenUtil_DemoCanvas = FullScreenUtil::getInstance();
    @this.gameCanvas_DemoCanvas = NullGameCanvas::getInstance();
    @this.highScoresHelper_DemoCanvas = HighScoresHelper().jinit_HighScoresHelper();
    @this.realHighScoresPaintable_DemoCanvas = HighScoresPaintable().jinit_HighScoresPaintable();
    @this.highScoresPaintable_DemoCanvas = NullPaintable::getInstance();
    this.state_DemoCanvas = 0;
    @this.canvasThread_DemoCanvas = NullThread::NULL_THREAD;
    @this.timeDelayHelper_DemoCanvas = TimeDelayHelper().jinit_TimeDelayHelper(6000);
    @this.basicColor_DemoCanvas = this.basicColorFactory.RED;
    
    
    @this.menuInputProcessor_DemoCanvas = NoMenuInputProcessor::getInstance();
    @this.menuForm_DemoCanvas = ScrollSelectionForm::getNullScrollSelectionForm();
    
    
    
    @this.defaultPaintableInterface_DemoCanvas = NullPaintable::getInstance();
    @this.paintableInterface_DemoCanvas = NullPaintable::getInstance();
    
    @this.progressPaintable_DemoCanvas = ProgressCanvasFactory::getLazyInstance();
    this.tempWait_DemoCanvas = NullWaitGameRunnable::getInstance().WAIT;
    @this.inputToGameKeyMapping_DemoCanvas = PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance().getInputMapping();
    @this.gameRunnable = NullWaitGameRunnable::getInstance();
    this.isSingleKeyRepeatableProcessing_DemoCanvas = Features::getInstance().isFeature(InputFeatureFactory::getInstance().SINGLE_KEY_REPEAT_PRESS);
    @this.NONE_DemoCanvas = GameKeyFactory::getInstance().NONE;
    @this.gameKeyEventFactory_DemoCanvas = GameKeyEventFactory::getInstance();
    this.lastKeyNotMapped_DemoCanvas = -1;
    this.SET_STATE_DemoCanvas = "setState";
    @this.baseGameStatistics_DemoCanvas = GameStatisticsFactory::getInstance();
    }
    

    DemoCanvas@ jinit_DemoCanvas(AbeClientInformationInterface@ abeClientInformation, CommandListener@ commandListener, HighScoresFactoryInterface@ highScoresFactoryInterface, Paintable@ paintable, InitUpdatePaintable@ overlayPaintable, BasicBuildGameInitializerFactory@ gameInitializationInterfaceFactoryInterface, bool isContinue)
    {
        this.jinit_RunnableCanvas(commandListener, CurrentDisplayableFactory::getInstance().DEFAULT_CHILD_NAME_LIST, true);
        this.jfields_DemoCanvas();
        @this.abeClientInformation = abeClientInformation;
        this.setWait(NullWaitGameRunnable::getInstance().WAIT);
        @this.gameInitializationInterfaceFactoryInterface_DemoCanvas = gameInitializationInterfaceFactoryInterface;
        GameInitializationUtil::getInstance().initDemo(abeClientInformation, this, gameInitializationInterfaceFactoryInterface);
        ResizableListenerHandler::getInstance().fireEvent(false);
        @this.overlayPaintable_DemoCanvas = overlayPaintable;
        @this.highScoresFactoryInterface_DemoCanvas = highScoresFactoryInterface;
        this.setDefaultPaintableInterface(paintable);
        this.setPaintableInterface(this.getDefaultPaintableInterface());
        if (isContinue) {
            this.addCommand(GameCommandsFactory::getInstance().CONTINUE_COMMAND);
        }
        if (ChangedGameFeatureListener::getInstance().isChangedFeature(GameFeatureFactory::getInstance().SOUND)) {
            this.mediaInit();
        }
        @this.demoGameRunnable_DemoCanvas = DemoGameStartupRunnable().jinit_DemoGameStartupRunnable(this);
        DisplayChangeEventHandler::getInstance().addListenerInterface(this);
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onDisplayChangeEvent(DisplayChangeEvent@ displayChangeEvent)
    {
        try {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonLabels.START_LABEL).append(this.displayInfo.toString()).toString(), this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
            ScrollSelectionForm@ scrollSelectionForm = this.getMenuForm();
            if (scrollSelectionForm !is null) {
                FormType@ formType = FormTypeFactory::getInstance().getFormType();
                Rectangle@ rectangle = this.formUtil.createFormRectangle();
                scrollSelectionForm.init(rectangle, formType);
            }
            this.overlayPaintable_DemoCanvas.init();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    JObject@[]@ getCustomCommands()
    {
        GameCommandsFactory@ gameCommandsFactory = GameCommandsFactory::getInstance();
        if (J2MEUtil::isHTML()) {
            JObject@[]@ commandArray = array<JObject@> = {gameCommandsFactory.START_COMMAND, HighScoreCommands::getInstance().DISPLAY, GameInputMappingCanvas::DISPLAY, gameCommandsFactory.DISPLAY_ABOUT};
            return commandArray;
        } else {
            BasicArrayList@ commandList = BasicArrayListD().jinit_BasicArrayListD();
            commandList.add(gameCommandsFactory.START_COMMAND);
            InApplicationPurchaseFactory@ inApplicationPurchaseFactory = InApplicationPurchaseFactory::getInstance();
            if (inApplicationPurchaseFactory.isEnabled()) {
                BasicArrayList@ list = LockableFeatureFactory::getInstance().getList();
                if (list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(cast<LockableFeature>(list.get(0)))) {
                    commandList.add(gameCommandsFactory.BUY_COMMAND);
                }
            }
            commandList.add(HighScoreCommands::getInstance().DISPLAY);
            try {
                bool isOverScan = OperatingSystemFactory::getInstance().getOperatingSystemInstance().isOverScan();
                if (SWTUtil::isSWT) {
                    commandList.add(GameInputMappingCanvas::DISPLAY);
                } else if (!isOverScan) {
                    commandList.add(gameCommandsFactory.DISPLAY_OPTIONS);
                    commandList.add(gameCommandsFactory.DISPLAY_LOAD_FORM);
                    commandList.add(GameInputMappingCanvas::DISPLAY);
                }
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e = cast<Exception>(jex1);
                }
                else { jthrow(jex1); }
            }
            commandList.add(gameCommandsFactory.DISPLAY_ABOUT);
            JObject@[]@ commandArray = commandList.toArray();
            return commandArray;
        }
        return null;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        this.removeAllCommands();
        JObject@[]@ commandArray = this.getCustomCommands();
        int size = int(commandArray.length());
        for (int index = 0; index < size; index++) {
            this.addCommand(cast<Command>(commandArray[index]));
        }
        CustomGameMenuUtil::add(this);
        this.setCommandListener(cmdListener);
    }
    

    void initPostPaint()
    {
    }
    

    void mediaInit()
    {
        AllBinaryMediaManager::init(EarlySoundsFactory::getInstance());
    }
    

    void itemStateChanged(Item@ item)
    {
        ForcedLogUtil::log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    void initMenu()
    {
        this.close();
        CommandTextItemArrayFactory@ commandTextItemArrayFactory = DemoLimitedCommandTextItemArrayFactory::getInstance().getCommandTextItemArrayFactory();
        ABCustomItem@[]@ items = commandTextItemArrayFactory.getInstance(this.getCommandStack(), this.basicColorFactory.BLACK, this.basicColorFactory.WHITE);
        FormType@ formType = FormTypeFactory::getInstance().getFormType();
        Rectangle@ rectangle = this.formUtil.createFormRectangle();
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.commonLabels.START_LABEL).append(this.displayInfo.toString()).toString(), this, "initMenu");
        ScrollSelectionForm@ scrollSelectionForm = CommandCurrentSelectionFormFactory::getInstance(StringUtil::getInstance().EMPTY_STRING, items, rectangle, formType, 15, true, this.basicColorFactory.BLACK, this.basicColorFactory.WHITE);
        this.setMenuForm(scrollSelectionForm);
        FormType@ formType2 = FormTypeFactory::getInstance().getFormType();
        Rectangle@ rectangle2 = this.formUtil.createFormRectangle();
        scrollSelectionForm.init(rectangle2, formType2);
        if (this.getMenuForm() !is ScrollSelectionFormNoneFactory::getInstance()) {
            this.setMenuInputProcessor(CommandFormInputProcessor().jinit_CommandFormInputProcessor(BasicArrayListD().jinit_BasicArrayListD(), -1, this, this.getMenuForm()));
        }
        this.open();
    }
    

    void open()
    {
        BasicMotionGesturesHandler::getInstance().addListenerInterface(this.getMenuInputProcessor());
        GameKeyEventHandler::getInstance().addListener(this.getMenuInputProcessor());
    }
    

    void close()
    {
        BasicMotionGesturesHandler::getInstance().removeListener(this.getMenuInputProcessor());
        GameKeyEventHandler::getInstance().removeListener(this.getMenuInputProcessor());
    }
    

    int getSourceId()
    {
        return DemoCanvas::id;
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
        this.addGameKeyEvent(keyCode, false);
    }
    

    void keyReleasedByDevice(int keyCode, int deviceId)
    {
        this.removeGameKeyEvent(keyCode, false);
    }
    

    void keyRepeatedByDevice(int keyCode, int deviceId)
    {
        if (this.isSingleKeyRepeatableProcessing_DemoCanvas) {
            this.addGameKeyEvent(keyCode, true);
        }
    }
    

    void addGameKeyEvent(int keyCode, bool repeated)
    {
        try {
            GameKey@ gameKey = this.inputToGameKeyMapping_DemoCanvas.getInstanceForCanvas(this, keyCode);
            if (gameKey !is this.NONE_DemoCanvas) {
                GameKeyEvent@ gameKeyEvent = this.gameKeyEventFactory_DemoCanvas.getInstanceForInput(this, gameKey);
                DownGameKeyEventHandler::getInstance().fireEvent(gameKeyEvent);
            } else {
                if (this.lastKeyNotMapped_DemoCanvas != keyCode) {
                    this.lastKeyNotMapped_DemoCanvas = keyCode;
                    this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
                }
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
    

    void removeGameKeyEvent(int keyCode, bool repeated)
    {
        try {
            GameKey@ gameKey = this.inputToGameKeyMapping_DemoCanvas.getInstanceForCanvas(this, keyCode);
            if (gameKey !is this.NONE_DemoCanvas) {
                GameKeyEvent@ gameKeyEvent = this.gameKeyEventFactory_DemoCanvas.getInstanceForInput(this, gameKey);
                UpGameKeyEventHandler::getInstance().fireEvent(gameKeyEvent);
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
    

    void pause()
    {
        this.close();
        this.setPaused(true);
        @this.gameRunnable = NullWaitGameRunnable::getInstance();
        this.gameCanvas_DemoCanvas.pause();
    }
    

    void unPause()
    {
        this.open();
        this.gameCanvas_DemoCanvas.unPause();
        @this.gameRunnable = this.gameCanvas_DemoCanvas.gameRunnable;
        this.setPaused(false);
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
    

    bool isGameOver()
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(" since not a game").toString(), this, "isGameOver");
        return false;
    }
    

    void setLoadStateHashtable(ABHashtable@ hashtable)
    {
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "setLoadStateHashtable");
    }
    

    ABHashtable@ getLoadStateHashtable()
    {
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "getLoadStateHashtable");
        return this.stdUtil.NULL_TABLE;
    }
    

    ABHashtable@ getCurrentStateHashtable()
    {
        this.logUtil.putF("Trying to save the AI lol", this, "getCurrentStateHashtable");
        return this.stdUtil.NULL_TABLE;
    }
    

    void setHighScoreSubmitted(bool isNotUsed)
    {
    }
    

    void paint(Graphics@ graphics)
    {
        this.paintableInterface_DemoCanvas.paint(graphics);
        this.paintedSpecialAnimationInterface_DemoCanvas.paintXY(graphics, 0, 0);
        this.highScoresPaintable_DemoCanvas.paint(graphics);
        this.getBasicGameDemoPaintable().paint(graphics);
        this.overlayPaintable_DemoCanvas.paint(graphics);
        this.fullscreenPaintable.paint(graphics);
        this.progressPaintable_DemoCanvas.paint(graphics);
    }
    

    void paintThreed(Graphics@ graphics)
    {
        this.paintableInterface_DemoCanvas.paintThreed(graphics);
        this.paintedSpecialAnimationInterface_DemoCanvas.paintThreedXYZ(graphics, 0, 0, 0);
    }
    

    void processGameOver()
    {
        this.logUtil.putF("Not Implemented since not a game", this, "setGameOver");
    }
    

    void demoStateChange()
    {
        int newState = this.state_DemoCanvas + 1;
        if (newState > 2) {
            newState = 0;
        } else if (newState == 2) {
            if (!this.highScoresHelper_DemoCanvas.isAnyHighScores()) {
                newState = 0;
            } else {
                HighScores@ highScores = this.highScoresHelper_DemoCanvas.getNextHighScores();
                if (highScores is NullHighScoresSingletonFactory::getInstance()) {
                    newState = 0;
                } else {
                    this.getRealHighScoresPaintable().setHighScores(highScores);
                }
            }
        }
        this.setState(newState);
        this.updateDemoState();
    }
    

    void updateDemoState()
    {
        PreLogUtil::put(SmallIntegerSingletonFactory::getInstance().createInstance(this.state_DemoCanvas).toString(), this, this.SET_STATE_DemoCanvas);
        this.getBasicGameDemoPaintable().setState(this.state_DemoCanvas);
        if (this.state_DemoCanvas == 0) {
            @this.highScoresPaintable_DemoCanvas = NullPaintable::getInstance();
            @this.paintedSpecialAnimationInterface_DemoCanvas = this.getSpecialAnimationInterface();
            if (!this.demoGameRunnable_DemoCanvas.isRunning() && this.gameCanvas_DemoCanvas.isInitialized()) {
                this.getSpecialAnimationInterface().reset();
            }
        } else if (this.state_DemoCanvas == 1) {
            @this.paintedSpecialAnimationInterface_DemoCanvas = SpecialAnimation::getInstance();
        } else if (this.state_DemoCanvas == 2) {
            @this.highScoresPaintable_DemoCanvas = this.getRealHighScoresPaintable();
        }
        GameAdState@ gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.processPageAdState();
    }
    

    int getNextRandom()
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return 0;
    }
    

    AllBinaryGameLayerManager@ createGameLayerManager(int randomValue)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return null;
    }
    

    GameCanvasRunnableInterface@ createRunnable(int randomLevel)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return null;
    }
    

    void create()
    {
        PreLogUtil::put(this.commonStrings.START, this, "create");
        @this.highScoresPaintable_DemoCanvas = NullPaintable::getInstance();
        int randomLevel = this.getNextRandom();
        @this.gameCanvas_DemoCanvas = cast<AllBinaryGameCanvas>(this.createRunnable(randomLevel));
        @this.basicColor_DemoCanvas = this.gameCanvas_DemoCanvas.getLayerManager().getForegroundBasicColor();
        this.getRealHighScoresPaintable().setBasicColorP(this.basicColor_DemoCanvas);
        this.gameCanvas_DemoCanvas.setGameCanvasStartListener(this);
        GameInfo@ gameInfo = this.gameCanvas_DemoCanvas.getLayerManager().getGameInfo();
        this.getHighScoresFactoryInterface().fetchHighScores(gameInfo, this.highScoresHelper_DemoCanvas);
    }
    

    void start()
    {
        AllBinaryGameCanvas@ gameCanvas = this.gameCanvas_DemoCanvas;
        PreLogUtil::put(StringMaker().jinit_StringMaker().append("Game Thread in DemoCanvas: ").append(this.stringUtil.toString(gameCanvas)).toString(), this, this.commonStrings.START);
        @this.canvasThread_DemoCanvas = this.threadFactoryUtil_DemoCanvas.getInstanceGameCanvasRunnable(gameCanvas);
        this.gameCanvas_DemoCanvas.setThread(this.canvasThread_DemoCanvas);
        this.threadFactoryUtil_DemoCanvas.start(this.canvasThread_DemoCanvas);
        if (this.getWait() == NullWaitGameRunnable::getInstance().WAIT) {
            this.setWait(this.getTempWait());
        }
    }
    

    void preDemoProcess()
    {
        if (!this.gameCanvas_DemoCanvas.isInitialized() || this.gameCanvas_DemoCanvas.getTitle() == NullGameCanvas::NO_GAME) {
            if (AllBinaryMediaManager::update()) {
                if (!PrimaryPlayerQueueFactory::getInstance().process()) {
                    SecondaryPlayerQueueFactory::getInstance().process();
                }
            }
        }
        this.overlayPaintable_DemoCanvas.update();
    }
    

    void process()
    {
        RunnableCanvas::process();
        this.getMenuInputProcessor().processInputList();
        this.preDemoProcess();
        if (this.state_DemoCanvas == 0) {
            IndexedAnimationBehavior@ indexedAnimationBehavior = (cast<IndexedAnimationBehavior>(this.getSpecialAnimationInterface().getAnimationBehavior()));
            if (indexedAnimationBehavior.loopIndex < 1) {
                this.timeDelayHelper_DemoCanvas.setStartTimeTNT();
            }
            DemoGameMidlet@ demoGameMidlet = cast<DemoGameMidlet>(this.getCustomCommandListener());
            if (this.gameCanvas_DemoCanvas !is NullGameCanvas::getInstance() && this.gameCanvas_DemoCanvas.isGameOver()) {
                this.stopGameDemo();
                int randomLevel = this.getNextRandom();
                GameInfo@ gameInfo = this.gameCanvas_DemoCanvas.getLayerManager().getGameInfo();
                gameInfo.setCurrentLevel(randomLevel);
                this.gameCanvas_DemoCanvas.setGameOver(false);
                this.start();
            } else if (this.gameCanvas_DemoCanvas is NullGameCanvas::getInstance() && demoGameMidlet.isReady()) {
                if (!this.demoGameRunnable_DemoCanvas.isRunning()) {
                    this.startDemoGame();
                    this.demoGameRunnable_DemoCanvas.setRunning(true);
                    Thread@ thread = this.threadFactoryUtil_DemoCanvas.getInstanceForRunnable(this.demoGameRunnable_DemoCanvas);
                    this.demoGameRunnable_DemoCanvas.setThread(thread);
                    this.threadFactoryUtil_DemoCanvas.start(thread);
                }
            }
        }
    }
    

    void startDemoGame()
    {
        DemoCanvasProgressUtil::showProgress(this);
    }
    

    void stopGameDemo()
    {
        if (this.gameCanvas_DemoCanvas !is NullGameCanvas::getInstance()) {
            this.logUtil.putF("Set Running False", this, "stopGameDemo");
            this.gameCanvas_DemoCanvas.setRunning(false);
        }
        ThreadUtil::getInstance().join(this.canvasThread_DemoCanvas);
    }
    

    void showGamePaintable()
    {
        string METHOD_NAME = "showGamePaintable";
        PreLogUtil::put(this.commonStrings.START, this, METHOD_NAME);
        bool isDefault = J2MEUtil::isHTML();
        if (this.gameCanvas_DemoCanvas !is NullGameCanvas::getInstance() && (this.gameCanvas_DemoCanvas.isRunning() || isDefault || SWTUtil::isSWT) && !(this.gameCanvas_DemoCanvas.getType() == NullGameCanvas::TYPE)) {
            @this.gameRunnable = this.gameCanvas_DemoCanvas.gameRunnable;
            PreLogUtil::put("Showing Game", this, METHOD_NAME);
            this.setPaintableInterface(this.gameCanvas_DemoCanvas);
        } else {
            @this.gameRunnable = NullWaitGameRunnable::getInstance();
            PreLogUtil::put("Not Showing Game", this, METHOD_NAME);
            this.setPaintableInterface(this.getDefaultPaintableInterface());
        }
    }
    

    bool isReadyForStateChange()
    {
        return !this.demoGameRunnable_DemoCanvas.isRunning() && this.gameCanvas_DemoCanvas.isInitialized();
    }
    

    void processGame()
    {
        this.gameRunnable.run();
        if (!this.specialAnimationInterface_DemoCanvas.isComplete() && this.isReadyForStateChange()) {
            this.specialAnimationInterface_DemoCanvas.nextFrame();
        }
        if (this.timeDelayHelper_DemoCanvas.isTimeTNT() && this.isReadyForStateChange()) {
            this.demoStateChange();
        } else {
            this.process();
        }
    }
    

    void run()
    {
        this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
        try {
            ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
            Features@ features = Features::getInstance();
            OpenGLFeatureFactory@ openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
            progressCanvas.addNormalPortion(50, "Demo Thread");
            this.setCurrentThread();
            this.setRunning(true);
            if (features.isFeature(MainFeatureFactory::getInstance().LOAD_ONDEMAND)) {
                progressCanvas.end();
            } else {
                progressCanvas.addNormalPortion(50, "Demo Thread Running");
            }
            this.fullScreenUtil_DemoCanvas.initOnRun(this, this.getCustomCommandListener());
            this.initMenu();
            this.initPostPaint();
            this.updateDemoState();
            if (features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                while (this.gameCanvas_DemoCanvas is NullGameCanvas::getInstance() || !this.gameCanvas_DemoCanvas.isInitialized()) {
                    this.loopTimeHelper.setStartTimeTNT();
                    this.processGame();
                    this.processLoopSleep();
                }
                DemoGameRunnable@ demoGameRunnable = DemoGameRunnable().jinit_DemoGameRunnable(this);
                CurrentDisplayableFactory@ currentDisplayableFactory = CurrentDisplayableFactory::getInstance();
                currentDisplayableFactory.setRunnable(demoGameRunnable);
                currentDisplayableFactory.setMyCanvas(this);
                OpenGLThreadUtil::getInstance().onResume();
            }
            if (features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil::isHTML()) {
                DemoGameRunnable@ demoGameRunnable = DemoGameRunnable().jinit_DemoGameRunnable(this);
                CurrentDisplayableFactory@ currentDisplayableFactory = CurrentDisplayableFactory::getInstance();
                currentDisplayableFactory.setRunnable(demoGameRunnable);
                currentDisplayableFactory.setMyCanvas(this);
            } else {
                while (this.isRunning()) {
                    this.run3();
                }
                this.end();
            }
        } catch {
            Throwable@ jex4 = jcatch();
            if (cast<Exception>(jex4) !is null) {
                Exception@ e = cast<Exception>(jex4);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            }
            else { jthrow(jex4); }
        }
        this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
    }
    

    void run3()
    {
        this.loopTimeHelper.setStartTimeTNT();
        this.processGame();
        this.processLoopSleep();
    }
    

    void setRunning(bool running)
    {
        RunnableCanvas::setRunning(running);
        try {
            Features@ features = Features::getInstance();
            OpenGLFeatureFactory@ openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
            if (running) {
            } else {
                if ((features.isDefault(openGLFeatureFactory.OPENGL) || J2MEUtil::isHTML()) || SWTUtil::isSWT) {
                    CurrentDisplayableFactory@ currentDisplayableFactory = CurrentDisplayableFactory::getInstance();
                    currentDisplayableFactory.clearRunnable();
                    this.end();
                }
            }
        } catch {
            Throwable@ jex5 = jcatch();
            if (cast<Exception>(jex5) !is null) {
                Exception@ e = cast<Exception>(jex5);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e);
            }
            else { jthrow(jex5); }
        }
    }
    

    void end()
    {
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        Features@ features = Features::getInstance();
        this.baseGameStatistics_DemoCanvas.add(StringMaker().jinit_StringMaker().append(DemoCanvas::BOT_GAME_STATS).append(this.baseGameStatistics_DemoCanvas.toString()).append(CommonSeps::getInstance().NEW_LINE).toString());
        this.baseGameStatistics_DemoCanvas.init();
        if (features.isFeature(MainFeatureFactory::getInstance().LOAD_ONDEMAND)) {
            progressCanvas.start();
        }
        this.logUtil.putF("Demo End", this, this.commonStrings.RUN);
        this.close();
        DisplayChangeEventHandler::getInstance().removeListener(this);
        this.stopGameDemo();
    }
    

    void setGameState(GameState@ gameState)
    {
    }
    

    GameState@ getGameState()
    {
        return this.gameStateFactory.PLAYING_GAME_STATE;
    }
    

    AllBinaryGameCanvas@ getGameCanvasRunnableInterface()
    {
        return this.gameCanvas_DemoCanvas;
    }
    

    bool isDemoLoading()
    {
        AllBinaryGameCanvas@ gameCanvas = this.gameCanvas_DemoCanvas;
        if (gameCanvas is NullGameCanvas::getInstance()) {
            return true;
        } else if (gameCanvas.isInitialized()) {
            return false;
        }
        return true;
    }
    

    int getState()
    {
        return this.state_DemoCanvas;
    }
    

    void setState(int state)
    {
        this.state_DemoCanvas = state;
    }
    

    bool isHighScoreSubmitted()
    {
        this.logUtil.putF("Wow the AI got a high score!", this, "isHighScoreSubmitted");
        return false;
    }
    

    HighScoresPaintable@ getRealHighScoresPaintable()
    {
        return this.realHighScoresPaintable_DemoCanvas;
    }
    

    void setSpecialAnimationInterface(SpecialAnimation@ specialAnimationInterface)
    {
        specialAnimationInterface.setFrame(0);
        @this.specialAnimationInterface_DemoCanvas = specialAnimationInterface;
    }
    

    SpecialAnimation@ getSpecialAnimationInterface()
    {
        return this.specialAnimationInterface_DemoCanvas;
    }
    

    void setPaintableInterface(PaintableInterface@ paintableInterface)
    {
        @this.paintableInterface_DemoCanvas = paintableInterface;
    }
    

    PaintableInterface@ getPaintableInterface()
    {
        return this.paintableInterface_DemoCanvas;
    }
    

    void setDefaultPaintableInterface(Paintable@ defaultPaintableInterface)
    {
        @this.defaultPaintableInterface_DemoCanvas = defaultPaintableInterface;
    }
    

    Paintable@ getDefaultPaintableInterface()
    {
        return this.defaultPaintableInterface_DemoCanvas;
    }
    

    HighScoresFactoryInterface@ getHighScoresFactoryInterface()
    {
        return this.highScoresFactoryInterface_DemoCanvas;
    }
    

    void setMenuInputProcessor(BasicMenuInputProcessor@ menuInputProcessor)
    {
        @this.menuInputProcessor_DemoCanvas = menuInputProcessor;
    }
    

    BasicMenuInputProcessor@ getMenuInputProcessor()
    {
        return this.menuInputProcessor_DemoCanvas;
    }
    

    ScrollSelectionForm@ getMenuForm()
    {
        return this.menuForm_DemoCanvas;
    }
    

    void setMenuForm(ScrollSelectionForm@ menuForm)
    {
        @this.menuForm_DemoCanvas = menuForm;
    }
    

    bool isInitialized()
    {
        return this.initialized_DemoCanvas;
    }
    

    Paintable@ getOverlayPaintable()
    {
        return this.overlayPaintable_DemoCanvas;
    }
    

    void setBasicGameDemoPaintable(StatePaintable@ basicGameDemoPaintable)
    {
        @this.basicGameDemoPaintable_DemoCanvas = basicGameDemoPaintable;
    }
    

    StatePaintable@ getBasicGameDemoPaintable()
    {
        return this.basicGameDemoPaintable_DemoCanvas;
    }
    

    void setTempWait(int tempWait)
    {
        this.tempWait_DemoCanvas = tempWait;
    }
    

    int getTempWait()
    {
        return this.tempWait_DemoCanvas;
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
    

    BasicBuildGameInitializerFactory@ getGameInitializationInterfaceFactoryInterface()
    {
        return this.gameInitializationInterfaceFactoryInterface_DemoCanvas;
    }
    

    int getType()
    {
        return DemoCanvas::TYPE;
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

namespace DemoCanvas
{
    const int id = 0;
    const string BOT_GAME_STATS = "Bot Game Statistics: ";
    const int TYPE = 3;
}

