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
// package org.allbinary.animation.image.sprite

class AllBinaryAdjustedSpriteRotationAnimation : AllBinarySpriteRotationAnimation
{
    int dx_AllBinaryAdjustedSpriteRotationAnimation;
    int dy_AllBinaryAdjustedSpriteRotationAnimation;
    

    AllBinaryAdjustedSpriteRotationAnimation@ jinit_AllBinaryAdjustedSpriteRotationAnimation(Sprite@ sprite, Image@ image, int dx, int dy, AnimationBehavior@ animationBehavior)
    {
        this.jinit_AllBinarySpriteRotationAnimation(sprite, image, animationBehavior);
        this.dx_AllBinaryAdjustedSpriteRotationAnimation = dx;
        this.dy_AllBinaryAdjustedSpriteRotationAnimation = dy;
        return this;
    }
    

    void paintXY(Graphics@ g, int x, int y)
    {
        this.sprite.setPosition(x + this.dx_AllBinaryAdjustedSpriteRotationAnimation, y + this.dy_AllBinaryAdjustedSpriteRotationAnimation);
        this.paint(g);
    }
}

