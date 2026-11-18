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

class SpriteIndexedAnimationFactory : BaseImageAnimationFactory, ProceduralAnimationInterfaceFactoryInterface
{
    AnimationFactorySpriteScaleUtil@ animationFactorySpriteScaleUtil_SpriteIndexedAnimationFactory;
    BasicColor@[]@ basicColorArray_SpriteIndexedAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_SpriteIndexedAnimationFactory()
    {
    @this.animationFactorySpriteScaleUtil_SpriteIndexedAnimationFactory = AnimationFactorySpriteScaleUtil::getInstance();
    @this.basicColorArray_SpriteIndexedAnimationFactory = BasicColorUtil::getInstance().ZERO_ARRAY;
    }
    

    SpriteIndexedAnimationFactory@ jinit_SpriteIndexedAnimationFactory(Image@ image, BasicColor@[]@ basicColorArray, int[]@ sequenceArray, int width, int height, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jinit_BaseImageAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        this.jfields_SpriteIndexedAnimationFactory();
        @this.basicColorArray_SpriteIndexedAnimationFactory = basicColorArray;
        return this;
    }
    

    void initHWH()
    {
        this.animationFactoryInitializationVisitor.dx = -(this.animationFactoryInitializationVisitor.width >>> 2);
        this.animationFactoryInitializationVisitor.dy = -(this.animationFactoryInitializationVisitor.height >>> 2);
        if (AndroidUtil::isAndroid()) {
            this.animationFactoryInitializationVisitor.dx += 3;
        }
    }
    

    Animation@ getInstance(int instanceId)
    {
        Sprite@ sprite = this.animationFactorySpriteScaleUtil_SpriteIndexedAnimationFactory.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return AdjustedSpriteIndexedAnimation().jinit_AdjustedSpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray_SpriteIndexedAnimationFactory, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return SpriteIndexedAnimation().jinit_SpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray_SpriteIndexedAnimationFactory, this.animationBehaviorFactory.getOrCreateInstance());
        }
        return null;
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        return this.getInstance(0);
    }
}

namespace SpriteIndexedAnimationFactory
{
    

    SpriteIndexedAnimationFactory@ createCWHDXY(Image@ image, BasicColor@[]@ basicColorArray, int width, int height, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        return SpriteIndexedAnimationFactory().jinit_SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil::getArrayInstance(), width, height, dx, dy, animationBehaviorFactory);
    }
    

    SpriteIndexedAnimationFactory@ createCWH(Image@ image, BasicColor@[]@ basicColorArray, int width, int height, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        SpriteIndexedAnimationFactory@ spriteIndexedAnimationFactory = SpriteIndexedAnimationFactory().jinit_SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil::getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        spriteIndexedAnimationFactory.initHWH();
        return spriteIndexedAnimationFactory;
    }
    

    SpriteIndexedAnimationFactory@ createWH(Image@ image, int width, int height, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        return SpriteIndexedAnimationFactory().jinit_SpriteIndexedAnimationFactory(image, BasicColorUtil::getInstance().ZERO_ARRAY, PrimitiveIntUtil::getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
    }
}

