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

class AdjustedSpriteIndexedAnimation : SpriteIndexedAnimation
{
    int dx_AdjustedSpriteIndexedAnimation;
    int dy_AdjustedSpriteIndexedAnimation;
    

    AdjustedSpriteIndexedAnimation@ jinit_AdjustedSpriteIndexedAnimation(Sprite@ sprite, Image@ image, BasicColor@[]@ basicColorArray, int dx, int dy, AnimationBehavior@ animationBehavior)
    {
        this.jinit_SpriteIndexedAnimation(sprite, image, basicColorArray, animationBehavior);
        this.dx_AdjustedSpriteIndexedAnimation = dx;
        this.dy_AdjustedSpriteIndexedAnimation = dy;
        return this;
    }
    

    void paintFrame(Graphics@ graphics, int frame, int x, int y)
    {
        this.setFrame(frame);
        this.sprite.setPosition(x + this.dx_AdjustedSpriteIndexedAnimation, y + this.dy_AdjustedSpriteIndexedAnimation);
        SpriteIndexedAnimation::paint(graphics);
    }
    

    void paintXY(Graphics@ g, int x, int y)
    {
        this.sprite.setPosition(x + this.dx_AdjustedSpriteIndexedAnimation, y + this.dy_AdjustedSpriteIndexedAnimation);
        SpriteIndexedAnimation::paint(g);
    }
    

    void paint(Graphics@ g)
    {
        this.sprite.setPosition(this.dx_AdjustedSpriteIndexedAnimation, this.dy_AdjustedSpriteIndexedAnimation);
        SpriteIndexedAnimation::paint(g);
    }
}

