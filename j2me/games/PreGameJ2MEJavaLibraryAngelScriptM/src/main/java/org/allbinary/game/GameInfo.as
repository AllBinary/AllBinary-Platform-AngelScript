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
    GameInfoData@ gameInfoData_GameInfo;
    GameType@ gameType_GameInfo;
    GameMode@ gameMode_GameInfo;
    PlayerType@ playerType_GameInfo;
    int highestLevel_GameInfo;
    int currentLevel_GameInfo;
    string NEW_LEVEL_GameInfo;
    string SET_CURRENT_LEVEL_GameInfo;
    string NEXT_GAME_LEVEL_GameInfo;

    // Java field initializers run after the super constructor
    void jfields_GameInfo()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.gameInfoData_GameInfo = GameInfoData::getInstance();
    
    
    
    
    
    this.NEW_LEVEL_GameInfo = "New Level: ";
    this.SET_CURRENT_LEVEL_GameInfo = "setCurrentLevel";
    this.NEXT_GAME_LEVEL_GameInfo = "nextGameLevel";
    }
    

    GameInfo@ jinit_GameInfo(GameType@ gameType, GameMode@ gameMode, PlayerType@ playerType, int highestLevel, int currentLevel)
    {
        this.jfields_GameInfo();
        @this.gameType_GameInfo = gameType;
        @this.gameMode_GameInfo = gameMode;
        this.setHighestLevel(highestLevel);
        this.currentLevel_GameInfo = currentLevel;
        @this.playerType_GameInfo = playerType;
        return this;
    }
    

    GameType@ getGameType()
    {
        return this.gameType_GameInfo;
    }
    

    GameMode@ getGameMode()
    {
        return this.gameMode_GameInfo;
    }
    

    PlayerType@ getPlayerType()
    {
        return this.playerType_GameInfo;
    }
    

    int getHighestLevel()
    {
        return this.highestLevel_GameInfo;
    }
    

    void setHighestLevel(int highestLevel)
    {
        this.highestLevel_GameInfo = highestLevel;
    }
    

    int getCurrentLevel()
    {
        return this.currentLevel_GameInfo;
    }
    

    void setCurrentLevel(int currentLevel)
    {
        this.currentLevel_GameInfo = currentLevel;
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.NEW_LEVEL_GameInfo).appendint(this.getCurrentLevel()).toString(), this, this.SET_CURRENT_LEVEL_GameInfo);
    }
    

    void nextGameLevel()
    {
        if (this.getCurrentLevel() < this.getHighestLevel()) {
            this.currentLevel_GameInfo++;
        }
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().NEXT).append(CommonSeps::getInstance().SPACE).append(this.NEW_LEVEL_GameInfo).appendint(this.getCurrentLevel()).toString(), this, this.NEXT_GAME_LEVEL_GameInfo);
    }
    

    void previousGameLevel()
    {
        if (this.getCurrentLevel() > 1) {
            this.currentLevel_GameInfo--;
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
        hashtable.put(this.gameInfoData_GameInfo.GAME_TYPE, this.getGameType().toString());
        hashtable.put(this.gameInfoData_GameInfo.GAME_MODE, this.gameMode_GameInfo.toString());
        hashtable.put(this.gameInfoData_GameInfo.PLAYER_TYPE, this.playerType_GameInfo.toString());
        hashtable.put(this.gameInfoData_GameInfo.HIGHEST_LEVEL, Integer::toString(this.getHighestLevel()));
        hashtable.put(this.gameInfoData_GameInfo.CURRENT_LEVEL, Integer::toString(this.currentLevel_GameInfo));
        return hashtable;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        stringBuffer.append(this.gameInfoData_GameInfo.GAME_TYPE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(this.getGameType().toString());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData_GameInfo.GAME_MODE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(this.gameMode_GameInfo.toString());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData_GameInfo.PLAYER_TYPE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(StringUtil::getInstance().toString(this.playerType_GameInfo));
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData_GameInfo.HIGHEST_LEVEL);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.appendint(this.getHighestLevel());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData_GameInfo.CURRENT_LEVEL);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.appendint(this.currentLevel_GameInfo);
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

