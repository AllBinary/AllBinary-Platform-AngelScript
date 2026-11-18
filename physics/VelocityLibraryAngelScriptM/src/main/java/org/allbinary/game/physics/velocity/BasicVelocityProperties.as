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
// package org.allbinary.game.physics.velocity

class BasicVelocityProperties : JObjectBase, BasicVelocityInterface
{
    LogUtil@ logUtil;
    BasicDecimal@ velocityXBasicDecimal;
    BasicDecimal@ velocityYBasicDecimal;
    BasicDecimal@ velocityZBasicDecimal;
    AxisMathVectorUtil@ axisMathVectorUtil;
    DirectionUtil@ directionUtil;

    // Java field initializers run after the super constructor
    void jfields_BasicVelocityProperties()
    {
    @this.logUtil = LogUtil::getInstance();
    
    
    
    @this.axisMathVectorUtil = AxisMathVectorUtil::getInstance();
    @this.directionUtil = DirectionUtil::getInstance();
    }
    

    BasicVelocityProperties@ jinit_BasicVelocityProperties()
    {
        this.jfields_BasicVelocityProperties();
        @this.velocityXBasicDecimal = BasicDecimal().jinit_BasicDecimal(0);
        @this.velocityYBasicDecimal = BasicDecimal().jinit_BasicDecimal(0);
        @this.velocityZBasicDecimal = BasicDecimal().jinit_BasicDecimal(0);
        return this;
    }
    

    void zero()
    {
        this.velocityXBasicDecimal.setint(0);
        this.velocityYBasicDecimal.setint(0);
        this.velocityZBasicDecimal.setint(0);
    }
    

    BasicDecimal@ getVelocityXBasicDecimalP()
    {
        return this.velocityXBasicDecimal;
    }
    

    BasicDecimal@ getVelocityYBasicDecimalP()
    {
        return this.velocityYBasicDecimal;
    }
    

    BasicDecimal@ getVelocityZBasicDecimalP()
    {
        return this.velocityZBasicDecimal;
    }
    

    void setVelocityWithBigDecimalAndDirection(BasicDecimal@ magnitudeBasicDecimal, Direction@ direction, Direction@ otherDirection)
    {
        Angle@ angle = this.directionUtil.getAngle(direction);
        Angle@ otherAngle = this.directionUtil.getAngle(otherDirection);
        this.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle);
    }
    

    void setVelocityWithDirection(int64 magnitude, Direction@ direction, Direction@ otherDirection)
    {
        Angle@ angle = this.directionUtil.getAngle(direction);
        Angle@ otherAngle = this.directionUtil.getAngle(otherDirection);
        this.setVelocity(magnitude, angle, otherAngle);
    }
    

    void addVelocityWithBigDecimalAndDirection(BasicDecimal@ magnitudeBasicDecimal, Direction@ direction, Direction@ otherDirection)
    {
        Angle@ angle = this.directionUtil.getAngle(direction);
        Angle@ otherAngle = this.directionUtil.getAngle(otherDirection);
        this.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle);
    }
    

    void addVelocityWithDirection(int64 magnitude, Direction@ direction, Direction@ otherDirection)
    {
        Angle@ angle = this.directionUtil.getAngle(direction);
        Angle@ otherAngle = this.directionUtil.getAngle(otherDirection);
        this.addVelocity(magnitude, angle, otherAngle);
    }
    

    void setVelocityWithBigDecimal(BasicDecimal@ magnitudeBasicDecimal, Angle@ angle, Angle@ otherAngle)
    {
        int64 magnitude = magnitudeBasicDecimal.getUnscaled();
        this.setVelocity(magnitude, angle, otherAngle);
    }
    

    void addVelocityWithBigDecimal(BasicDecimal@ magnitudeBasicDecimal, Angle@ angle, Angle@ otherAngle)
    {
        int64 magnitude = magnitudeBasicDecimal.getUnscaled();
        this.addVelocity(magnitude, angle, otherAngle);
    }
    

    void setVelocity(int64 magnitude, Angle@ angle, Angle@ otherAngle)
    {
        this.setVelocityi(magnitude, int(angle.getValue()), int(otherAngle.getValue()));
    }
    

    void addVelocity(int64 magnitude, Angle@ angle, Angle@ otherAngle)
    {
        this.addVelocityi(magnitude, int(angle.getValue()), int(otherAngle.getValue()));
    }
    

    void setVelocityi(int64 magnitude, int angle, int otherAngle)
    {
        int64 xVector = (this.axisMathVectorUtil.calculateX(magnitude, angle) / int64(this.velocityXBasicDecimal.getScaledFactorValue()));
        int64 yVector = (this.axisMathVectorUtil.calculateY(magnitude, angle) / int64(this.velocityYBasicDecimal.getScaledFactorValue()));
        int64 zVector = (this.axisMathVectorUtil.calculateZ(magnitude, otherAngle) / int64(this.velocityZBasicDecimal.getScaledFactorValue()));
        this.velocityXBasicDecimal.setlong(xVector);
        this.velocityYBasicDecimal.setlong(yVector);
        this.velocityZBasicDecimal.setlong(zVector);
    }
    

    void addVelocityi(int64 magnitude, int angle, int otherAngle)
    {
        int64 xVector = (this.axisMathVectorUtil.calculateX(magnitude, angle) / int64(this.velocityXBasicDecimal.getScaledFactorValue()));
        int64 yVector = (this.axisMathVectorUtil.calculateY(magnitude, angle) / int64(this.velocityYBasicDecimal.getScaledFactorValue()));
        int64 zVector = (this.axisMathVectorUtil.calculateZ(magnitude, otherAngle) / int64(this.velocityZBasicDecimal.getScaledFactorValue()));
        this.velocityXBasicDecimal.addlong(xVector);
        this.velocityYBasicDecimal.addlong(yVector);
        this.velocityZBasicDecimal.addlong(zVector);
    }
    

    string toString()
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        PositionStrings@ positionStrings = PositionStrings::getInstance();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        StringUtil@ stringUtil = StringUtil::getInstance();
        stringBuffer.append("Velocity ");
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.append(stringUtil.toString(this.velocityXBasicDecimal));
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.append(stringUtil.toString(this.velocityYBasicDecimal));
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.append(stringUtil.toString(this.velocityZBasicDecimal));
        return stringBuffer.toString();
    }
}

