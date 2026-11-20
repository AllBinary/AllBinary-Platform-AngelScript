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

class GameMode : JObjectBase
{
    string name_GameMode;

    // Java field initializers run after the super constructor
    void jfields_GameMode()
    {
    this.name_GameMode = StringUtil::getInstance().EMPTY_STRING;
    }
    

    GameMode@ jinit_GameMode(string name)
    {
        this.jfields_GameMode();
        this.setName(name);
        return this;
    }
    

    void setName(string name)
    {
        this.name_GameMode = name;
    }
    

    string getName()
    {
        return this.name_GameMode;
    }
    

    string toString()
    {
        return this.getName();
    }
}

namespace GameMode
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NONE = GameMode().jinit_GameMode(StringUtil::getInstance().NULL_STRING);
        @jcell_SERVER = GameMode().jinit_GameMode("Server");
        @jcell_CLIENT = GameMode().jinit_GameMode("Client");
    }

    GameMode@ jcell_NONE;
    GameMode@ get_NONE() property { jclinit(); return jcell_NONE; }
    void set_NONE(GameMode@ value) property { jclinit(); @jcell_NONE = value; }

    GameMode@ jcell_SERVER;
    GameMode@ get_SERVER() property { jclinit(); return jcell_SERVER; }
    void set_SERVER(GameMode@ value) property { jclinit(); @jcell_SERVER = value; }

    GameMode@ jcell_CLIENT;
    GameMode@ get_CLIENT() property { jclinit(); return jcell_CLIENT; }
    void set_CLIENT(GameMode@ value) property { jclinit(); @jcell_CLIENT = value; }
}

