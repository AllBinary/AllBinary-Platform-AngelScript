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
// package org.allbinary.game.score.displayable

class HighScoresCanvas : GameCommandCanvas, HighScoresResultsListener
{
    Paintable@ paintable_HighScoresCanvas;
    HighScoreCommandsFactory@ highScoreCommandsFactory_HighScoresCanvas;
    SimpleTextPaintable@ waitPaintable_HighScoresCanvas;
    HighScoresPaintable@ highScoresPaintable_HighScoresCanvas;
    HighScoresFactoryInterface@ highScoresFactoryInterface_HighScoresCanvas;
    ColorFillBasePaintable@ colorFillPaintable;
    HighScoresHelperBase@ highScoresHelper_HighScoresCanvas;
    GameInfo@ gameInfo_HighScoresCanvas;
    HighScoresCanvasInputProcessor@ highScoresCanvasInputProcessor_HighScoresCanvas;
    Command@ currentCommand_HighScoresCanvas;
    bool hasPainted;

    // Java field initializers run after the super constructor
    void jfields_HighScoresCanvas()
    {
    @this.paintable_HighScoresCanvas = NullPaintable::getInstance();
    @this.highScoreCommandsFactory_HighScoresCanvas = HighScoreCommandsFactory::getInstance();
    @this.waitPaintable_HighScoresCanvas = SimpleTextPaintable().jinit_SimpleTextPaintable(this.commonStrings.PLEASE_WAIT_FOR_SERVER, BasicColorFactory::getInstance().WHITE);
    
    
    
    @this.highScoresHelper_HighScoresCanvas = HighScoresHelperBase().jinit_HighScoresHelperBase();
    
    
    @this.currentCommand_HighScoresCanvas = this.highScoreCommandsFactory_HighScoresCanvas.HIGH_SCORE_COMMANDS[0];
    this.hasPainted = false;
    }
    

    HighScoresCanvas@ jinit_HighScoresCanvas(CommandListener@ commandListener, AllBinaryGameLayerManager@ allBinaryGameLayerManager, GameInfo@ gameInfo, HighScoresPaintable@ paintable, HighScoresFactoryInterface@ highScoresFactoryInterface, HighScoresCanvasInputProcessorFactoryInterface@ highScoresCanvasInputProcessorFactoryInterface)
    {
        this.jinit_GameCommandCanvas(commandListener, HighScoresCanvas::NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.jfields_HighScoresCanvas();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        @this.highScoresPaintable_HighScoresCanvas = paintable;
        @this.highScoresFactoryInterface_HighScoresCanvas = highScoresFactoryInterface;
        @this.highScoresCanvasInputProcessor_HighScoresCanvas = highScoresCanvasInputProcessorFactoryInterface.getInstance(this);
        @this.gameInfo_HighScoresCanvas = gameInfo;
        this.waitPaintable_HighScoresCanvas.setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor());
        this.getHighScoresPaintable().setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor());
        @this.colorFillPaintable = ColorFillPaintableFactory::getInstance_jstatic().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
        if (int(this.highScoresHelper_HighScoresCanvas.getHighScoresArray().length()) == int(NoHighScoresFactory::getInstance().NO_HIGH_SCORES.length())) {
            this.setPaintable(this.waitPaintable_HighScoresCanvas);
        } else {
            this.logUtil.putF("Show HighScores that are already loaded", this, this.commonStrings.CONSTRUCTOR);
            this.updateCommand(this.currentCommand_HighScoresCanvas);
            this.setPaintable(this.getHighScoresPaintable());
        }
        SecondaryThreadPool::getInstance().runTask(HighScoreRunnable().jinit_HighScoreRunnable(this));
        return this;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory::getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    void open()
    {
        GameCommandCanvas::open();
        this.highScoresCanvasInputProcessor_HighScoresCanvas.open();
    }
    

    void close()
    {
        GameCommandCanvas::close();
        this.highScoresCanvasInputProcessor_HighScoresCanvas.close();
    }
    

    void paint(Graphics@ graphics)
    {
        this.colorFillPaintable.paint(graphics);
        this.paintable_HighScoresCanvas.paint(graphics);
        if (this.waitPaintable_HighScoresCanvas !is this.paintable_HighScoresCanvas) {
            this.highScoresCanvasInputProcessor_HighScoresCanvas.paint(graphics);
        }
        GameCommandCanvas::paint(graphics);
        this.hasPainted = true;
    }
    

    void executeUpdate()
    {
        try {
            this.highScoresFactoryInterface_HighScoresCanvas.fetchHighScores(this.getGameInfo(), this);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    HighScoresPaintable@ getHighScoresPaintable()
    {
        return this.highScoresPaintable_HighScoresCanvas;
    }
    

    void setHighScoresArray(HighScores@[]@ highScoresArray)
    {
        try {
            if (highScoresArray !is null) {
                this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings.START).appendint(int(highScoresArray.length())).toString(), this, "setHighScoresArray");
            } else {
                this.logUtil.putF(this.commonStrings.START, this, "setHighScoresArray");
            }
            this.highScoresHelper_HighScoresCanvas.setHighScoresArray(highScoresArray);
            this.updateCommand(this.currentCommand_HighScoresCanvas);
            this.setPaintable(this.getHighScoresPaintable());
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
            }
            else { jthrow(jex1); }
        }
    }
    

    void updateCommand(Command@ command)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings.START).append(this.stringUtil.toString(command)).toString(), this, this.commonStrings.UPDATE);
        GameCommandsFactory@ gameCommandsFactory = GameCommandsFactory::getInstance();
        if (this.highScoreCommandsFactory_HighScoresCanvas.isHighScoreCommand(command)) {
            int index = this.highScoreCommandsFactory_HighScoresCanvas.getIndex(command);
            int nextIndex = index + 1;
            HighScores@[]@ highScoresArray = this.highScoresHelper_HighScoresCanvas.getHighScoresArray();
            if (nextIndex >= int(highScoresArray.length())) {
                nextIndex = 0;
            }
            if (int(highScoresArray.length()) > 0) {
                this.getHighScoresPaintable().setHighScores(highScoresArray[index]);
            } else {
                this.getHighScoresPaintable().setHighScores(NullHighScoresSingletonFactory::getInstance());
            }
            if (index != nextIndex) {
                this.removeAllCommands();
                this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
                this.addCommand(this.highScoreCommandsFactory_HighScoresCanvas.HIGH_SCORE_COMMANDS[nextIndex]);
            }
        }
        @this.currentCommand_HighScoresCanvas = command;
        this.close();
        GameCommandCanvas::initMenu();
        this.open();
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    GameInfo@ getGameInfo()
    {
        return this.gameInfo_HighScoresCanvas;
    }
    

    void setPaintable(Paintable@ paintable)
    {
        @this.paintable_HighScoresCanvas = paintable;
        this.repaintBehavior.onChangeRepaint(this);
    }
}

namespace HighScoresCanvas
{
    const string NAME = "HighScoresCanvas";
}

