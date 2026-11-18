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

class StartCanvas : RunnableCanvas, GameCanvasRunnableInterface, MenuListener, DisplayChangeEventListener
{
    BasicColorFactory@ basicColorFactory;
    Features@ features;
    OpenGLFeatureFactory@ openGLFeatureFactory;
    MyCommandsFactory@ myCommandsFactory;
    GameAdStateFactory@ gameAdStateFactory;
    GameStateFactory@ gameStateFactory;
    GameInputStrings@ gameInputStrings;
    FormUtil@ formUtil;
    StatePaintable@ basicGameDemoPaintable_StartCanvas;
    SpecialAnimation@ specialAnimationInterface_StartCanvas;
    Animation@ paintedSpecialAnimationInterface;
    FullScreenUtil@ fullScreenUtil_StartCanvas;
    HighScoresHelper@ highScoresHelper_StartCanvas;
    HighScoresPaintable@ realHighScoresPaintable_StartCanvas;
    Paintable@ highScoresPaintable_StartCanvas;
    int state_StartCanvas;
    TimeDelayHelper@ timeDelayHelper_StartCanvas;
    HighScoresFactoryInterface@ highScoresFactoryInterface_StartCanvas;
    BasicMenuInputProcessor@ menuInputProcessor_StartCanvas;
    ScrollSelectionForm@ menuForm_StartCanvas;
    BasicBuildGameInitializerFactory@ gameInitializationInterfaceFactoryInterface_StartCanvas;
    bool initialized_StartCanvas;
    Paintable@ defaultPaintableInterface_StartCanvas;
    PaintableInterface@ paintableInterface_StartCanvas;
    InitUpdatePaintable@ overlayPaintable_StartCanvas;
    int tempWait_StartCanvas;
    InputToGameKeyMapping@ inputToGameKeyMapping_StartCanvas;
    GameRunnable@ gameRunnable;
    PaintableInterface@ progressPaintable_StartCanvas;
    bool isSingleKeyRepeatableProcessing_StartCanvas;
    GameKey@ NONE_StartCanvas;
    GameKeyEventFactory@ gameKeyEventFactory_StartCanvas;
    string SET_STATE_StartCanvas;
    BaseGameStatistics@ baseGameStatistics_StartCanvas;

    // Java field initializers run after the super constructor
    void jfields_StartCanvas()
    {
    @this.basicColorFactory = BasicColorFactory::getInstance();
    @this.features = Features::getInstance();
    @this.openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
    @this.myCommandsFactory = MyCommandsFactory::getInstance();
    @this.gameAdStateFactory = GameAdStateFactory::getInstance();
    @this.gameStateFactory = GameStateFactory::getInstance();
    @this.gameInputStrings = GameInputStrings::getInstance();
    @this.formUtil = FormUtil::getInstance();
    @this.basicGameDemoPaintable_StartCanvas = StatePaintableFactory::getInstance();
    @this.specialAnimationInterface_StartCanvas = SpecialAnimation::getInstance();
    @this.paintedSpecialAnimationInterface = SpecialAnimation::getInstance();
    @this.fullScreenUtil_StartCanvas = FullScreenUtil::getInstance();
    @this.highScoresHelper_StartCanvas = HighScoresHelper().jinit_HighScoresHelper();
    @this.realHighScoresPaintable_StartCanvas = HighScoresPaintable().jinit_HighScoresPaintable();
    @this.highScoresPaintable_StartCanvas = NullPaintable::getInstance();
    this.state_StartCanvas = 0;
    @this.timeDelayHelper_StartCanvas = TimeDelayHelper().jinit_TimeDelayHelper(6000);
    
    @this.menuInputProcessor_StartCanvas = NoMenuInputProcessor::getInstance();
    @this.menuForm_StartCanvas = ScrollSelectionForm::getNullScrollSelectionForm();
    
    
    @this.defaultPaintableInterface_StartCanvas = NullPaintable::getInstance();
    @this.paintableInterface_StartCanvas = NullPaintable::getInstance();
    
    this.tempWait_StartCanvas = NullWaitGameRunnable::getInstance().WAIT;
    @this.inputToGameKeyMapping_StartCanvas = PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance().getInputMapping();
    @this.gameRunnable = NullWaitGameRunnable::getInstance();
    @this.progressPaintable_StartCanvas = ProgressCanvasFactory::getLazyInstance();
    this.isSingleKeyRepeatableProcessing_StartCanvas = this.features.isFeature(InputFeatureFactory::getInstance().SINGLE_KEY_REPEAT_PRESS);
    @this.NONE_StartCanvas = GameKeyFactory::getInstance().NONE;
    @this.gameKeyEventFactory_StartCanvas = GameKeyEventFactory::getInstance();
    this.SET_STATE_StartCanvas = "setState";
    @this.baseGameStatistics_StartCanvas = GameStatisticsFactory::getInstance();
    }
    

