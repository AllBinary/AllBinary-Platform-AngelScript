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
// package org.allbinary.graphics.paint

class AnimationCompositePaintable : InitUpdatePaintable
{
    Animation@ animationInterface_AnimationCompositePaintable;
    

    AnimationCompositePaintable@ jinit_AnimationCompositePaintable(Animation@ animationInterface)
    {
        this.jinit_InitUpdatePaintable();
        @this.animationInterface_AnimationCompositePaintable = animationInterface;
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        this.animationInterface_AnimationCompositePaintable.paintXY(graphics, 0, 0);
    }
    

    void paintThreed(Graphics@ graphics)
    {
        this.animationInterface_AnimationCompositePaintable.paintThreedXYZ(graphics, 0, 0, 0);
    }
}

