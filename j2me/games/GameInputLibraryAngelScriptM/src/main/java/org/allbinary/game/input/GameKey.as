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
// package org.allbinary.game.input

class GameKey : Input
{
    

    GameKey@ jinit_GameKey(int key, string name)
    {
        this.jinit_Input(key, name);
        return this;
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append("GameKey ").append(Input::toString()).toString();
    }
}

namespace GameKey
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_GAME_KEY = GameKey().jinit_GameKey(-1, StringUtil::getInstance().NULL_STRING);
    }

    GameKey@ jcell_NULL_GAME_KEY;
    GameKey@ get_NULL_GAME_KEY() property { jclinit(); return jcell_NULL_GAME_KEY; }
    void set_NULL_GAME_KEY(GameKey@ value) property { jclinit(); @jcell_NULL_GAME_KEY = value; }
}

