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

class NoZBasicConstantVelocityMovement : Movement, VelocityInterfaceCompositeInterface
{
    BasicVelocityProperties@ velocityProperties_NoZBasicConstantVelocityMovement;
    BasicDecimal@ speedBasicDecimal_NoZBasicConstantVelocityMovement;
    AxisMathVectorUtil@ axisMathVectorUtil_NoZBasicConstantVelocityMovement;

    // Java field initializers run after the super constructor
    void jfields_NoZBasicConstantVelocityMovement()
    {
    
    @this.speedBasicDecimal_NoZBasicConstantVelocityMovement = BasicDecimal::ZERO_BIGDECIMAL;
    @this.axisMathVectorUtil_NoZBasicConstantVelocityMovement = AxisMathVectorUtil::getInstance();
    }
    

    NoZBasicConstantVelocityMovement@ jinit_NoZBasicConstantVelocityMovement(BasicDecimal@ basicDecimal, BasicVelocityProperties@ velocityProperties)
    {
        this.jinit_Movement();
        this.jfields_NoZBasicConstantVelocityMovement();
        this.setSpeedBasicDecimal(basicDecimal);
        @this.velocityProperties_NoZBasicConstantVelocityMovement = velocityProperties;
        return this;
    }
    

    void init(BasicDecimal@ speedBasicDecimal, int angle, int otherAngle)
    {
        @this.speedBasicDecimal_NoZBasicConstantVelocityMovement = speedBasicDecimal;
        AngleFactory@ angleFactory = AngleFactory::getInstance();
        this.velocityProperties_NoZBasicConstantVelocityMovement.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle));
    }
    

    void moveOutsideRadius(AllBinaryLayer@ layer, int64 radius, int angle, int otherAngle)
    {
        int scaleFactorValue = this.speedBasicDecimal_NoZBasicConstantVelocityMovement.getScaledFactorValue();
        int xVector = int((this.axisMathVectorUtil_NoZBasicConstantVelocityMovement.calculateX(radius, angle) / int64(scaleFactorValue)));
        int yVector = int((this.axisMathVectorUtil_NoZBasicConstantVelocityMovement.calculateY(radius, angle) / int64(scaleFactorValue)));
        layer.moveDXYZ(xVector, yVector, 0);
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
        layer.moveDXYZ(this.velocityProperties_NoZBasicConstantVelocityMovement.getVelocityXBasicDecimalP().getScaled(), this.velocityProperties_NoZBasicConstantVelocityMovement.getVelocityYBasicDecimalP().getScaled(), 0);
    }
    

    string toString()
    {
        return this.velocityProperties_NoZBasicConstantVelocityMovement.toString();
    }
    

    void stop()
    {
        this.velocityProperties_NoZBasicConstantVelocityMovement.zero();
    }
    

    BasicVelocityProperties@ getVelocityProperties()
    {
        return this.velocityProperties_NoZBasicConstantVelocityMovement;
    }
    

    void setVelocityProperties(BasicVelocityProperties@ velocityProperties)
    {
        @this.velocityProperties_NoZBasicConstantVelocityMovement = velocityProperties;
    }
    

    void setSpeedBasicDecimal(BasicDecimal@ speedBasicDecimal)
    {
        @this.speedBasicDecimal_NoZBasicConstantVelocityMovement = speedBasicDecimal;
    }
    

    BasicDecimal@ getSpeedBasicDecimal()
    {
        return this.speedBasicDecimal_NoZBasicConstantVelocityMovement;
    }
}

