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

class HighScoreCommandsBaseFactory : JObjectBase
{
    LogUtil@ logUtil;
    Command@[]@ HIGH_SCORE_COMMANDS;

    // Java field initializers run after the super constructor
    void jfields_HighScoreCommandsBaseFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    
    }
    

    HighScoreCommandsBaseFactory@ jinit_HighScoreCommandsBaseFactory(Command@[]@ HIGH_SCORE_COMMANDS)
    {
        this.jfields_HighScoreCommandsBaseFactory();
        @this.HIGH_SCORE_COMMANDS = HIGH_SCORE_COMMANDS;
        return this;
    }
    

    bool isHighScoreCommand(Command@ command)
    {
        for (int index = int(this.HIGH_SCORE_COMMANDS.length()) - 1; index >= 0; index--) {
            if (command is this.HIGH_SCORE_COMMANDS[index]) {
                return true;
            }
        }
        return false;
    }
    

    int getIndex(Command@ command)
    {
        for (int index = int(this.HIGH_SCORE_COMMANDS.length()) - 1; index >= 0; index--) {
            if (command is this.HIGH_SCORE_COMMANDS[index]) {
                return index;
            }
        }
        jthrow(Exception().jinit_Exception("No Such Command"));
        return 0;
    }
}

