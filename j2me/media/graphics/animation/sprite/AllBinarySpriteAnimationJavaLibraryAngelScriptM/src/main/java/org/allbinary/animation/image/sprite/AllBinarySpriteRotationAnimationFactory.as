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

class AllBinarySpriteRotationAnimationFactory : BaseImageAnimationFactory, ProceduralAnimationInterfaceFactoryInterface
{
    AnimationFactorySpriteScaleUtil@ animationFactorySpriteScaleUtil_AllBinarySpriteRotationAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_AllBinarySpriteRotationAnimationFactory()
    {
    @this.animationFactorySpriteScaleUtil_AllBinarySpriteRotationAnimationFactory = AnimationFactorySpriteScaleUtil::getInstance();
    }
    

    AllBinarySpriteRotationAnimationFactory@ jinit_AllBinarySpriteRotationAnimationFactory(Image@ image, int[]@ sequenceArray, int width, int height, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jinit_BaseImageAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        this.jfields_AllBinarySpriteRotationAnimationFactory();
        if (animationBehaviorFactory is AnimationBehaviorFactory::getInstance()) {
            ForcedLogUtil::log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this);
        }
        return this;
    }
    

    void init(int dx, int dy)
    {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    void initWH(int dx, int dy)
    {
        this.init(dx, dy);
        this.animationFactoryInitializationVisitor.dx += -this.animationFactoryInitializationVisitor.width / 5;
        this.animationFactoryInitializationVisitor.dy += -this.animationFactoryInitializationVisitor.height / 5;
    }
    

    Animation@ getInstance(int instanceId)
    {
        Sprite@ sprite = this.animationFactorySpriteScaleUtil_AllBinarySpriteRotationAnimationFactory.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return AllBinaryAdjustedSpriteRotationAnimation().jinit_AllBinaryAdjustedSpriteRotationAnimation(sprite, this.getImage(), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return AllBinarySpriteRotationAnimation().jinit_AllBinarySpriteRotationAnimation(sprite, this.getImage(), this.animationBehaviorFactory.getOrCreateInstance());
        }
        return null;
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        return this.getInstance(0);
    }
}

namespace AllBinarySpriteRotationAnimationFactory
{
    

    AllBinarySpriteRotationAnimationFactory@ createWHDY(Image@ image, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        AllBinarySpriteRotationAnimationFactory@ spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory().jinit_AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), (image.getHeight() >>> 2), (image.getHeight() >>> 2), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.initWH(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    AllBinarySpriteRotationAnimationFactory@ createWH(Image@ image, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        return AllBinarySpriteRotationAnimationFactory::createWHDY(image, 0, 0, animationBehaviorFactory);
    }
    

    AllBinarySpriteRotationAnimationFactory@ createDXY(Image@ image, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        AllBinarySpriteRotationAnimationFactory@ spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory().jinit_AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.init(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    AllBinarySpriteRotationAnimationFactory@ createDXYQ(Image@ image, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        AllBinarySpriteRotationAnimationFactory@ spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory().jinit_AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), (image.getHeight() >>> 2), (image.getHeight() >>> 2), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.init(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    AllBinarySpriteRotationAnimationFactory@ createQ(Image@ image, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        return AllBinarySpriteRotationAnimationFactory().jinit_AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), (image.getHeight() >>> 2), (image.getHeight() >>> 2), 0, 0, animationBehaviorFactory);
    }
    

    AllBinarySpriteRotationAnimationFactory@ createWHF(Image@ image, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        return AllBinarySpriteRotationAnimationFactory().jinit_AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
    }
}

