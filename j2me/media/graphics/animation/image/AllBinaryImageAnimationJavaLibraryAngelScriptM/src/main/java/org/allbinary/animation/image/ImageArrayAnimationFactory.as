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
    int dx_ImageArrayAnimationFactory;
    int dy_ImageArrayAnimationFactory;
    Image@[]@ imageArray_ImageArrayAnimationFactory;
    AnimationBehaviorFactory@ animationBehaviorFactory_ImageArrayAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_ImageArrayAnimationFactory()
    {
    this.dx_ImageArrayAnimationFactory = 0;
    this.dy_ImageArrayAnimationFactory = 0;
    
    
    }
    

    ImageArrayAnimationFactory@ jinit_ImageArrayAnimationFactory(Image@[]@ imageArray, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jfields_ImageArrayAnimationFactory();
        @this.imageArray_ImageArrayAnimationFactory = imageArray;
        @this.animationBehaviorFactory_ImageArrayAnimationFactory = animationBehaviorFactory;
        this.dx_ImageArrayAnimationFactory = dx;
        this.dy_ImageArrayAnimationFactory = dy;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        if (this.dx_ImageArrayAnimationFactory != 0 || this.dy_ImageArrayAnimationFactory != 0) {
            return AdjustedImageArrayAnimation().jinit_AdjustedImageArrayAnimation(this.imageArray_ImageArrayAnimationFactory, this.dx_ImageArrayAnimationFactory, this.dy_ImageArrayAnimationFactory, this.animationBehaviorFactory_ImageArrayAnimationFactory.getOrCreateInstance());
        } else {
            return ImageArrayAnimation().jinit_ImageArrayAnimation(this.imageArray_ImageArrayAnimationFactory, AnimationBehavior::getInstance());
        }
        return null;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

