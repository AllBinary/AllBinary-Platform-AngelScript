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

class OneRowSpriteIndexedAnimationFactory : BaseImageAnimationFactory
{
    AnimationFactorySpriteScaleUtil@ animationFactorySpriteScaleUtil_OneRowSpriteIndexedAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_OneRowSpriteIndexedAnimationFactory()
    {
    @this.animationFactorySpriteScaleUtil_OneRowSpriteIndexedAnimationFactory = AnimationFactorySpriteScaleUtil::getInstance();
    }
    

    OneRowSpriteIndexedAnimationFactory@ jinit_OneRowSpriteIndexedAnimationFactory(Image@ image, int[]@ sequenceArray, int width, int height, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jinit_BaseImageAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        this.jfields_OneRowSpriteIndexedAnimationFactory();
        return this;
    }
    

    void init(int dx, int dy)
    {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    void initW(int dx)
    {
        this.init(dx, 0);
        this.animationFactoryInitializationVisitor.dx += -(this.animationFactoryInitializationVisitor.width >>> 2);
    }
    

    Animation@ getInstance(int instanceId)
    {
        Sprite@ sprite = this.animationFactorySpriteScaleUtil_OneRowSpriteIndexedAnimationFactory.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return AdjustedSpriteIndexedAnimation().jinit_AdjustedSpriteIndexedAnimation(sprite, this.getImage(), BasicColorUtil::getInstance().ZERO_ARRAY, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return SpriteIndexedAnimation().jinit_SpriteIndexedAnimation(sprite, this.getImage(), BasicColorUtil::getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance());
        }
        return null;
    }
}

namespace OneRowSpriteIndexedAnimationFactory
{
    

    OneRowSpriteIndexedAnimationFactory@ createFactoryDX(Image@ image, int dx, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        OneRowSpriteIndexedAnimationFactory@ oneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory().jinit_OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.initW(dx);
        return oneRowSpriteIndexedAnimationFactory;
    }
    

    OneRowSpriteIndexedAnimationFactory@ createFactoryDXY(Image@ image, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        OneRowSpriteIndexedAnimationFactory@ oneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory().jinit_OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.init(dx, dy);
        return oneRowSpriteIndexedAnimationFactory;
    }
    

    OneRowSpriteIndexedAnimationFactory@ createFactoryWH(Image@ image, int width, int height, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        return OneRowSpriteIndexedAnimationFactory().jinit_OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
    }
    

    OneRowSpriteIndexedAnimationFactory@ createFactory(Image@ image, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        return OneRowSpriteIndexedAnimationFactory().jinit_OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
    }
}

