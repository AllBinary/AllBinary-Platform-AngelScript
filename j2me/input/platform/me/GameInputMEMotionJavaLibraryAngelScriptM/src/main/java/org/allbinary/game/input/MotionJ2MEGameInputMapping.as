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

class MotionJ2MEGameInputMapping : J2MEGameInputMapping
{

    MotionJ2MEGameInputMapping@ jinit_MotionJ2MEGameInputMapping()
    {
        this.jinit_J2MEGameInputMapping();
        return this;
    }
    

    InputToGameKeyMapping@ getDefault()
    {
        return MotionJ2MEDefaultGameInputMapping().jinit_MotionJ2MEDefaultGameInputMapping().getInputMapping();
    }
}

