// Generated Code Do Not Modify
// package org.allbinary.physics.movement

class PreciseConstantVelocityMovement : BasicConstantVelocityMovement
{
    int accumulatedX_PreciseConstantVelocityMovement;
    int accumulatedY_PreciseConstantVelocityMovement;
    int accumulatedZ_PreciseConstantVelocityMovement;
    int factorValue_PreciseConstantVelocityMovement;

    // Java field initializers run after the super constructor
    void jfields_PreciseConstantVelocityMovement()
    {
    
    
    
    this.factorValue_PreciseConstantVelocityMovement = ScaleFactorFactory::getInstance().DEFAULT_SCALE_VALUE;
    }
    

    PreciseConstantVelocityMovement@ jinit_PreciseConstantVelocityMovement(BasicDecimal@ basicDecimal, BasicVelocityProperties@ velocityProperties)
    {
        this.jinit_BasicConstantVelocityMovement(basicDecimal, velocityProperties);
        this.jfields_PreciseConstantVelocityMovement();
        return this;
    }
    

    void init(BasicDecimal@ speedBasicDecimal, int angle, int otherAngle)
    {
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
        MathUtil@ mathUtil = MathUtil::getInstance();
        BasicVelocityProperties@ velocityProperties = this.getVelocityProperties();
        this.accumulatedX_PreciseConstantVelocityMovement = int((int64(this.accumulatedX_PreciseConstantVelocityMovement) + velocityProperties.getVelocityXBasicDecimalP().getUnscaled()));
        this.accumulatedY_PreciseConstantVelocityMovement = int((int64(this.accumulatedY_PreciseConstantVelocityMovement) + velocityProperties.getVelocityYBasicDecimalP().getUnscaled()));
        this.accumulatedZ_PreciseConstantVelocityMovement = int((int64(this.accumulatedZ_PreciseConstantVelocityMovement) + velocityProperties.getVelocityZBasicDecimalP().getUnscaled()));
        layer.moveDXYZ(this.accumulatedX_PreciseConstantVelocityMovement / this.factorValue_PreciseConstantVelocityMovement, this.accumulatedY_PreciseConstantVelocityMovement / this.factorValue_PreciseConstantVelocityMovement, this.accumulatedZ_PreciseConstantVelocityMovement / this.factorValue_PreciseConstantVelocityMovement);
        if (mathUtil.abs(this.accumulatedX_PreciseConstantVelocityMovement) > this.factorValue_PreciseConstantVelocityMovement) {
            this.accumulatedX_PreciseConstantVelocityMovement = 0;
        }
        if (mathUtil.abs(this.accumulatedY_PreciseConstantVelocityMovement) > this.factorValue_PreciseConstantVelocityMovement) {
            this.accumulatedY_PreciseConstantVelocityMovement = 0;
        }
        if (mathUtil.abs(this.accumulatedZ_PreciseConstantVelocityMovement) > this.factorValue_PreciseConstantVelocityMovement) {
            this.accumulatedZ_PreciseConstantVelocityMovement = 0;
        }
    }
}

