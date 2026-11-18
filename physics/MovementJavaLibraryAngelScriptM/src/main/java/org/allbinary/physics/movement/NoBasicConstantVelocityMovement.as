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
// package org.allbinary.physics.movement

class NoBasicConstantVelocityMovement : BasicConstantVelocityMovement
{
    

    NoBasicConstantVelocityMovement@ jinit_NoBasicConstantVelocityMovement()
    {
        this.jinit_BasicConstantVelocityMovement(BasicDecimal::ZERO_BIGDECIMAL, BasicVelocityProperties().jinit_BasicVelocityProperties());
        return this;
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
    }
}

