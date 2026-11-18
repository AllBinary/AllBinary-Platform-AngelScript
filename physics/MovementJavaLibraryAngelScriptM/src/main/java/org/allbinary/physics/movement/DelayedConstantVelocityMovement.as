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

class DelayedConstantVelocityMovement : BasicConstantVelocityMovement
{
    TimeDelayHelper@ timeDelayHelper_DelayedConstantVelocityMovement;

    // Java field initializers run after the super constructor
    void jfields_DelayedConstantVelocityMovement()
    {
    @this.timeDelayHelper_DelayedConstantVelocityMovement = TimeDelayHelper().jinit_TimeDelayHelper(60);
    }
    

    DelayedConstantVelocityMovement@ jinit_DelayedConstantVelocityMovement(BasicDecimal@ basicDecimal, BasicVelocityProperties@ velocityProperties)
    {
        this.jinit_BasicConstantVelocityMovement(basicDecimal, velocityProperties);
        this.jfields_DelayedConstantVelocityMovement();
        return this;
    }
    

    void init(BasicDecimal@ speedBasicDecimal, int angle, int otherAngle)
    {
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
        if (this.timeDelayHelper_DelayedConstantVelocityMovement.isTime(GameTickTimeDelayHelperFactory::getInstance().startTime)) {
            BasicConstantVelocityMovement::process(layer);
        }
    }
}

