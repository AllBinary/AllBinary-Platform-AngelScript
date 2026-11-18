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
// package org.allbinary.game.input.event

class GameKeyEvent : AllBinaryEventObject
{
    int sourceId_GameKeyEvent;
    bool repeated_GameKeyEvent;
    int key_GameKeyEvent;
    int gameActionKey_GameKeyEvent;
    int originalKey_GameKeyEvent;
    

    GameKeyEvent@ jinit_GameKeyEvent(JObject@ anyType, int sourceId, int originalKey, int gameActionKey, int key, bool repeated)
    {
        this.jinit_AllBinaryEventObject(anyType);
        this.sourceId_GameKeyEvent = sourceId;
        this.setOriginalKey(originalKey);
        this.key_GameKeyEvent = key;
        this.setGameActionKey(gameActionKey);
        this.setRepeatEvents(repeated);
        return this;
    }
    

    void init(JObject@ anyType)
    {
        this.setSource(anyType);
    }
    

    void setRepeatEvents(bool repeated)
    {
        this.repeated_GameKeyEvent = repeated;
    }
    

    bool hasRepeatEvents()
    {
        return this.repeated_GameKeyEvent;
    }
    

    int getKey()
    {
        return this.key_GameKeyEvent;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("\nKey: ");
        stringBuffer.appendint(this.getKey());
        return stringBuffer.toString();
    }
    

    int getOriginalKey()
    {
        return this.originalKey_GameKeyEvent;
    }
    

    void setOriginalKey(int originalKey)
    {
        this.originalKey_GameKeyEvent = originalKey;
    }
    

    int getGameActionKey()
    {
        return this.gameActionKey_GameKeyEvent;
    }
    

    void setGameActionKey(int gameActionKey)
    {
        this.gameActionKey_GameKeyEvent = gameActionKey;
    }
    

    int getSourceId()
    {
        return this.sourceId_GameKeyEvent;
    }
}

namespace GameKeyEvent
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NONE = GameKeyEvent().jinit_GameKeyEvent(NullUtil::getInstance().NULL_OBJECT, -1, -1, -1, -1, false);
    }

    GameKeyEvent@ jcell_NONE;
    GameKeyEvent@ get_NONE() property { jclinit(); return jcell_NONE; }
    void set_NONE(GameKeyEvent@ value) property { jclinit(); @jcell_NONE = value; }
    

    GameKeyEvent@ createEvent(JObject@ anyType, int sourceId, int key)
    {
        return GameKeyEvent().jinit_GameKeyEvent(anyType, sourceId, 0, 0, key, false);
    }
}

