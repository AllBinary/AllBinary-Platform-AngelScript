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

class InGameOptionsForm : CommandForm
{
    

    InGameOptionsForm@ jinit_InGameOptionsForm(CommandListener@ commandListener, string title, BasicColor@ backgrounBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_CommandForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        GameFeatureFormUtil@ gameFeatureFormUtil = GameFeatureFormUtil::getInstance();
        gameFeatureFormUtil.addChoiceGroup(this, InGameFeatureChoiceGroups::getExclusiveInstance().get(), Choice::EXCLUSIVE);
        gameFeatureFormUtil.addChoiceGroup(this, InGameFeatureChoiceGroups::getMultipleInstance().get(), Choice::MULTIPLE);
        this.initCommands(commandListener);
        return this;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory::getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.addCommand(InGameOptionsForm::DEFAULT);
        this.setCommandListener(cmdListener);
    }
}

namespace InGameOptionsForm
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_DISPLAY = Command().jinit_Command("Options In Game", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
        @jcell_SAVE = Command().jinit_Command("Save", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
        @jcell_DEFAULT = Command().jinit_Command("Default", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    }

    Command@ jcell_DISPLAY;
    Command@ get_DISPLAY() property { jclinit(); return jcell_DISPLAY; }
    void set_DISPLAY(Command@ value) property { jclinit(); @jcell_DISPLAY = value; }

    Command@ jcell_SAVE;
    Command@ get_SAVE() property { jclinit(); return jcell_SAVE; }
    void set_SAVE(Command@ value) property { jclinit(); @jcell_SAVE = value; }

    Command@ jcell_DEFAULT;
    Command@ get_DEFAULT() property { jclinit(); return jcell_DEFAULT; }
    void set_DEFAULT(Command@ value) property { jclinit(); @jcell_DEFAULT = value; }
}

