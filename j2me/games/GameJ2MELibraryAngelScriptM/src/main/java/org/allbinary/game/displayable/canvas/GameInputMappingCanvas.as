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

class GameInputMappingCanvas : GameCommandCanvas, InputMappingInterface
{
    ProcessPaintable@ paintable_GameInputMappingCanvas;
    InputMappingHelpPaintable@ helpPaintable_GameInputMappingCanvas;
    ColorFillBasePaintable@ colorFillPaintable;
    PersistentInputMapping@ inputMapping_GameInputMappingCanvas;
    GameKey@ NONE_GameInputMappingCanvas;
    AbeClientInformationInterface@ abeClientInformation_GameInputMappingCanvas;
    GameKey@ selectedGameKey_GameInputMappingCanvas;
    Input@ selectedInput_GameInputMappingCanvas;
    InputFactory@ inputFactory_GameInputMappingCanvas;

    // Java field initializers run after the super constructor
    void jfields_GameInputMappingCanvas()
    {
    
    
    
    
    @this.NONE_GameInputMappingCanvas = GameKeyFactory::getInstance().NONE;
    
    @this.selectedGameKey_GameInputMappingCanvas = this.NONE_GameInputMappingCanvas;
    @this.selectedInput_GameInputMappingCanvas = this.NONE_GameInputMappingCanvas;
    @this.inputFactory_GameInputMappingCanvas = InputFactory::getInstance();
    }
    

    GameInputMappingCanvas@ jinit_GameInputMappingCanvas(AbeClientInformationInterface@ abeClientInformation, CommandListener@ commandListener, AllBinaryGameLayerManager@ allBinaryGameLayerManager, HelpPaintable@ helpPaintable)
    {
        this.jinit_GameCommandCanvas(commandListener, GameInputMappingCanvas::NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.jfields_GameInputMappingCanvas();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        if (helpPaintable is null) {
            jthrow(Exception().jinit_Exception("Help Paintable Exception"));
        }
        @this.abeClientInformation_GameInputMappingCanvas = abeClientInformation;
        @this.helpPaintable_GameInputMappingCanvas = cast<InputMappingHelpPaintable>(helpPaintable);
        @this.inputMapping_GameInputMappingCanvas = PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance();
        @this.paintable_GameInputMappingCanvas = ProcessPaintable().jinit_ProcessPaintable();
        @this.colorFillPaintable = ColorFillPaintableFactory::getInstance_jstatic().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
        return this;
    }
    

    void close()
    {
        GameCommandCanvas::close();
        this.paintable_GameInputMappingCanvas.process();
        @this.selectedGameKey_GameInputMappingCanvas = this.NONE_GameInputMappingCanvas;
        @this.selectedInput_GameInputMappingCanvas = this.NONE_GameInputMappingCanvas;
        this.update();
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory::getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.addCommand(GameInputMappingCanvas::DEFAULT);
        this.addCommand(GameInputMappingInstructionsCanvas::DISPLAY);
        this.setCommandListener(cmdListener);
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
        this.addGameKey(keyCode, false);
        GameCommandCanvas::keyPressedByDevice(keyCode, 0);
    }
    

    void addGameKey(int keyCode, bool repeated)
    {
        try {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Raw Device Key Code: ").append(Integer::toHexString(keyCode)).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            GameKey@ gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            Input@ input = this.inputFactory_GameInputMappingCanvas.getInstanceById(keyCode);
            this.processInputMapping(gameKey, input);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void processInputMapping(GameKey@ gameKey, Input@ input)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Start Passed GameKey: ");
        stringBuffer.append(this.stringUtil.toString(gameKey));
        stringBuffer.append(" Input: ");
        stringBuffer.append(this.stringUtil.toString(input));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.PROCESS);
        if (this.selectedGameKey_GameInputMappingCanvas !is this.NONE_GameInputMappingCanvas) {
            this.gameActionCrud(gameKey, input);
        } else {
            this.setSelectedAction(gameKey);
        }
    }
    

    void setSelectedAction(GameKey@ gameKey)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Selected GameKey: ").append(this.stringUtil.toString(gameKey)).toString(), this, "setSelectedAction");
        @this.selectedGameKey_GameInputMappingCanvas = gameKey;
        @this.selectedInput_GameInputMappingCanvas = this.NONE_GameInputMappingCanvas;
        this.helpPaintable_GameInputMappingCanvas.update(this.selectedGameKey_GameInputMappingCanvas, this.selectedInput_GameInputMappingCanvas);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    void gameActionCrud(GameKey@ gameKey, Input@ input)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Start GameKey: ");
        stringBuffer.append(this.stringUtil.toString(this.selectedGameKey_GameInputMappingCanvas));
        stringBuffer.append(" Input: ");
        stringBuffer.append(this.stringUtil.toString(this.selectedInput_GameInputMappingCanvas));
        this.logUtil.putF(stringBuffer.toString(), this, "gameActionCrud");
        if (this.selectedInput_GameInputMappingCanvas is this.NONE_GameInputMappingCanvas) {
            BasicArrayList@ list = this.inputMapping_GameInputMappingCanvas.getInputMapping().getMappedInput(this.selectedGameKey_GameInputMappingCanvas);
            bool isInputAlreadyMappedToSelectedAction = list.contains(input);
            if (isInputAlreadyMappedToSelectedAction) {
                this.logUtil.putF(StringMaker().jinit_StringMaker().append("Already Mapped Input: ").append(this.stringUtil.toString(input)).toString(), this, "gameActionCrud");
                @this.selectedInput_GameInputMappingCanvas = input;
                this.helpPaintable_GameInputMappingCanvas.update(this.selectedGameKey_GameInputMappingCanvas, this.selectedInput_GameInputMappingCanvas);
                this.repaintBehavior.onChangeRepaint(this);
            } else {
                this.addNewMapping(gameKey, input);
            }
        } else if (this.inputMapping_GameInputMappingCanvas.isDelete(input)) {
            this.deleteCurrentMapping();
        } else {
            this.setSelectedAction(gameKey);
        }
    }
    

