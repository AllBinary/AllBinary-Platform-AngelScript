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

class InputProcessor : JObjectBase
{
    GameInputStrings@ gameInputStrings;

    // Java field initializers run after the super constructor
    void jfields_InputProcessor()
    {
    @this.gameInputStrings = GameInputStrings::getInstance();
    }

    InputProcessor@ jinit_InputProcessor()
    {
        this.jfields_InputProcessor();
        return this;
    }
    

    void keyPressedByDevice(int keyCode, int deviceId)
    {
    }
    

    void keyReleasedByDevice(Canvas@ canvas, int keyCode, int deviceId)
    {
    }
}

