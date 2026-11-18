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

class VectorToImageArrayRotationAnimationFactory : BaseImageAnimationFactory
{
    Image@[]@ imageArray_VectorToImageArrayRotationAnimationFactory;
    int angleIncrement_VectorToImageArrayRotationAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_VectorToImageArrayRotationAnimationFactory()
    {
    @this.imageArray_VectorToImageArrayRotationAnimationFactory = NullImage::NULL_IMAGE_ARRAY;
    
    }
    

    VectorToImageArrayRotationAnimationFactory@ jinit_VectorToImageArrayRotationAnimationFactory(VectorInfo@ vectorInfo, BasicColor@ basicColor, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jinit_BaseImageAnimationFactory(AnimationFrameToImageUtil::getInstance().getInstanceTranslate(vectorInfo.getWidth(), vectorInfo.getHeight(), VectorAnimation::createVectorAnimation(vectorInfo.getPoints(), basicColor, animationBehaviorFactory.getOrCreateInstance())), PrimitiveIntUtil::getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory);
        this.jfields_VectorToImageArrayRotationAnimationFactory();
        this.init();
        return this;
    }
    

    void init()
    {
        AngleFactory@ angleFactory = AngleFactory::getInstance();
        this.angleIncrement_VectorToImageArrayRotationAnimationFactory = int(angleFactory.TOTAL_ANGLE) / GameConfigurationCentral::getInstance().getGameControlFidelity();
        @this.imageArray_VectorToImageArrayRotationAnimationFactory = ImageToRotationImageArrayUtil::getInstance().generate(this.getImage(), this.getAngleIncrement(), int(angleFactory.TOTAL_ANGLE));
    }
    

    Animation@ getInstance(int instanceId)
    {
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return AdjustedImageArrayRotationAnimation().jinit_AdjustedImageArrayRotationAnimation(this.imageArray_VectorToImageArrayRotationAnimationFactory, AngleInfo::getInstance(int16(this.getAngleIncrement())), int(AngleFactory::getInstance().TOTAL_ANGLE), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return AdjustedImageArrayRotationAnimation::createAnimation(this.imageArray_VectorToImageArrayRotationAnimationFactory, AngleInfo::getInstance(int16(this.angleIncrement_VectorToImageArrayRotationAnimationFactory)), int(AngleFactory::getInstance().TOTAL_ANGLE), this.animationBehaviorFactory.getOrCreateInstance());
        }
        return null;
    }
    

    int getAngleIncrement()
    {
        return this.angleIncrement_VectorToImageArrayRotationAnimationFactory;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

