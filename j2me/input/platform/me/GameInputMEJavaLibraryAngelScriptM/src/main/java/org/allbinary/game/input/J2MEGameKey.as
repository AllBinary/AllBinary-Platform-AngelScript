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

class J2MEGameKey : Input
{
    

    J2MEGameKey@ jinit_J2MEGameKey(int key, string keyName)
    {
        this.jinit_Input(key, keyName);
        int id = this.getId();
        if (id >= 0) {
            InputFactory@ inputFactory = InputFactory::getInstance();
            inputFactory.add(id, this);
        }
        return this;
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append("J2MEGameKey: ").append(Input::toString()).toString();
    }
}

namespace J2MEGameKey
{
    

    string getString(int keyCode)
    {
        Input@ input = InputFactory::getInstance().getInstanceById(keyCode);
        if (input !is null) {
            return input.getName();
        } else {
            return StringUtil::getInstance().EMPTY_STRING;
        }
        return "";
    }
}

