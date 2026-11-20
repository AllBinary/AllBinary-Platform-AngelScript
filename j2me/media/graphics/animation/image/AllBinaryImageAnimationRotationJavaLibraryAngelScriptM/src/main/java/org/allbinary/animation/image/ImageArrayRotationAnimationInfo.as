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
// package org.allbinary.animation.image

class ImageArrayRotationAnimationInfo : JObjectBase
{
    Image@[]@ imageArray_ImageArrayRotationAnimationInfo;
    int angleIncrement_ImageArrayRotationAnimationInfo;
    int totalAngle_ImageArrayRotationAnimationInfo;
    int dx_ImageArrayRotationAnimationInfo;
    int dy_ImageArrayRotationAnimationInfo;
    

    ImageArrayRotationAnimationInfo@ jinit_ImageArrayRotationAnimationInfo(Image@[]@ imageArray, int angleIncrement, int totalAngle, int dx, int dy)
    {
        @this.imageArray_ImageArrayRotationAnimationInfo = imageArray;
        this.angleIncrement_ImageArrayRotationAnimationInfo = angleIncrement;
        this.totalAngle_ImageArrayRotationAnimationInfo = totalAngle;
        this.dx_ImageArrayRotationAnimationInfo = dx;
        this.dy_ImageArrayRotationAnimationInfo = dy;
        return this;
    }
    

    void setImageArray(Image@[]@ imageArray)
    {
        @this.imageArray_ImageArrayRotationAnimationInfo = imageArray;
    }
    

    Image@[]@ getImageArray()
    {
        return this.imageArray_ImageArrayRotationAnimationInfo;
    }
    

    AngleInfo@ getAngleInfoP()
    {
        return AngleInfo::getInstance(int16(this.angleIncrement_ImageArrayRotationAnimationInfo));
    }
    

    void setTotalAngle(int totalAngle)
    {
        this.totalAngle_ImageArrayRotationAnimationInfo = totalAngle;
    }
    

    int getTotalAngle()
    {
        return this.totalAngle_ImageArrayRotationAnimationInfo;
    }
    

    void setDx(int dx)
    {
        this.dx_ImageArrayRotationAnimationInfo = dx;
    }
    

    int getDx()
    {
        return this.dx_ImageArrayRotationAnimationInfo;
    }
    

    void setDy(int dy)
    {
        this.dy_ImageArrayRotationAnimationInfo = dy;
    }
    

    int getDy()
    {
        return this.dy_ImageArrayRotationAnimationInfo;
    }
}

