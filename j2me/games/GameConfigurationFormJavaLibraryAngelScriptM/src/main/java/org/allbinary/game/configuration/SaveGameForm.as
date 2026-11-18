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
// package org.allbinary.game.configuration

class SaveGameForm : CommandForm
{
    MIDPUtil@ meUtil_SaveGameForm;

    // Java field initializers run after the super constructor
    void jfields_SaveGameForm()
    {
    @this.meUtil_SaveGameForm = MIDPUtil::getInstance();
    }
    

    SaveGameForm@ jinit_SaveGameForm(CommandListener@ commandListener, string title, BasicColor@ backgrounBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_CommandForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.jfields_SaveGameForm();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        string timeString = Long::toString(ABSystemWrapper::getInstance().currentTimeMillis());
        this.meUtil_SaveGameForm.appendItem(this, TextField().jinit_TextField("Name: ", timeString, 30, TextField::ANY));
        this.initCommands(commandListener);
        return this;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        GameCommandsFactory@ gameCommandsFactory = GameCommandsFactory::getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.SAVE);
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
}

namespace SaveGameForm
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_FORM = CommandForm::getNullCommandForm();
    }

    CommandForm@ jcell_FORM;
    CommandForm@ get_FORM() property { jclinit(); return jcell_FORM; }
    void set_FORM(CommandForm@ value) property { jclinit(); @jcell_FORM = value; }
    

    CommandForm@ createForm(CommandListener@ commandListener, string title, BasicColor@ backgrounBasicColor, BasicColor@ foregroundBasicColor)
    {
        @SaveGameForm::FORM = SaveGameForm().jinit_SaveGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        return SaveGameForm::FORM;
    }
    

    CommandForm@ getInstance()
    {
        return SaveGameForm::FORM;
    }
}

