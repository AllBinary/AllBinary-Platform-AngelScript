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

class BasicGravityConstantVelocityMovement : BasicConstantVelocityMovement
{
    GravityUtil@ gravityUtil_BasicGravityConstantVelocityMovement;

    // Java field initializers run after the super constructor
    void jfields_BasicGravityConstantVelocityMovement()
    {
    @this.gravityUtil_BasicGravityConstantVelocityMovement = GravityUtil::getInstance();
    }
    

    BasicGravityConstantVelocityMovement@ jinit_BasicGravityConstantVelocityMovement(BasicDecimal@ speedBasicDecimal)
    {
        this.jinit_BasicConstantVelocityMovement(speedBasicDecimal, VelocityProperties().jinit_VelocityProperties(int(speedBasicDecimal.getUnscaled()), int(speedBasicDecimal.getUnscaled())));
        this.jfields_BasicGravityConstantVelocityMovement();
        return this;
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
        BasicConstantVelocityMovement::process(layer);
        this.gravityUtil_BasicGravityConstantVelocityMovement.process(this.getVelocityProperties(), this.gravityUtil_BasicGravityConstantVelocityMovement.GAME_GRAVITY_VELOCITY);
    }
}

