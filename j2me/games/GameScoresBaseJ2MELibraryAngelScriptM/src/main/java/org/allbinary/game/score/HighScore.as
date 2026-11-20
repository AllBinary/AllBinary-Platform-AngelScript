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

class HighScore : JObjectBase
{
    int id_HighScore;
    string name_HighScore;
    GameInfo@ gameInfo_HighScore;
    int64 score_HighScore;
    string scoreString_HighScore;
    

    HighScore@ jinit_HighScore(int id, string name, GameInfo@ gameInfo, int64 score)
    {
        this.id_HighScore = id;
        this.name_HighScore = name;
        @this.gameInfo_HighScore = gameInfo;
        this.score_HighScore = score;
        this.scoreString_HighScore = Long::toString(this.score_HighScore);
        return this;
    }
    

    int getId()
    {
        return this.id_HighScore;
    }
    

    string getName()
    {
        return this.name_HighScore;
    }
    

    int64 getScore()
    {
        return this.score_HighScore;
    }
    

    int8[]@ getAsBytes()
    {
        ByteArrayOutputStream@ byteArrayOutputStream = ByteArrayOutputStream().jinit_ByteArrayOutputStream();
        DataOutputStream@ outputStream = DataOutputStream().jinit_DataOutputStream(byteArrayOutputStream);
        outputStream.writeUTF(this.getName());
        outputStream.writeLong(this.getScore());
        return byteArrayOutputStream.toByteArray();
    }
    

    GameInfo@ getGameInfo()
    {
        return this.gameInfo_HighScore;
    }
    

    string getScoreString()
    {
        return this.scoreString_HighScore;
    }
    

    void setName(string name)
    {
        this.name_HighScore = name;
    }
    

    string toString()
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        return StringMaker().jinit_StringMaker().append(this.name_HighScore).append(commonSeps.COLON).appendlong(this.score_HighScore).append(commonSeps.FORWARD_SLASH).append(this.scoreString_HighScore).toString();
    }
}