    StartCanvas@ jinit_StartCanvas(AbeClientInformationInterface@ abeClientInformation, CommandListener@ commandListener, HighScoresFactoryInterface@ highScoresFactoryInterface, Paintable@ paintable, InitUpdatePaintable@ overlayPaintable, BasicBuildGameInitializerFactory@ gameInitializationInterfaceFactoryInterface, bool isContinue)
    {
        this.jinit_RunnableCanvas(commandListener, CurrentDisplayableFactory::getInstance().DEFAULT_CHILD_NAME_LIST, true);
        this.jfields_StartCanvas();
        this.setWait(NullWaitGameRunnable::getInstance().WAIT);
        @this.gameInitializationInterfaceFactoryInterface_StartCanvas = gameInitializationInterfaceFactoryInterface;
        GameInitializationUtil::getInstance().initDemo(abeClientInformation, this, gameInitializationInterfaceFactoryInterface);
        ResizableListenerHandler::getInstance().fireEvent(false);
        @this.overlayPaintable_StartCanvas = overlayPaintable;
        @this.highScoresFactoryInterface_StartCanvas = highScoresFactoryInterface;
        this.setDefaultPaintableInterface(paintable);
        this.setPaintableInterface(this.getDefaultPaintableInterface());
        if (isContinue) {
            this.addCommand(GameCommandsFactory::getInstance().CONTINUE_COMMAND);
        }
        if (ChangedGameFeatureListener::getInstance().isChangedFeature(GameFeatureFactory::getInstance().SOUND)) {
            this.mediaInit();
        }
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
            ScrollSelectionForm@ scrollSelectionForm = this.getMenuForm();
            if (scrollSelectionForm !is null) {
                FormType@ formType = FormTypeFactory::getInstance().getFormType();
                Rectangle@ rectangle = this.formUtil.createFormRectangle();
                scrollSelectionForm.init(rectangle, formType);
            }
            this.overlayPaintable_StartCanvas.init();
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
        return StartCanvas::id;
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
        if (this.isSingleKeyRepeatableProcessing_StartCanvas) {
            this.addGameKeyEvent(keyCode, true);
        }
    }
    

