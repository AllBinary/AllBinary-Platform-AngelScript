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

interface BasicVelocityInterface : JObject
{
    BasicDecimal@ getVelocityXBasicDecimalP();
    BasicDecimal@ getVelocityYBasicDecimalP();
    void zero();
    void setVelocityWithBigDecimalAndDirection(BasicDecimal@ magnitudeBasicDecimal, Direction@ direction, Direction@ otherDirection);
    void addVelocityWithBigDecimalAndDirection(BasicDecimal@ magnitudeBasicDecimal, Direction@ direction, Direction@ otherDirection);
    void setVelocityWithDirection(int64 magnitude, Direction@ direction, Direction@ otherDirection);
    void addVelocityWithDirection(int64 magnitude, Direction@ direction, Direction@ otherDirection);
    void setVelocityWithBigDecimal(BasicDecimal@ magnitudeBasicDecimal, Angle@ angle, Angle@ otherAngle);
    void addVelocityWithBigDecimal(BasicDecimal@ magnitudeBasicDecimal, Angle@ angle, Angle@ otherAngle);
    void setVelocity(int64 magnitude, Angle@ angle, Angle@ otherAngle);
    void addVelocity(int64 magnitude, Angle@ angle, Angle@ otherAngle);
    void addVelocityi(int64 magnitude, int angle, int otherAngle);
}

