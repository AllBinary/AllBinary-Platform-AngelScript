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

class PCGameKey : Input
{
    

    PCGameKey@ jinit_PCGameKey(int keyCode, string name)
    {
        this.jinit_Input(keyCode, name);
        int id = this.getId();
        if (id >= 0) {
            InputFactory::getInstance().add(id, this);
        }
        return this;
    }
    

    string toString()
    {
        return "PCGameKey: " + Input::toString();
    }
}

namespace PCGameKey
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

