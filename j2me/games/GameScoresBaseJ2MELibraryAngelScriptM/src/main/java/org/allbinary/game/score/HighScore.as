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
    int id;
    string name;
    GameInfo@ gameInfo;
    int64 score;
    string scoreString;
    

    HighScore@ jinit_HighScore(int id, string name, GameInfo@ gameInfo, int64 score)
    {
        this.id = id;
        this.name = name;
        @this.gameInfo = gameInfo;
        this.score = score;
        this.scoreString = Long::toString(this.score);
        return this;
    }
    

    int getId()
    {
        return this.id;
    }
    

    string getName()
    {
        return this.name;
    }
    

    int64 getScore()
    {
        return this.score;
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
        return this.gameInfo;
    }
    

    string getScoreString()
    {
        return this.scoreString;
    }
    

    void setName(string name)
    {
        this.name = name;
    }
    

    string toString()
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        return StringMaker().jinit_StringMaker().append(this.name).append(commonSeps.COLON).appendlong(this.score).append(commonSeps.FORWARD_SLASH).append(this.scoreString).toString();
    }
}

