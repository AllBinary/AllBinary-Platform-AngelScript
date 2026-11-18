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
// package org.allbinary.game

class GameInfo : JObjectBase
{
    LogUtil@ logUtil;
    GameInfoData@ gameInfoData;
    GameType@ gameType;
    GameMode@ gameMode;
    PlayerType@ playerType;
    int highestLevel;
    int currentLevel;
    string NEW_LEVEL;
    string SET_CURRENT_LEVEL;
    string NEXT_GAME_LEVEL;

    // Java field initializers run after the super constructor
    void jfields_GameInfo()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.gameInfoData = GameInfoData::getInstance();
    
    
    
    
    
    this.NEW_LEVEL = "New Level: ";
    this.SET_CURRENT_LEVEL = "setCurrentLevel";
    this.NEXT_GAME_LEVEL = "nextGameLevel";
    }
    

    GameInfo@ jinit_GameInfo(GameType@ gameType, GameMode@ gameMode, PlayerType@ playerType, int highestLevel, int currentLevel)
    {
        this.jfields_GameInfo();
        @this.gameType = gameType;
        @this.gameMode = gameMode;
        this.setHighestLevel(highestLevel);
        this.currentLevel = currentLevel;
        @this.playerType = playerType;
        return this;
    }
    

    GameType@ getGameType()
    {
        return this.gameType;
    }
    

    GameMode@ getGameMode()
    {
        return this.gameMode;
    }
    

    PlayerType@ getPlayerType()
    {
        return this.playerType;
    }
    

    int getHighestLevel()
    {
        return this.highestLevel;
    }
    

    void setHighestLevel(int highestLevel)
    {
        this.highestLevel = highestLevel;
    }
    

    int getCurrentLevel()
    {
        return this.currentLevel;
    }
    

    void setCurrentLevel(int currentLevel)
    {
        this.currentLevel = currentLevel;
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, this.SET_CURRENT_LEVEL);
    }
    

    void nextGameLevel()
    {
        if (this.getCurrentLevel() < this.getHighestLevel()) {
            this.currentLevel++;
        }
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().NEXT).append(CommonSeps::getInstance().SPACE).append(this.NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, this.NEXT_GAME_LEVEL);
    }
    

    void previousGameLevel()
    {
        if (this.getCurrentLevel() > 1) {
            this.currentLevel--;
        }
    }
    

    bool isLastLevel()
    {
        if (this.getCurrentLevel() >= this.getHighestLevel()) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    ABHashtable@ toHashtable()
    {
        ABHashtable@ hashtable = StdUtil::getInstance().createHashtable();
        hashtable.put(this.gameInfoData.GAME_TYPE, this.getGameType().toString());
        hashtable.put(this.gameInfoData.GAME_MODE, this.gameMode.toString());
        hashtable.put(this.gameInfoData.PLAYER_TYPE, this.playerType.toString());
        hashtable.put(this.gameInfoData.HIGHEST_LEVEL, Integer::toString(this.getHighestLevel()));
        hashtable.put(this.gameInfoData.CURRENT_LEVEL, Integer::toString(this.currentLevel));
        return hashtable;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        stringBuffer.append(this.gameInfoData.GAME_TYPE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(this.getGameType().toString());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.GAME_MODE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(this.gameMode.toString());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.PLAYER_TYPE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(StringUtil::getInstance().toString(this.playerType));
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.HIGHEST_LEVEL);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.appendint(this.getHighestLevel());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.CURRENT_LEVEL);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.appendint(this.currentLevel);
        return stringBuffer.toString();
    }
}

namespace GameInfo
{
    const string LEVEL_NAME = "LEVEL";

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NONE = GameInfo().jinit_GameInfo(GameTypeFactory::getInstance().NONE, GameMode::NONE, PlayerTypesFactory::getInstance().PLAYER_TYPE_ONE, -1, -1);
        
    }

    GameInfo@ jcell_NONE;
    GameInfo@ get_NONE() property { jclinit(); return jcell_NONE; }
    void set_NONE(GameInfo@ value) property { jclinit(); @jcell_NONE = value; }
}

