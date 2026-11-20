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

class EndGameInfo : JObjectBase
{
    string NORMAL_GAME_OVER_WIN;
    string TEASER_DEMO_GAME_END_LAST_LEVEL_EndGameInfo;
    string TEASER_DEMO_GAME_END_EndGameInfo;
    string gameOverStr_EndGameInfo;
    string winStr_EndGameInfo;

    // Java field initializers run after the super constructor
    void jfields_EndGameInfo()
    {
    this.NORMAL_GAME_OVER_WIN = "You Won";
    this.TEASER_DEMO_GAME_END_LAST_LEVEL_EndGameInfo = "End of Demo.";
    this.TEASER_DEMO_GAME_END_EndGameInfo = "Demo Game Over.";
    this.gameOverStr_EndGameInfo = StringUtil::getInstance().EMPTY_STRING;
    this.winStr_EndGameInfo = this.gameOverStr_EndGameInfo;
    }

    EndGameInfo@ jinit_EndGameInfo()
    {
        this.jfields_EndGameInfo();
        return this;
    }
    

    void update(GameInfo@ gameInfo, MyCanvas@ myCanvas)
    {
        if (gameInfo.isLastLevel()) {
            this.setWinStr(this.TEASER_DEMO_GAME_END_LAST_LEVEL_EndGameInfo);
            this.setGameOverStr(this.TEASER_DEMO_GAME_END_LAST_LEVEL_EndGameInfo);
        } else {
            this.setWinStr(this.NORMAL_GAME_OVER_WIN);
            this.setGameOverStr(this.TEASER_DEMO_GAME_END_EndGameInfo);
        }
    }
    

    string getGameOverStr()
    {
        return this.gameOverStr_EndGameInfo;
    }
    

    void setGameOverStr(string gameOverStr)
    {
        this.gameOverStr_EndGameInfo = gameOverStr;
    }
    

    string getWinStr()
    {
        return this.winStr_EndGameInfo;
    }
    

    void setWinStr(string winStr)
    {
        this.winStr_EndGameInfo = winStr;
    }
}

