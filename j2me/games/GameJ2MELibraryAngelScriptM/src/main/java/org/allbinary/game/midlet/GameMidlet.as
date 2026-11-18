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
// package org.allbinary.game.midlet

class GameMidlet : ProgressMidlet, CommandListener
{
    EnumerationUtil@ enumerationUtil_GameMidlet;
    BasicColorFactory@ basicColorFactory;
    Features@ features;
    MidletStrings@ midletStrings;
    MyCommandsFactory@ myCommandsFactory;
    GameStrings@ gameStrings;
    GameAdStateFactory@ gameAdStateFactory;
    GameStateFactory@ gameStateFactory;
    TsUtil@ tsUtil;
    string DISPLAYABLE_GameMidlet;
    string COMMAND_NAME_GameMidlet;
    string NO_COMMAND_GameMidlet;
    string NO_DISPLAYABLE_GameMidlet;
    string COMMAND_ACTION_GameMidlet;
    string PAUSE_APP_BACKGROUND_GameMidlet;
    string UN_PAUSE_APP_BACKGROUND_GameMidlet;
    AboutCommandProcessor@ aboutCommandProcessor_GameMidlet;
    WebCommandProcessor@ webCommandProcessor_GameMidlet;
    GameMidletStateFactory@ gameMidletStateFactory_GameMidlet;
    TimeDelayHelper@ gameStartTimeHelper;
    FullScreenUtil@ fullScreenUtil_GameMidlet;
    DebugInterface@ debugInterface_GameMidlet;
    GameCanvasRunnableInterface@ allbinaryGameCanvasRunnableInterface_GameMidlet;
    Thread@ thread_GameMidlet;
    CommandForm@ loadGameForm_GameMidlet;
    bool isFullScreen_GameMidlet;
    bool resized_GameMidlet;
    bool startedBefore_GameMidlet;

    // Java field initializers run after the super constructor
    void jfields_GameMidlet()
    {
    @this.enumerationUtil_GameMidlet = EnumerationUtil::getInstance();
    @this.basicColorFactory = BasicColorFactory::getInstance();
    @this.features = Features::getInstance();
    @this.midletStrings = MidletStrings::getInstance();
    @this.myCommandsFactory = MyCommandsFactory::getInstance();
    @this.gameStrings = GameStrings::getInstance();
    @this.gameAdStateFactory = GameAdStateFactory::getInstance();
    @this.gameStateFactory = GameStateFactory::getInstance();
    @this.tsUtil = TsUtil::getInstance();
    this.DISPLAYABLE_GameMidlet = " Displayable: ";
    this.COMMAND_NAME_GameMidlet = "command Name/Label: ";
    this.NO_COMMAND_GameMidlet = "No Command";
    this.NO_DISPLAYABLE_GameMidlet = "No Displayable";
    this.COMMAND_ACTION_GameMidlet = StringMaker().jinit_StringMaker().append("GameMidlet::").append(this.midletStrings.COMMAND_ACTION).toString();
    this.PAUSE_APP_BACKGROUND_GameMidlet = "pauseAppBackground";
    this.UN_PAUSE_APP_BACKGROUND_GameMidlet = "unPauseAppBackground";
    @this.aboutCommandProcessor_GameMidlet = AboutCommandProcessor::getInstance();
    @this.webCommandProcessor_GameMidlet = WebCommandProcessor::getInstance();
    @this.gameMidletStateFactory_GameMidlet = GameMidletStateFactory::getInstance();
    @this.gameStartTimeHelper = TimeDelayHelper().jinit_TimeDelayHelper(240);
    @this.fullScreenUtil_GameMidlet = FullScreenUtil::getInstance();
    
    @this.allbinaryGameCanvasRunnableInterface_GameMidlet = NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE;
    @this.thread_GameMidlet = NullThread::NULL_THREAD;
    
    
    
    this.startedBefore_GameMidlet = false;
    }
    

