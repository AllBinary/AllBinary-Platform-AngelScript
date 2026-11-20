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

class Input : JObjectBase
{
    int id_Input;
    string name_Input;

    // Java field initializers run after the super constructor
    void jfields_Input()
    {
    
    this.name_Input = StringUtil::getInstance().EMPTY_STRING;
    }
    

    Input@ jinit_Input(int id, string name)
    {
        this.jfields_Input();
        this.setId(id);
        this.setName(name);
        return this;
    }
    

    int getId()
    {
        return this.id_Input;
    }
    

    void setId(int key)
    {
        this.id_Input = key;
    }
    

    string getName()
    {
        return this.name_Input;
    }
    

    void setName(string keyName)
    {
        this.name_Input = keyName;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Name: ");
        stringBuffer.append(this.getName());
        stringBuffer.append(" Id: ");
        stringBuffer.appendint(this.getId());
        return stringBuffer.toString();
    }
}