    void addGameKeyEvent(int keyCode, bool repeated)
    {
        try {
            GameKey@ gameKey = this.inputToGameKeyMapping_StartCanvas.getInstanceForCanvas(this, keyCode);
            if (gameKey !is this.NONE_StartCanvas) {
                GameKeyEvent@ gameKeyEvent = this.gameKeyEventFactory_StartCanvas.getInstanceForInput(this, gameKey);
                DownGameKeyEventHandler::getInstance().fireEvent(gameKeyEvent);
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
    

    void removeGameKeyEvent(int keyCode, bool repeated)
    {
        try {
            GameKey@ gameKey = this.inputToGameKeyMapping_StartCanvas.getInstanceForCanvas(this, keyCode);
            if (gameKey !is this.NONE_StartCanvas) {
                GameKeyEvent@ gameKeyEvent = this.gameKeyEventFactory_StartCanvas.getInstanceForInput(this, gameKey);
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
    }
    

    void unPause()
    {
        this.open();
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
        this.paintableInterface_StartCanvas.paint(graphics);
        this.paintedSpecialAnimationInterface.paintXY(graphics, 0, 0);
        this.highScoresPaintable_StartCanvas.paint(graphics);
        this.getBasicGameDemoPaintable().paint(graphics);
        this.overlayPaintable_StartCanvas.paint(graphics);
        this.progressPaintable_StartCanvas.paint(graphics);
    }
    

    void paintThreed(Graphics@ graphics)
    {
        this.paintableInterface_StartCanvas.paintThreed(graphics);
        this.paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
    

    void processGameOver()
    {
        this.logUtil.putF("Not Implemented since not a game", this, "setGameOver");
    }
    

    void demoStateChange()
    {
        int newState = this.state_StartCanvas + 1;
        if (newState > 2) {
            newState = 0;
        } else if (newState == 2) {
            if (!this.highScoresHelper_StartCanvas.isAnyHighScores()) {
                newState = 0;
            } else {
                HighScores@ highScores = this.highScoresHelper_StartCanvas.getNextHighScores();
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
        PreLogUtil::put(SmallIntegerSingletonFactory::getInstance().createInstance(this.state_StartCanvas).toString(), this, this.SET_STATE_StartCanvas);
        this.getBasicGameDemoPaintable().setState(this.state_StartCanvas);
        if (this.state_StartCanvas == 0) {
            @this.highScoresPaintable_StartCanvas = NullPaintable::getInstance();
            @this.paintedSpecialAnimationInterface = this.getSpecialAnimationInterface();
            this.getSpecialAnimationInterface().reset();
        } else if (this.state_StartCanvas == 1) {
            @this.paintedSpecialAnimationInterface = SpecialAnimation::getInstance();
        } else if (this.state_StartCanvas == 2) {
            @this.highScoresPaintable_StartCanvas = this.getRealHighScoresPaintable();
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
    

    void createCanvas()
    {
        @this.highScoresPaintable_StartCanvas = NullPaintable::getInstance();
        int randomLevel = this.getNextRandom();
    }
    

    void start()
    {
    }
    

    void preDemoProcess()
    {
        this.overlayPaintable_StartCanvas.update();
    }
    

    void process()
    {
        this.getMenuInputProcessor().processInputList();
        this.preDemoProcess();
        if (this.state_StartCanvas == 0) {
            IndexedAnimationBehavior@ indexedAnimationBehavior = cast<IndexedAnimationBehavior>(this.getSpecialAnimationInterface().getAnimationBehavior());
            if (indexedAnimationBehavior.loopIndex < 1) {
                this.timeDelayHelper_StartCanvas.setStartTimeTNT();
            }
            DemoGameMidlet@ demoGameMidlet = cast<DemoGameMidlet>(this.getCustomCommandListener());
        }
    }
    

    void startDemoGame()
    {
    }
    

    void processGame()
    {
        this.gameRunnable.run();
        this.specialAnimationInterface_StartCanvas.nextFrame();
        this.process();
    }
    

    void run()
    {
        this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
        try {
            ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
            progressCanvas.addNormalPortion(50, "Demo Thread");
            this.setCurrentThread();
            this.setRunning(true);
            if (this.features.isFeature(MainFeatureFactory::getInstance().LOAD_ONDEMAND)) {
                progressCanvas.end();
            } else {
                progressCanvas.addNormalPortion(50, "Demo Thread Running");
            }
            this.fullScreenUtil_StartCanvas.initOnRun(this, this.getCustomCommandListener());
            this.initMenu();
            this.initPostPaint();
            this.updateDemoState();
            if (this.features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                OpenGLThreadUtil::getInstance().onResume();
            }
            if (this.features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil::isHTML()) {
            } else {
                while (this.isRunning()) {
                    this.loopTimeHelper.setStartTimeTNT();
                    this.processGame();
                    this.processLoopSleep();
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
    

    void setRunning(bool running)
    {
        RunnableCanvas::setRunning(running);
        try {
            if ((this.features.isDefault(this.openGLFeatureFactory.OPENGL) || J2MEUtil::isHTML()) && !running) {
                CurrentDisplayableFactory@ currentDisplayableFactory = CurrentDisplayableFactory::getInstance();
                currentDisplayableFactory.clearRunnable();
                this.end();
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
        this.baseGameStatistics_StartCanvas.add(StringMaker().jinit_StringMaker().append(StartCanvas::BOT_GAME_STATS).append(this.baseGameStatistics_StartCanvas.toString()).append(CommonSeps::getInstance().NEW_LINE).toString());
        this.baseGameStatistics_StartCanvas.init();
        if (this.features.isFeature(MainFeatureFactory::getInstance().LOAD_ONDEMAND)) {
            progressCanvas.start();
        }
        this.logUtil.putF("Demo End", this, this.commonStrings.RUN);
        this.close();
        DisplayChangeEventHandler::getInstance().removeListener(this);
    }
    

    void setGameState(GameState@ gameState)
    {
    }
    

    GameState@ getGameState()
    {
        return this.gameStateFactory.PLAYING_GAME_STATE;
    }
    

    int getState()
    {
        return this.state_StartCanvas;
    }
    

    void setState(int state)
    {
        this.state_StartCanvas = state;
    }
    

    bool isHighScoreSubmitted()
    {
        this.logUtil.putF("Wow the AI got a high score!", this, "isHighScoreSubmitted");
        return false;
    }
    

    HighScoresPaintable@ getRealHighScoresPaintable()
    {
        return this.realHighScoresPaintable_StartCanvas;
    }
    

    void setSpecialAnimationInterface(SpecialAnimation@ specialAnimationInterface)
    {
        specialAnimationInterface.setFrame(0);
        @this.specialAnimationInterface_StartCanvas = specialAnimationInterface;
    }
    

    SpecialAnimation@ getSpecialAnimationInterface()
    {
        return this.specialAnimationInterface_StartCanvas;
    }
    

    void setPaintableInterface(PaintableInterface@ paintableInterface)
    {
        @this.paintableInterface_StartCanvas = paintableInterface;
    }
    

    PaintableInterface@ getPaintableInterface()
    {
        return this.paintableInterface_StartCanvas;
    }
    

    void setDefaultPaintableInterface(Paintable@ defaultPaintableInterface)
    {
        @this.defaultPaintableInterface_StartCanvas = defaultPaintableInterface;
    }
    

    Paintable@ getDefaultPaintableInterface()
    {
        return this.defaultPaintableInterface_StartCanvas;
    }
    

    HighScoresFactoryInterface@ getHighScoresFactoryInterface()
    {
        return this.highScoresFactoryInterface_StartCanvas;
    }
    

    void setMenuInputProcessor(BasicMenuInputProcessor@ menuInputProcessor)
    {
        @this.menuInputProcessor_StartCanvas = menuInputProcessor;
    }
    

    BasicMenuInputProcessor@ getMenuInputProcessor()
    {
        return this.menuInputProcessor_StartCanvas;
    }
    

    ScrollSelectionForm@ getMenuForm()
    {
        return this.menuForm_StartCanvas;
    }
    

    void setMenuForm(ScrollSelectionForm@ menuForm)
    {
        @this.menuForm_StartCanvas = menuForm;
    }
    

    bool isInitialized()
    {
        return this.initialized_StartCanvas;
    }
    

    Paintable@ getOverlayPaintable()
    {
        return this.overlayPaintable_StartCanvas;
    }
    

    void setBasicGameDemoPaintable(StatePaintable@ basicGameDemoPaintable)
    {
        @this.basicGameDemoPaintable_StartCanvas = basicGameDemoPaintable;
    }
    

    StatePaintable@ getBasicGameDemoPaintable()
    {
        return this.basicGameDemoPaintable_StartCanvas;
    }
    

    void setTempWait(int tempWait)
    {
        this.tempWait_StartCanvas = tempWait;
    }
    

    int getTempWait()
    {
        return this.tempWait_StartCanvas;
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
        return this.gameInitializationInterfaceFactoryInterface_StartCanvas;
    }
    

    string getTitle()
    {
        return RunnableCanvas::getTitle();
    }
    

    bool isPaused()
    {
        return RunnableCanvas::isPaused();
    }
    

    int getType()
    {
        return RunnableCanvas::getType();
    }
}

namespace StartCanvas
{
    const int id = 0;
    const string BOT_GAME_STATS = "Bot Game Statistics: ";
}

