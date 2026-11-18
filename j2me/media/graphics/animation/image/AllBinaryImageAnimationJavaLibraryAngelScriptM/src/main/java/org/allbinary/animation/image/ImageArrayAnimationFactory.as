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

class ImageArrayAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface
{
    int dx;
    int dy;
    Image@[]@ imageArray;
    AnimationBehaviorFactory@ animationBehaviorFactory;

    // Java field initializers run after the super constructor
    void jfields_ImageArrayAnimationFactory()
    {
    this.dx = 0;
    this.dy = 0;
    
    
    }
    

    ImageArrayAnimationFactory@ jinit_ImageArrayAnimationFactory(Image@[]@ imageArray, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jfields_ImageArrayAnimationFactory();
        @this.imageArray = imageArray;
        @this.animationBehaviorFactory = animationBehaviorFactory;
        this.dx = dx;
        this.dy = dy;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        if (this.dx != 0 || this.dy != 0) {
            return AdjustedImageArrayAnimation().jinit_AdjustedImageArrayAnimation(this.imageArray, this.dx, this.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return ImageArrayAnimation().jinit_ImageArrayAnimation(this.imageArray, AnimationBehavior::getInstance());
        }
        return null;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

