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
    string TEASER_DEMO_GAME_END_LAST_LEVEL;
    string TEASER_DEMO_GAME_END;
    string gameOverStr;
    string winStr;

    // Java field initializers run after the super constructor
    void jfields_EndGameInfo()
    {
    this.NORMAL_GAME_OVER_WIN = "You Won";
    this.TEASER_DEMO_GAME_END_LAST_LEVEL = "End of Demo.";
    this.TEASER_DEMO_GAME_END = "Demo Game Over.";
    this.gameOverStr = StringUtil::getInstance().EMPTY_STRING;
    this.winStr = this.gameOverStr;
    }

    EndGameInfo@ jinit_EndGameInfo()
    {
        this.jfields_EndGameInfo();
        return this;
    }
    

    void update(GameInfo@ gameInfo, MyCanvas@ myCanvas)
    {
        if (gameInfo.isLastLevel()) {
            this.setWinStr(this.TEASER_DEMO_GAME_END_LAST_LEVEL);
            this.setGameOverStr(this.TEASER_DEMO_GAME_END_LAST_LEVEL);
        } else {
            this.setWinStr(this.NORMAL_GAME_OVER_WIN);
            this.setGameOverStr(this.TEASER_DEMO_GAME_END);
        }
    }
    

    string getGameOverStr()
    {
        return this.gameOverStr;
    }
    

    void setGameOverStr(string gameOverStr)
    {
        this.gameOverStr = gameOverStr;
    }
    

    string getWinStr()
    {
        return this.winStr;
    }
    

    void setWinStr(string winStr)
    {
        this.winStr = winStr;
    }
}

