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

class CustomGravityConstantVelocityMovement : BasicConstantVelocityMovement
{
    int customGravity_CustomGravityConstantVelocityMovement;
    GravityUtil@ gravityUtil_CustomGravityConstantVelocityMovement;

    // Java field initializers run after the super constructor
    void jfields_CustomGravityConstantVelocityMovement()
    {
    
    @this.gravityUtil_CustomGravityConstantVelocityMovement = GravityUtil::getInstance();
    }
    

    CustomGravityConstantVelocityMovement@ jinit_CustomGravityConstantVelocityMovement(BasicDecimal@ speedBasicDecimal, int customGravity)
    {
        this.jinit_BasicConstantVelocityMovement(speedBasicDecimal, VelocityProperties().jinit_VelocityProperties(int(speedBasicDecimal.getUnscaled()), int(speedBasicDecimal.getUnscaled())));
        this.jfields_CustomGravityConstantVelocityMovement();
        this.customGravity_CustomGravityConstantVelocityMovement = customGravity;
        return this;
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
        BasicConstantVelocityMovement::process(layer);
        this.gravityUtil_CustomGravityConstantVelocityMovement.process(this.getVelocityProperties(), this.customGravity_CustomGravityConstantVelocityMovement);
        VelocityProperties@ velocityProperties = cast<VelocityProperties>(this.getVelocityProperties());
        velocityProperties.limitMaxYForwardVelocity();
    }
}

