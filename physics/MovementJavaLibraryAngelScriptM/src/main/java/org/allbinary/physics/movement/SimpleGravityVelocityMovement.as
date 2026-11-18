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

class SimpleGravityVelocityMovement : BasicConstantVelocityMovement
{
    GravityUtil@ gravityUtil_SimpleGravityVelocityMovement;

    // Java field initializers run after the super constructor
    void jfields_SimpleGravityVelocityMovement()
    {
    @this.gravityUtil_SimpleGravityVelocityMovement = GravityUtil::getInstance();
    }
    

    SimpleGravityVelocityMovement@ jinit_SimpleGravityVelocityMovement(BasicDecimal@ speedBasicDecimal)
    {
        this.jinit_BasicConstantVelocityMovement(speedBasicDecimal, VelocityProperties().jinit_VelocityProperties(int(speedBasicDecimal.getUnscaled()), int(speedBasicDecimal.getUnscaled())));
        this.jfields_SimpleGravityVelocityMovement();
        return this;
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
        this.gravityUtil_SimpleGravityVelocityMovement.process(this.getVelocityProperties(), this.gravityUtil_SimpleGravityVelocityMovement.GAME_GRAVITY_VELOCITY);
        BasicConstantVelocityMovement::process(layer);
    }
}

