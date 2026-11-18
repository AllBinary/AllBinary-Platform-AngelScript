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

class ConstantVelocityNotifyViewChangeMovement : Movement
{
    BasicVelocityProperties@ basicVelocityProperties;
    BasicDecimal@ speedBasicDecimal_ConstantVelocityNotifyViewChangeMovement;
    AxisMathVectorUtil@ axisMathVectorUtil_ConstantVelocityNotifyViewChangeMovement;

    // Java field initializers run after the super constructor
    void jfields_ConstantVelocityNotifyViewChangeMovement()
    {
    
    
    @this.axisMathVectorUtil_ConstantVelocityNotifyViewChangeMovement = AxisMathVectorUtil::getInstance();
    }
    

    ConstantVelocityNotifyViewChangeMovement@ jinit_ConstantVelocityNotifyViewChangeMovement()
    {
        this.jinit_Movement();
        this.jfields_ConstantVelocityNotifyViewChangeMovement();
        @this.speedBasicDecimal_ConstantVelocityNotifyViewChangeMovement = BasicDecimal::ZERO_BIGDECIMAL;
        @this.basicVelocityProperties = BasicVelocityProperties().jinit_BasicVelocityProperties();
        return this;
    }
    

    void init(BasicDecimal@ speedBasicDecimal, int angle, int otherAngle)
    {
        @this.speedBasicDecimal_ConstantVelocityNotifyViewChangeMovement = speedBasicDecimal;
        AngleFactory@ angleFactory = AngleFactory::getInstance();
        this.basicVelocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle));
    }
    

    void moveOutsideRadius(AllBinaryLayer@ layer, int64 radius, int angle, int otherAngle)
    {
        int scaleFactorValue = this.speedBasicDecimal_ConstantVelocityNotifyViewChangeMovement.getScaledFactorValue();
        int xVector = int((this.axisMathVectorUtil_ConstantVelocityNotifyViewChangeMovement.calculateX(radius, angle) / int64(scaleFactorValue)));
        int yVector = int((this.axisMathVectorUtil_ConstantVelocityNotifyViewChangeMovement.calculateY(radius, angle) / int64(scaleFactorValue)));
        int zVector = int((this.axisMathVectorUtil_ConstantVelocityNotifyViewChangeMovement.calculateZ(radius, otherAngle) / int64(scaleFactorValue)));
        layer.moveDXYZ(xVector, yVector, zVector);
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
        int x = this.basicVelocityProperties.getVelocityXBasicDecimalP().getScaled();
        int y = this.basicVelocityProperties.getVelocityYBasicDecimalP().getScaled();
        int z = this.basicVelocityProperties.getVelocityZBasicDecimalP().getScaled();
        layer.moveDXYZ(x, y, z);
        if (x != 0 || y != 0 || z != 0) {
            layer.onViewPositionChangeEvent();
        }
    }
    

    void stop()
    {
        this.basicVelocityProperties.zero();
    }
}

