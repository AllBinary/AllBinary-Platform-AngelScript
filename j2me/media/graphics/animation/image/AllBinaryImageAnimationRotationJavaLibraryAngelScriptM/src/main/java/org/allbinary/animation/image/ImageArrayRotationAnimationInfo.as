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
    Image@[]@ imageArray;
    int angleIncrement;
    int totalAngle;
    int dx;
    int dy;
    

    ImageArrayRotationAnimationInfo@ jinit_ImageArrayRotationAnimationInfo(Image@[]@ imageArray, int angleIncrement, int totalAngle, int dx, int dy)
    {
        @this.imageArray = imageArray;
        this.angleIncrement = angleIncrement;
        this.totalAngle = totalAngle;
        this.dx = dx;
        this.dy = dy;
        return this;
    }
    

    void setImageArray(Image@[]@ imageArray)
    {
        @this.imageArray = imageArray;
    }
    

    Image@[]@ getImageArray()
    {
        return this.imageArray;
    }
    

    AngleInfo@ getAngleInfoP()
    {
        return AngleInfo::getInstance(int16(this.angleIncrement));
    }
    

    void setTotalAngle(int totalAngle)
    {
        this.totalAngle = totalAngle;
    }
    

    int getTotalAngle()
    {
        return this.totalAngle;
    }
    

    void setDx(int dx)
    {
        this.dx = dx;
    }
    

    int getDx()
    {
        return this.dx;
    }
    

    void setDy(int dy)
    {
        this.dy = dy;
    }
    

    int getDy()
    {
        return this.dy;
    }
}

