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

class GameInputMappingInstructionsCanvas : GameCommandCanvas
{
    DrawStringUtil@ drawStringUtil_GameInputMappingInstructionsCanvas;
    string TITLE;
    string[]@ instructions_GameInputMappingInstructionsCanvas;
    ColorFillBasePaintable@ colorFillPaintable_GameInputMappingInstructionsCanvas;
    int anchor_GameInputMappingInstructionsCanvas;

    // Java field initializers run after the super constructor
    void jfields_GameInputMappingInstructionsCanvas()
    {
    @this.drawStringUtil_GameInputMappingInstructionsCanvas = DrawStringUtil::getInstance();
    this.TITLE = "Input Instructions";
    @this.instructions_GameInputMappingInstructionsCanvas = array<string> = {"Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", StringUtil::getInstance().EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."};
    
    this.anchor_GameInputMappingInstructionsCanvas = Anchor::TOP_LEFT;
    }
    

    GameInputMappingInstructionsCanvas@ jinit_GameInputMappingInstructionsCanvas(CommandListener@ commandListener, AllBinaryGameLayerManager@ allBinaryGameLayerManager)
    {
        this.jinit_GameCommandCanvas(commandListener, GameInputMappingInstructionsCanvas::NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.jfields_GameInputMappingInstructionsCanvas();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        @this.colorFillPaintable_GameInputMappingInstructionsCanvas = ColorFillPaintableFactory::getInstance_jstatic().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
        return this;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        this.removeAllCommands();
        this.addCommand(GameInputMappingInstructionsCanvas::CLOSE);
        this.setCommandListener(cmdListener);
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor.process(graphics);
        this.colorFillPaintable_GameInputMappingInstructionsCanvas.paint(graphics);
        int halfWidth = this.displayInfo.getLastHalfWidth();
        int beginWidth = (graphics.getFont().stringWidth(this.TITLE) >>> 1);
        graphics.setColor(this.foregroundColor);
        graphics.drawString(this.TITLE, halfWidth - beginWidth, this.fontHeight, this.anchor_GameInputMappingInstructionsCanvas);
        this.drawStringUtil_GameInputMappingInstructionsCanvas.drawCenterStrings(graphics, this.instructions_GameInputMappingInstructionsCanvas, this.displayInfo.getLastWidth(), this.fontHeight, halfWidth, 3 * this.fontHeight);
        GameCommandCanvas::paint(graphics);
    }
}

namespace GameInputMappingInstructionsCanvas
{
    const string NAME = "GameInputMappingInstructionsCanvas";

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_DISPLAY = Command().jinit_Command("Help", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
        @jcell_CLOSE = Command().jinit_Command("Close", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
        
    }

    Command@ jcell_DISPLAY;
    Command@ get_DISPLAY() property { jclinit(); return jcell_DISPLAY; }
    void set_DISPLAY(Command@ value) property { jclinit(); @jcell_DISPLAY = value; }

    Command@ jcell_CLOSE;
    Command@ get_CLOSE() property { jclinit(); return jcell_CLOSE; }
    void set_CLOSE(Command@ value) property { jclinit(); @jcell_CLOSE = value; }
}

