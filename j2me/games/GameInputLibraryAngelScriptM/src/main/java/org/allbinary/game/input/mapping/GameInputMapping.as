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
// package org.allbinary.game.input.mapping

class GameInputMapping : JObjectBase
{
    string name_GameInputMapping;
    GameKey@ gameKey_GameInputMapping;

    // Java field initializers run after the super constructor
    void jfields_GameInputMapping()
    {
    this.name_GameInputMapping = StringUtil::getInstance().EMPTY_STRING;
    @this.gameKey_GameInputMapping = GameKey::NULL_GAME_KEY;
    }
    

    GameInputMapping@ jinit_GameInputMapping(string name, GameKey@ gameKey)
    {
        this.jfields_GameInputMapping();
        this.setName(name);
        this.setGameKey(gameKey);
        return this;
    }
    

    void setGameKey(GameKey@ gameKey)
    {
        @this.gameKey_GameInputMapping = gameKey;
    }
    

    GameKey@ getGameKey()
    {
        return this.gameKey_GameInputMapping;
    }
    

    void setName(string name)
    {
        this.name_GameInputMapping = name;
    }
    

    string getName()
    {
        return this.name_GameInputMapping;
    }
}

