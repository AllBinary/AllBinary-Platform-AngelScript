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
// package org.allbinary.graphics.form.item

class CommandTextItem : ABTextItem
{
    Command@ command_CommandTextItem;
    

    CommandTextItem@ jinit_CommandTextItem(Command@ command, int layout, string altText, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_ABTextItem(command.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor);
        @this.command_CommandTextItem = command;
        return this;
    }
    

    bool isFocusable()
    {
        return true;
    }
    

    Command@ getCommand()
    {
        return this.command_CommandTextItem;
    }
}

