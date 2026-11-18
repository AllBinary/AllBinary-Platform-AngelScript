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
// package org.allbinary.game.physics.acceleration

class BasicAccelerationProperties : JObjectBase
{
    int forward;
    int reverse;
    

    BasicAccelerationProperties@ jinit_BasicAccelerationProperties(int forward, int reverse)
    {
        this.setForward(forward);
        this.setReverse(reverse);
        return this;
    }
    

    void setReverse(int reverse)
    {
        this.reverse = reverse;
    }
    

    int getReverse()
    {
        return this.reverse;
    }
    

    void setForward(int forward)
    {
        this.forward = forward;
    }
    

    int getForward()
    {
        return this.forward;
    }
}

