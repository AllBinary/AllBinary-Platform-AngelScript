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
// package org.allbinary.game.score

class HighScoreCommands : JObjectBase
{
    Command@ DISPLAY;
    Command@ PERSONAL;
    Command@ WORLD;

    // Java field initializers run after the super constructor
    void jfields_HighScoreCommands()
    {
    @this.DISPLAY = Command().jinit_Command("Scores", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.PERSONAL = Command().jinit_Command("Personal", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.WORLD = Command().jinit_Command("World", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    }

    HighScoreCommands@ jinit_HighScoreCommands()
    {
        this.jfields_HighScoreCommands();
        return this;
    }
}

namespace HighScoreCommands
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = HighScoreCommands().jinit_HighScoreCommands();
    }

    HighScoreCommands@ jcell_instance;
    HighScoreCommands@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(HighScoreCommands@ value) property { jclinit(); @jcell_instance = value; }
    

    HighScoreCommands@ getInstance()
    {
        return HighScoreCommands::instance;
    }
}

