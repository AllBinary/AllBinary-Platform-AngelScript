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

class HighScoreTextBox : CustomTextBox
{
    VirtualKeyboardEventHandler@ virtualKeyboardEventHandler_HighScoreTextBox;
    HighScoreUtil@ highScoreUtil_HighScoreTextBox;
    Paintable@ pleaseWait_HighScoreTextBox;
    Paintable@ paintable_HighScoreTextBox;
    bool submitted;

    // Java field initializers run after the super constructor
    void jfields_HighScoreTextBox()
    {
    @this.virtualKeyboardEventHandler_HighScoreTextBox = VirtualKeyboardEventHandler::getInstance();
    
    @this.pleaseWait_HighScoreTextBox = SimpleTextPaintable().jinit_SimpleTextPaintable(this.commonStrings.PLEASE_WAIT, BasicColorFactory::getInstance().WHITE);
    @this.paintable_HighScoreTextBox = NullPaintable::getInstance();
    this.submitted = false;
    }
    

    HighScoreTextBox@ jinit_HighScoreTextBox(HighScoresFactoryInterface@ highScoresFactoryInterface, HighScoresHelperBaseInterface@ highScoresHelper, AbeClientInformationInterface@ abeClientInformation, GameInfo@ gameInfo, CommandListener@ cmdListener, string name, HighScore@ highScore, BasicColor@ backgrounBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_CustomTextBox(cmdListener, "New High Score Enter Name:", name, 12, TextField::ANY, Font::getDefaultFont(), backgrounBasicColor, foregroundBasicColor);
        this.jfields_HighScoreTextBox();
        @this.highScoreUtil_HighScoreTextBox = HighScoreUtil().jinit_HighScoreUtil(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore);
        GenericOperatingSystem@ operatingSystemInterface = OperatingSystemFactory::getInstance().getOperatingSystemInstance();
        if (operatingSystemInterface.isOverScan()) {
            string username = InApplicationPurchaseFactory::getInstance().getUserName();
            this.getTextFieldItem().setString(username);
        }
        return this;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        this.removeAllCommands();
        PostGameCommandFactory::getInstance().addCommands(this);
        this.addCommand(HighScoreUtil::SUBMIT_TEXTBOX_COMMAND);
        this.setCommandListener(cmdListener);
    }
    

    void open()
    {
        this.virtualKeyboardEventHandler_HighScoreTextBox.open();
        @this.paintable_HighScoreTextBox = NullPaintable::getInstance();
        CustomTextBox::open();
    }
    

    void close()
    {
        this.virtualKeyboardEventHandler_HighScoreTextBox.close();
        @this.paintable_HighScoreTextBox = this.pleaseWait_HighScoreTextBox;
        this.repaintBehavior.onChangeRepaint(this);
        CustomTextBox::close();
        this.removeCommand(HighScoreUtil::SUBMIT_TEXTBOX_COMMAND);
        this.update();
        if (this.submitted) {
            this.highScoreUtil_HighScoreTextBox.saveHighScore();
        } else {
        }
        @this.paintable_HighScoreTextBox = NullPaintable::getInstance();
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    void update()
    {
        string name = this.getTextFieldItem().getString();
        this.highScoreUtil_HighScoreTextBox.update(name);
        CustomTextBox::update();
    }
    

    void paint(Graphics@ graphics)
    {
        CustomTextBox::paint(graphics);
        this.paintable_HighScoreTextBox.paint(graphics);
    }
    

    void saveHighScore()
    {
        this.highScoreUtil_HighScoreTextBox.saveHighScore();
    }
    

    void submit()
    {
        this.highScoreUtil_HighScoreTextBox.submit(this);
    }
}