    GameMidlet@ jinit_GameMidlet(ClientInformationFactory@ clientInformationFactory)
    {
        this.jinit_ProgressMidlet(clientInformationFactory);
        this.jfields_GameMidlet();
        SmallIntegerSingletonFactory::getInstance().initWithRange(0x291, 6);
        @this.loadGameForm_GameMidlet = CommandForm::getNullCommandForm();
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        progressCanvas.init(this);
        GameFeatureEventHandler::getInstance().addListenerInterface(ChangedGameFeatureListener::getInstance());
        GamePersistanceSingleton::getInstance().clear();
        @this.debugInterface_GameMidlet = DebugFactory::getInstance();
        this.init();
        return this;
    }
    

    void init()
    {
    }
    

    void setDemo()
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    void createGame()
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    void mediaShutdown()
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    void stopAll()
    {
    }
    

    void pauseApp()
    {
        this.pauseAppBackground(true);
        GameAdState@ gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.getAdvertisements().stopAll();
    }
    

    void pauseAppBackground(bool background)
    {
        this.logUtil.putF(this.commonStrings.START, this, this.PAUSE_APP_BACKGROUND_GameMidlet);
        if (this.allbinaryGameCanvasRunnableInterface_GameMidlet !is NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE) {
            this.allbinaryGameCanvasRunnableInterface_GameMidlet.pause();
        } else {
            this.logUtil.putF("<<<<<< Null", this, this.PAUSE_APP_BACKGROUND_GameMidlet);
        }
        AllBinarySensorManager::getInstance().shutdown();
    }
    

    void unPauseApp()
    {
        this.unPauseAppBackground(true);
        GameAdState@ gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.getAdvertisements().startAll();
    }
    

    void unPauseAppBackground(bool background)
    {
        this.logUtil.putF(this.commonStrings.START, this, this.UN_PAUSE_APP_BACKGROUND_GameMidlet);
        AllBinarySensorManager::getInstance().init();
        GameCanvasRunnableInterface@ gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface_GameMidlet;
        if (gameCanvasRunnableInterface !is NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE) {
            gameCanvasRunnableInterface.unPause();
        } else {
            this.logUtil.putF("<<<<<< Null", this, this.UN_PAUSE_APP_BACKGROUND_GameMidlet);
        }
    }
    

