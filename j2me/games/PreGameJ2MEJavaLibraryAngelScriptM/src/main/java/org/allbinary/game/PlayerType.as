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

class PlayerType : JObjectBase
{
    int id_PlayerType;
    string name_PlayerType;

    // Java field initializers run after the super constructor
    void jfields_PlayerType()
    {
    
    this.name_PlayerType = StringUtil::getInstance().EMPTY_STRING;
    }
    

    PlayerType@ jinit_PlayerType(string name, int value)
    {
        this.jfields_PlayerType();
        this.name_PlayerType = name;
        this.id_PlayerType = value;
        return this;
    }
    

    int getId()
    {
        return this.id_PlayerType;
    }
    

    string getName()
    {
        return this.name_PlayerType;
    }
    

    string toString()
    {
        return this.getName();
    }
}