    void addNewMapping(GameKey@ gameKey, Input@ input)
    {
        string METHOD_NAME = "addNewMapping";
        this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME);
        bool isInputAlreadyMapped = this.inputMapping_GameInputMappingCanvas.getInputMapping().isMapped(input);
        if (!isInputAlreadyMapped && !this.inputMapping_GameInputMappingCanvas.isSystemInput(input)) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append("Add Key Mapping : GameKey: ");
            stringBuffer.append(this.stringUtil.toString(this.selectedGameKey_GameInputMappingCanvas));
            stringBuffer.append(" Input: ");
            stringBuffer.append(this.stringUtil.toString(this.selectedInput_GameInputMappingCanvas));
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            this.inputMapping_GameInputMappingCanvas.getInputMapping().add(this.selectedGameKey_GameInputMappingCanvas, input);
            @this.selectedInput_GameInputMappingCanvas = input;
            this.update();
        } else {
            this.logUtil.putF("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", this, METHOD_NAME);
            this.setSelectedAction(gameKey);
        }
    }
    

    void deleteCurrentMapping()
    {
        string METHOD_NAME = "deleteCurrentMapping";
        BasicArrayList@ list = this.inputMapping_GameInputMappingCanvas.getInputMapping().getMappedInput(this.selectedGameKey_GameInputMappingCanvas);
        if (list.size() > 1) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append("Start GameKey: ");
            stringBuffer.append("Remove Key Mapping: GameKey: ");
            stringBuffer.append(this.stringUtil.toString(this.selectedGameKey_GameInputMappingCanvas));
            stringBuffer.append(" Input: ");
            stringBuffer.append(this.stringUtil.toString(this.selectedInput_GameInputMappingCanvas));
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            this.inputMapping_GameInputMappingCanvas.getInputMapping().remove(this.selectedGameKey_GameInputMappingCanvas, this.selectedInput_GameInputMappingCanvas);
            @this.selectedInput_GameInputMappingCanvas = this.NONE_GameInputMappingCanvas;
            this.update();
        } else {
            this.logUtil.putF("Can't Remove Last Key Mapping", this, METHOD_NAME);
        }
    }
    

    void setDefault()
    {
        this.inputMapping_GameInputMappingCanvas.setDefault(this.abeClientInformation_GameInputMappingCanvas);
        this.helpPaintable_GameInputMappingCanvas.update(this.NONE_GameInputMappingCanvas, this.NONE_GameInputMappingCanvas);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    void update()
    {
        this.inputMapping_GameInputMappingCanvas.update(this.abeClientInformation_GameInputMappingCanvas);
        this.helpPaintable_GameInputMappingCanvas.update(this.selectedGameKey_GameInputMappingCanvas, this.selectedInput_GameInputMappingCanvas);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    void paint(Graphics@ graphics)
    {
        this.colorFillPaintable.paint(graphics);
        this.helpPaintable_GameInputMappingCanvas.paint(graphics);
        this.paintable_GameInputMappingCanvas.paint(graphics);
        GameCommandCanvas::paint(graphics);
    }
}

namespace GameInputMappingCanvas
{
    const string NAME = "GameInputMappingCanvas";

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        
        @jcell_DISPLAY = Command().jinit_Command("Controls", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 2);
        @jcell_DEFAULT = Command().jinit_Command("Default", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 2);
    }

    Command@ jcell_DISPLAY;
    Command@ get_DISPLAY() property { jclinit(); return jcell_DISPLAY; }
    void set_DISPLAY(Command@ value) property { jclinit(); @jcell_DISPLAY = value; }

    Command@ jcell_DEFAULT;
    Command@ get_DEFAULT() property { jclinit(); return jcell_DEFAULT; }
    void set_DEFAULT(Command@ value) property { jclinit(); @jcell_DEFAULT = value; }
}