    void destroyAppInRunnable(bool unconditional, bool isProgress)
    {
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        if (isProgress) {
            progressCanvas.start();
            this.commandAction(this.myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
        }
        this.destroyApp(unconditional);
        if (isProgress) {
            progressCanvas.end();
        }
    }
    

    void destroyApp(bool unconditional)
    {
        string METHOD_NAME = "GameMidlet::destroyApp";
        try {
            PreLogUtil::put(GameStatisticsFactory::getInstance().toString(), this, METHOD_NAME);
            GameAdState@ gameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.getAdvertisements().stopAll();
            if (!this.isDestroyed()) {
                this.stopGameCanvasRunnableInterface();
                this.setGameCanvasRunnableInterface(NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE);
                this.mediaShutdown();
            } else {
                this.logUtil.putF("Midlet Managment Error: Midlet Should Only Be Destroyed Once", this, METHOD_NAME);
            }
            ProgressMidlet::destroyApp(true);
            PreLogUtil::put(this.commonStrings.END, this, METHOD_NAME);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, METHOD_NAME, e);
            }
            else { jthrow(jex0); }
        }
        this.logUtil.putF(this.commonStrings.END, this, METHOD_NAME);
    }
    

    void startApp()
    {
        try {
            GameAdState@ gameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.getAdvertisements().startAll();
            string START_APP = "startApp";
            this.logUtil.putF(this.commonStrings.START, this, START_APP);
            JObject@ gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface_GameMidlet;
            if (gameCanvasRunnableInterface is NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE) {
                this.gameMidletStateFactory_GameMidlet.setCurrentGameState(this.gameStateFactory.NO_GAME_STATE);
                this.setDemo();
            } else {
                this.logUtil.putF("GameCanvasRunnableInterface is available", this, START_APP);
                if (gameCanvasRunnableInterface is this.getCurrentDisplayable()) {
                    this.unPauseAppBackground(false);
                } else {
                    this.logUtil.putF("GameCanvasRunnableInterface is not current displayable", this, START_APP);
                }
            }
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "startApp", e);
            this.destroyApp(false);
            this.notifyDestroyed();
            }
            else { jthrow(jex1); }
        }
    }
    

    void commandAction(Command@ command, Displayable@ displayable)
    {
        try {
            string displayableAsString = this.NO_DISPLAYABLE_GameMidlet;
            if (displayable !is null) {
                displayableAsString = displayable.toString();
            }
            string label = this.NO_COMMAND_GameMidlet;
            if (command !is null) {
                label = command.getLabel();
            }
            PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.COMMAND_NAME_GameMidlet).append(label).append(this.DISPLAYABLE_GameMidlet).append(displayableAsString).toString(), this, this.COMMAND_ACTION_GameMidlet);
            GameCommandsFactory@ gameCommandsFactory = GameCommandsFactory::getInstance();
            GameCanvasRunnableInterface@ allbinaryGameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface_GameMidlet;
            JObject@ gameCanvasRunnableInterface = allbinaryGameCanvasRunnableInterface;
            if (command is gameCommandsFactory.SHOW_GAME_CANVAS) {
                if (this.getDisplay().getCurrent() !is gameCanvasRunnableInterface && allbinaryGameCanvasRunnableInterface.getType() != NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE.getType()) {
                    this.setDisplay(cast<Displayable>(gameCanvasRunnableInterface));
                }
                this.unPauseAppBackground(false);
            } else if (command is gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS) {
                MenuListener@ menuListener = cast<MenuListener>(displayable);
                menuListener.close();
                this.setDisplay(cast<Displayable>(gameCanvasRunnableInterface));
                this.unPauseAppBackground(false);
            } else if (command is gameCommandsFactory.EXIT_COMMAND) {
                if (GameMidletEventHandler::getInstance().getEventListenerInterfaceListP().size() == 0) {
                    this.exitProgress(true);
                }
                GameMidletEventHandler::getInstance().fireEvent(DemoGameMidletEvent().jinit_DemoGameMidletEvent(this, DemoGameMidletStateFactory::getInstance().NONE));
            } else if (command is gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND) {
                this.exitProgress(false);
            } else if (command is gameCommandsFactory.START_COMMAND || command is gameCommandsFactory.RESTART_COMMAND || command is gameCommandsFactory.CONTINUE_COMMAND) {
                if (this.gameMidletStateFactory_GameMidlet.getCurrentGameState() !is this.gameStateFactory.PLAYING_GAME_STATE || command is gameCommandsFactory.RESTART_COMMAND) {
                    if (this.gameStartTimeHelper.isTimeTNT()) {
                        if (command is gameCommandsFactory.START_COMMAND && this.isDemoLoading()) {
                            this.logUtil.putF("Trying to Start Game Before Loading Complete", this, this.midletStrings.COMMAND_ACTION);
                        } else {
                            this.startedBefore_GameMidlet = true;
                            this.createGame();
                            this.gameMidletStateFactory_GameMidlet.setCurrentGameState(this.gameStateFactory.PLAYING_GAME_STATE);
                        }
                    } else {
                        this.logUtil.putF("Starting Game Too Often", this, this.midletStrings.COMMAND_ACTION);
                    }
                } else {
                    this.logUtil.putF("Already in playing state", this, this.COMMAND_ACTION_GameMidlet);
                }
            } else if (command is gameCommandsFactory.BUY_COMMAND) {
                InApplicationPurchaseFactory@ inApplicationPurchaseFactory = InApplicationPurchaseFactory::getInstance();
                BasicArrayList@ list = LockableFeatureFactory::getInstance().getList();
                LockableFeature@ lockableFeature = cast<LockableFeature>(list.get(0));
                if (list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(lockableFeature)) {
                    inApplicationPurchaseFactory.purchase(lockableFeature);
                } else {
                    TextNotificationUtil::getInstance().fireSuccess("Already Purchased");
                }
            } else if (command is gameCommandsFactory.QUIT_COMMAND) {
                if (this.gameStartTimeHelper.isTimeTNT()) {
                    if ((cast<HighScoreTextBox>(displayable) !is null)) {
                        MenuListener@ menuListener = cast<MenuListener>(displayable);
                        menuListener.close();
                    }
                    this.stopGameCanvasRunnableInterface();
                    this.gameMidletStateFactory_GameMidlet.setCurrentGameState(this.gameStateFactory.NO_GAME_STATE);
                    this.setDemo();
                }
            } else if (command is this.myCommandsFactory.RESUME_COMMAND) {
                this.unPauseAppBackground(false);
            } else if (command is this.myCommandsFactory.PAUSE_COMMAND) {
                this.pauseAppBackground(false);
            } else if (command is this.myCommandsFactory.SET_DISPLAYABLE) {
                this.pauseAppBackground(false);
                this.setDisplay(displayable);
            } else if (command is gameCommandsFactory.SET_MENU_DISPLAYABLE) {
                this.pauseAppBackground(false);
                MenuListener@ menuListener = cast<MenuListener>(displayable);
                menuListener.open();
                this.setDisplay(displayable);
            } else if (command is gameCommandsFactory.START_TRACE) {
                this.debugInterface_GameMidlet.start();
                AllBinaryGameCanvas@ gameCanvas = cast<AllBinaryGameCanvas>(allbinaryGameCanvasRunnableInterface);
                gameCanvas.addCommand(gameCommandsFactory.STOP_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory.START_TRACE);
            } else if (command is gameCommandsFactory.STOP_TRACE) {
                this.pauseAppBackground(false);
                this.debugInterface_GameMidlet.stop();
                this.unPauseAppBackground(false);
                AllBinaryGameCanvas@ gameCanvas = cast<AllBinaryGameCanvas>(allbinaryGameCanvasRunnableInterface);
                gameCanvas.addCommand(gameCommandsFactory.START_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory.STOP_TRACE);
            } else if (command is gameCommandsFactory.DEFAULT_OPTIONS) {
                Displayable@ tempDisplayable = displayable;
                if ((cast<GameOptionsForm>(tempDisplayable) !is null)) {
                    GameFeatureFormUtil::getInstance().setDefault(cast<CommandForm>(tempDisplayable));
                }
            } else if (command is GameInputMappingInstructionsCanvas::DISPLAY) {
                Displayable@ tempDisplayable = displayable;
                if ((cast<GameInputMappingCanvas>(tempDisplayable) !is null)) {
                    GameInputMappingCanvas@ gameInputMappingCanvas = cast<GameInputMappingCanvas>(tempDisplayable);
                    gameInputMappingCanvas.update();
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingInstructionsCanvas());
            } else if (HighScoreCommandsFactory::getInstance().isHighScoreCommand(command)) {
                Displayable@ tempDisplayable = displayable;
                if ((cast<HighScoresCanvas>(tempDisplayable) !is null)) {
                    HighScoresCanvas@ highScoresCanvas = cast<HighScoresCanvas>(tempDisplayable);
                    highScoresCanvas.updateCommand(command);
                }
            } else if (command is HighScoreCommands::getInstance().DISPLAY) {
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.createHighScoresCanvas());
            } else if (command is GameInputMappingInstructionsCanvas::CLOSE) {
                MenuListener@ menuListener = cast<MenuListener>(displayable);
                menuListener.close();
                this.commandAction(GameInputMappingCanvas::DISPLAY, NullCanvas::NULL_CANVAS);
            } else if (command is GameInputMappingCanvas::DISPLAY) {
                if (J2MEUtil::isHTML()) {
                    this.pauseAppBackground(false);
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingCanvas());
            } else if (command is GameInputMappingCanvas::DEFAULT) {
                Displayable@ tempDisplayable = displayable;
                if ((cast<GameInputMappingCanvas>(tempDisplayable) !is null)) {
                    GameInputMappingCanvas@ gameInputMappingCanvas = cast<GameInputMappingCanvas>(tempDisplayable);
                    gameInputMappingCanvas.setDefault();
                }
            } else if (command is InGameOptionsForm::DISPLAY) {
                this.pauseAppBackground(false);
                ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
                progressCanvas.addNormalPortion(50, "In Game Options");
                AllBinaryGameLayerManager@ layerManager = this.createGameLayerManager();
                InGameOptionsFormFactory@ inGameOptionsFormFactory = InGameOptionsFormFactory::getInstance();
                inGameOptionsFormFactory.init(this, InGameFeatures().jinit_InGameFeatures(), "Options In Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor());
                CommandForm@ inGameOptionsForm = inGameOptionsFormFactory.get();
                inGameOptionsForm.setItemStateListener(allbinaryGameCanvasRunnableInterface);
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm);
            } else if (command is InGameOptionsForm::DEFAULT) {
                InGameOptionsForm@ inGameOptionsForm = cast<InGameOptionsForm>(InGameOptionsFormFactory::getInstance().get());
                GameFeatureFormUtil::getInstance().setDefault(inGameOptionsForm);
            } else if (command is gameCommandsFactory.DISPLAY_OPTIONS) {
                AllBinaryMediaManager::setMuted(true);
                this.stopAll();
                MainFeatureFactory@ mainFeatureFactory = MainFeatureFactory::getInstance();
                this.isFullScreen_GameMidlet = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
                ResizableListenerHandler::getInstance().fireEvent(true);
                this.setResized(false);
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getGameOptionsForm());
            } else if (command is gameCommandsFactory.CLOSE_OPTIONS) {
                ResizableListenerHandler::getInstance().fireEvent(false);
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
                StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
                stringBuffer.append("Close isFullScreen/change: ");
                stringBuffer.appendboolean(this.isFullScreen_GameMidlet);
                stringBuffer.appendboolean(this.fullScreenUtil_GameMidlet.isScreenChange(this.isFullScreen_GameMidlet));
                stringBuffer.append(" isResized: ");
                stringBuffer.appendboolean(this.isResized());
                PreLogUtil::put(stringBuffer.toString(), this, this.COMMAND_ACTION_GameMidlet);
                if (this.isResized() || this.fullScreenUtil_GameMidlet.isScreenChange(this.isFullScreen_GameMidlet)) {
                    this.updateFullScreen();
                }
                AllBinaryMediaManager::setMuted(false);
            } else if (command is gameCommandsFactory.DISPLAY_LOAD_FORM) {
                this.pauseAppBackground(false);
                KeyValuePersistance@ keyValuePersistance = GamePersistanceSingleton::getInstance();
                keyValuePersistance.clear();
                keyValuePersistance.loadAll(this.abeClientInformation);
                if (this.getLoadGameForm() is CommandForm::getNullCommandForm()) {
                    AllBinaryGameLayerManager@ layerManager = this.createGameLayerManager();
                    this.setLoadGameForm(LoadGameForm().jinit_LoadGameForm(this, "Load Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()));
                } else {
                    this.getLoadGameForm().update();
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getLoadGameForm());
            } else if (command is gameCommandsFactory.LOAD_FILE) {
                LoadGameForm@ loadGameForm = cast<LoadGameForm>(this.getLoadGameForm());
                int index = loadGameForm.getSelectedId();
                if (index != -1) {
                    KeyValuePersistance@ keyValuePersistance = GamePersistanceSingleton::getInstance();
                    this.setStartStateHashtable(keyValuePersistance.get(index));
                    MenuListener@ menuListener = this.getLoadGameForm();
                    menuListener.close();
                    PreLogUtil::put(BasicMotionGesturesHandler::getInstance().toString(), this, this.COMMAND_ACTION_GameMidlet);
                    this.commandAction(gameCommandsFactory.START_COMMAND, NullCanvas::NULL_CANVAS);
                    PreLogUtil::put(BasicMotionGesturesHandler::getInstance().toString(), this, this.COMMAND_ACTION_GameMidlet);
                }
            } else if (command is gameCommandsFactory.DELETE_FILE) {
                LoadGameForm@ loadGameForm = cast<LoadGameForm>(this.getLoadGameForm());
                int index = loadGameForm.getSelectedText();
                if (index != -1) {
                    KeyValuePersistance@ keyValuePersistance = GamePersistanceSingleton::getInstance();
                    keyValuePersistance.delete(this.abeClientInformation, index);
                    keyValuePersistance.clear();
                    keyValuePersistance.loadAllSize(this.abeClientInformation, 1);
                    this.getLoadGameForm().update();
                }
            } else if (command is gameCommandsFactory.SAVE) {
                KeyValuePersistance@ keyValuePersistance = GamePersistanceSingleton::getInstance();
                this.pauseAppBackground(false);
                keyValuePersistance.save(this.abeClientInformation, this.getCurrentStateHashtable());
                this.unPauseAppBackground(false);
            } else if (command is HighScoreUtil::SUBMIT_TEXTBOX_COMMAND) {
                this.logUtil.putF("Submitted Score", this, this.COMMAND_ACTION_GameMidlet);
                if ((cast<HighScoreTextBox>(displayable) !is null)) {
                    HighScoreTextBox@ highScoreTextBox = cast<HighScoreTextBox>(displayable);
                    highScoreTextBox.submitted = true;
                }
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(true);
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
            } else if (command is gameCommandsFactory.DISPLAY_ABOUT) {
                this.aboutCommandProcessor_GameMidlet.process(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getAboutCanvas());
            } else if (command is gameCommandsFactory.OPEN_WEB_URL) {
                this.webCommandProcessor_GameMidlet.process(this, gameCommandsFactory.OPEN_WEB_URL, NullCanvas::NULL_CANVAS);
            } else if (command is gameCommandsFactory.TOGGLE_KEYBOARD) {
                VirtualKeyboardEventHandler@ virtualKeyboardEventHandler = VirtualKeyboardEventHandler::getInstance();
                virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT);
            } else if (this.tsUtil.compareTo(command.getLabel(), gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel()) == 0) {
                MainFeatureFactory@ mainFeatureFactory = MainFeatureFactory::getInstance();
                bool isFullScreen = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
                if (isFullScreen) {
                    this.features.removeDefault(mainFeatureFactory.FULL_SCREEN);
                } else {
                    this.features.addDefault(mainFeatureFactory.FULL_SCREEN);
                }
                this.updateFullScreen();
            }
        } catch {
            Throwable@ jex2 = jcatch();
            if (cast<Exception>(jex2) !is null) {
                Exception@ e = cast<Exception>(jex2);
            this.logUtil.put(StringMaker().jinit_StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(command.getLabel()).toString(), this, this.midletStrings.COMMAND_ACTION, e);
            if (command !is GameCommandsFactory::getInstance().EXIT_COMMAND) {
                this.exitProgress(false);
            }
            }
            else { jthrow(jex2); }
        }
    }
    

    void updateFullScreen()
    {
        MainFeatureFactory@ mainFeatureFactory = MainFeatureFactory::getInstance();
        bool isFullScreen = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
        Displayable@ displayable = this.getDisplay().getCurrent();
        if ((cast<Canvas>(displayable) !is null)) {
            Canvas@ canvas = cast<Canvas>(displayable);
            canvas.setFullScreenMode(isFullScreen);
        }
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    MyCanvas@ getInputMappingInstructionsCanvas()
    {
        return GameInputMappingInstructionsCanvas().jinit_GameInputMappingInstructionsCanvas(this, this.createGameLayerManager());
    }
    

    MyCanvas@ getInputMappingCanvas()
    {
        return GameInputMappingCanvas().jinit_GameInputMappingCanvas(this.abeClientInformation, this, this.createGameLayerManager(), this.getHelpPaintable());
    }
    

    MyCanvas@ getAboutCanvas()
    {
        return BasicPaintablesCanvas().jinit_BasicPaintablesCanvas(this, CanvasStrings::getInstance().ABOUT, this.createGameLayerManager(), AboutPaintableFactory::getInstance().paintableArray);
    }
    

    HelpPaintable@ getHelpPaintable()
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return null;
    }
    

    HighScoresCanvas@ createHighScoresCanvas()
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return null;
    }
    

    void startGameCanvasRunnableInterface()
    {
        ThreadFactoryUtil@ threadFactoryUtil = ThreadFactoryUtil::getInstance();
        @this.thread_GameMidlet = threadFactoryUtil.getInstanceGameCanvasRunnable(this.allbinaryGameCanvasRunnableInterface_GameMidlet);
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Thread Priority: ").appendint(int(this.thread_GameMidlet.getPriority())).toString(), this, "startGameCanvasRunnableInterface");
        this.allbinaryGameCanvasRunnableInterface_GameMidlet.setThread(this.thread_GameMidlet);
        threadFactoryUtil.start(this.thread_GameMidlet);
    }
    

    void stopGameCanvasRunnableInterface()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        GameNotificationEventHandler::getInstance().removeAllListeners();
        ColorChangeEventHandler::getInstance().removeAllListeners();
        GameEventHandlerUtil::removeAllListeners();
        GameCanvasRunnableInterface@ gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface_GameMidlet;
        if (gameCanvasRunnableInterface !is NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE) {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Set Running False: ").append(gameCanvasRunnableInterface.toString()).toString(), this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
            gameCanvasRunnableInterface.setRunning(false);
        } else {
            this.logUtil.putF("StopGame - Could Not Stop", this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        }
        ThreadUtil::getInstance().join(this.thread_GameMidlet);
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        if (this.features.isFeature(MainFeatureFactory::getInstance().LOAD_ALL)) {
            progressCanvas.addNormalPortion(50, "Stopped Game Runnable");
        } else {
            progressCanvas.addNormalPortion(50, "Stopped Main Runnable");
        }
        this.logUtil.putF(this.commonStrings.END, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
    }
    

    GameCanvasRunnableInterface@ getGameCanvasRunnableInterface()
    {
        return this.allbinaryGameCanvasRunnableInterface_GameMidlet;
    }
    

    void setGameCanvasRunnableInterface(GameCanvasRunnableInterface@ gameCanvasRunnableInterface)
    {
        @this.allbinaryGameCanvasRunnableInterface_GameMidlet = gameCanvasRunnableInterface;
    }
    

    AllBinaryGameLayerManager@ createGameLayerManager()
    {
        GameInfo@ gameInfo = GameInfo().jinit_GameInfo(GameTypeFactory::getInstance().SINGLE_PLAYER, GameMode::SERVER, PlayerTypesFactory::getInstance().PLAYER_TYPE_ONE, 1, 1);
        return AllBinaryGameLayerManager().jinit_AllBinaryGameLayerManager(this.basicColorFactory.BLACK, this.basicColorFactory.WHITE, gameInfo);
    }
    

    CommandForm@ getGameOptionsForm()
    {
        AllBinaryGameLayerManager@ layerManager = this.createGameLayerManager();
        return GameOptionsFormFactory::getInstance().init(this, "Game Options", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor());
    }
    

    void save()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.SAVE);
        ABHashtable@ hashtable = this.getCurrentStateHashtable();
        GamePersistanceSingleton::getInstance().save(this.abeClientInformation, hashtable);
    }
    

    ABHashtable@ getCurrentStateHashtable()
    {
        this.logUtil.putF(this.commonStrings.START, this, "getCurrentStateHashtable");
        ABHashtable@ hashtable = StdUtil::getInstance().createHashtable();
        if (this.allbinaryGameCanvasRunnableInterface_GameMidlet !is NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE) {
            ABHashtable@ currentHashtable = this.allbinaryGameCanvasRunnableInterface_GameMidlet.getCurrentStateHashtable();
            Enumeration@ enumeration = currentHashtable.keys();
            JObject@ key;
            while (this.enumerationUtil_GameMidlet.hasMoreElements(enumeration)) {
                @key = this.enumerationUtil_GameMidlet.nextElement(enumeration);
                hashtable.put(key, currentHashtable.get(key));
            }
        }
        return hashtable;
    }
    

    void setLoadGameForm(LoadGameForm@ loadGameForm)
    {
        @this.loadGameForm_GameMidlet = loadGameForm;
    }
    

    CommandForm@ getLoadGameForm()
    {
        return this.loadGameForm_GameMidlet;
    }
    

    void setResized(bool resized)
    {
        this.resized_GameMidlet = resized;
    }
    

    bool isResized()
    {
        return this.resized_GameMidlet;
    }
    

    bool isDemoLoading()
    {
        if (this.startedBefore_GameMidlet) {
            return false;
        }
        Displayable@ displayable = this.getDisplay().getCurrent();
        if ((cast<DemoCanvas>(displayable) !is null)) {
            DemoCanvas@ demoCanvas = cast<DemoCanvas>(displayable);
            if (demoCanvas.isDemoLoading()) {
                return true;
            }
        }
        return false;
    }
}

