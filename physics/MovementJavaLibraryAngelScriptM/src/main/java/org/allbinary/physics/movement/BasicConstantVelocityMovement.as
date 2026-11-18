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

class BasicConstantVelocityMovement : Movement, VelocityInterfaceCompositeInterface
{
    BasicVelocityProperties@ velocityProperties_BasicConstantVelocityMovement;
    BasicDecimal@ speedBasicDecimal_BasicConstantVelocityMovement;
    AxisMathVectorUtil@ axisMathVectorUtil_BasicConstantVelocityMovement;

    // Java field initializers run after the super constructor
    void jfields_BasicConstantVelocityMovement()
    {
    
    @this.speedBasicDecimal_BasicConstantVelocityMovement = BasicDecimal::ZERO_BIGDECIMAL;
    @this.axisMathVectorUtil_BasicConstantVelocityMovement = AxisMathVectorUtil::getInstance();
    }
    

    BasicConstantVelocityMovement@ jinit_BasicConstantVelocityMovement(BasicDecimal@ basicDecimal, BasicVelocityProperties@ velocityProperties)
    {
        this.jinit_Movement();
        this.jfields_BasicConstantVelocityMovement();
        this.setSpeedBasicDecimal(basicDecimal);
        @this.velocityProperties_BasicConstantVelocityMovement = velocityProperties;
        return this;
    }
    

    void init(BasicDecimal@ speedBasicDecimal, int angle, int otherAngle)
    {
        @this.speedBasicDecimal_BasicConstantVelocityMovement = speedBasicDecimal;
        AngleFactory@ angleFactory = AngleFactory::getInstance();
        this.velocityProperties_BasicConstantVelocityMovement.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle));
    }
    

    void moveOutsideRadius(AllBinaryLayer@ layer, int64 radius, int angle, int otherAngle)
    {
        int scaleFactorValue = this.speedBasicDecimal_BasicConstantVelocityMovement.getScaledFactorValue();
        int xVector = int((this.axisMathVectorUtil_BasicConstantVelocityMovement.calculateX(radius, angle) / int64(scaleFactorValue)));
        int yVector = int((this.axisMathVectorUtil_BasicConstantVelocityMovement.calculateY(radius, angle) / int64(scaleFactorValue)));
        int zVector = int((this.axisMathVectorUtil_BasicConstantVelocityMovement.calculateZ(radius, otherAngle) / int64(scaleFactorValue)));
        layer.moveDXYZ(xVector, yVector, zVector);
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
        layer.moveDXYZ(this.velocityProperties_BasicConstantVelocityMovement.getVelocityXBasicDecimalP().getScaled(), this.velocityProperties_BasicConstantVelocityMovement.getVelocityYBasicDecimalP().getScaled(), this.velocityProperties_BasicConstantVelocityMovement.getVelocityZBasicDecimalP().getScaled());
    }
    

    string toString()
    {
        return this.velocityProperties_BasicConstantVelocityMovement.toString();
    }
    

    void stop()
    {
        this.velocityProperties_BasicConstantVelocityMovement.zero();
    }
    

    BasicVelocityProperties@ getVelocityProperties()
    {
        return this.velocityProperties_BasicConstantVelocityMovement;
    }
    

    void setVelocityProperties(BasicVelocityProperties@ velocityProperties)
    {
        @this.velocityProperties_BasicConstantVelocityMovement = velocityProperties;
    }
    

    void setSpeedBasicDecimal(BasicDecimal@ speedBasicDecimal)
    {
        @this.speedBasicDecimal_BasicConstantVelocityMovement = speedBasicDecimal;
    }
    

    BasicDecimal@ getSpeedBasicDecimal()
    {
        return this.speedBasicDecimal_BasicConstantVelocityMovement;
    }
}

