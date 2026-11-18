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

class ColorCompositeSpriteIndexedAnimationFactory : BaseImageAnimationFactory, ProceduralAnimationInterfaceFactoryInterface
{
    AnimationFactorySpriteScaleUtil@ animationFactorySpriteScaleUtil_ColorCompositeSpriteIndexedAnimationFactory;
    BasicColor@[]@ basicColorArray_ColorCompositeSpriteIndexedAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_ColorCompositeSpriteIndexedAnimationFactory()
    {
    @this.animationFactorySpriteScaleUtil_ColorCompositeSpriteIndexedAnimationFactory = AnimationFactorySpriteScaleUtil::getInstance();
    
    }
    

    ColorCompositeSpriteIndexedAnimationFactory@ jinit_ColorCompositeSpriteIndexedAnimationFactory(Image@ image, BasicColor@[]@ basicColorArray, int width, int height, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jinit_BaseImageAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        this.jfields_ColorCompositeSpriteIndexedAnimationFactory();
        @this.basicColorArray_ColorCompositeSpriteIndexedAnimationFactory = basicColorArray;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        Sprite@ sprite = this.animationFactorySpriteScaleUtil_ColorCompositeSpriteIndexedAnimationFactory.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        return SpriteIndexedAnimation().jinit_SpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray_ColorCompositeSpriteIndexedAnimationFactory, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        return this.getInstance(0);
    }
}

