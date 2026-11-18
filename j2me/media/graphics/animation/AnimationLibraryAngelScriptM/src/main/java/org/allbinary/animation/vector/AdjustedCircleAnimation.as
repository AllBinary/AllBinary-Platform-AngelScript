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
// package org.allbinary.animation.vector

class AdjustedCircleAnimation : CircleAnimation
{
    int xAdjustment_AdjustedCircleAnimation;
    int yAdjustment_AdjustedCircleAnimation;
    

    AdjustedCircleAnimation@ jinit_AdjustedCircleAnimation(int width, int height, BasicColor@ basicColor)
    {
        this.jinit_CircleAnimation(width, height, basicColor);
        return this;
    }
    

    void initXY(int xAdjustment, int yAdjustment)
    {
        this.xAdjustment_AdjustedCircleAnimation = xAdjustment;
        this.yAdjustment_AdjustedCircleAnimation = yAdjustment;
    }
    

    void init(int innerWidth)
    {
        if (AndroidUtil::isAndroid()) {
            int widthPortion = (((innerWidth / 3) * 10) / 7);
            this.xAdjustment_AdjustedCircleAnimation = -((this.width >>> 1) - widthPortion);
            this.yAdjustment_AdjustedCircleAnimation = this.xAdjustment_AdjustedCircleAnimation;
        } else {
            this.xAdjustment_AdjustedCircleAnimation = -((this.width >>> 1) - innerWidth);
            this.yAdjustment_AdjustedCircleAnimation = this.xAdjustment_AdjustedCircleAnimation;
        }
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawArc(x + this.xAdjustment_AdjustedCircleAnimation, y + this.yAdjustment_AdjustedCircleAnimation, this.width, this.height, 0, this.TOTAL_ANGLE);
    }
}

namespace AdjustedCircleAnimation
{
    

    AdjustedCircleAnimation@ createAnimation(int width, int height, int xAdjustment, int yAdjustment, BasicColor@ basicColor)
    {
        AdjustedCircleAnimation@ adjustedCircleAnimation = AdjustedCircleAnimation().jinit_AdjustedCircleAnimation(width, height, basicColor);
        adjustedCircleAnimation.initXY(xAdjustment, yAdjustment);
        return adjustedCircleAnimation;
    }
    

    AdjustedCircleAnimation@ createW(int width, int height, int innerWidth, BasicColor@ basicColor)
    {
        AdjustedCircleAnimation@ adjustedCircleAnimation = AdjustedCircleAnimation().jinit_AdjustedCircleAnimation(width, height, basicColor);
        adjustedCircleAnimation.init(innerWidth);
        return adjustedCircleAnimation;
    }
}

