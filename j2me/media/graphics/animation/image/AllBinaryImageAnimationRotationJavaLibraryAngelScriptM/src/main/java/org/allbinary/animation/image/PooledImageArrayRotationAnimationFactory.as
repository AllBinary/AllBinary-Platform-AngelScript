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

//TWB - Adjustments should be done in the resource creation and not at the animation level
class PooledImageArrayRotationAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface
{
    JObject@ allBinaryImageRotationAnimationInfo;
    AnimationBehaviorFactory@ animationBehaviorFactory;

    // Java field initializers run after the super constructor
    void jfields_PooledImageArrayRotationAnimationFactory()
    {
    @this.allBinaryImageRotationAnimationInfo = NullUtil::getInstance().NULL_OBJECT;
    
    }
    

    PooledImageArrayRotationAnimationFactory@ jinit_PooledImageArrayRotationAnimationFactory(Image@ image, int width, int height, int dx, int dy, int angleIncrement, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jfields_PooledImageArrayRotationAnimationFactory();
        @this.animationBehaviorFactory = animationBehaviorFactory;
        int totalAngle = int(AngleFactory::getInstance().TOTAL_ANGLE);
        Image@[]@ imageArray = ImageToRotationImageArrayUtil::getInstance().generate(image, angleIncrement, totalAngle);
        @this.allBinaryImageRotationAnimationInfo = ImageArrayRotationAnimationInfo().jinit_ImageArrayRotationAnimationInfo(imageArray, angleIncrement, totalAngle, dx, dy);
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        return AdjustedImageArrayRotationAnimation::createAdjustedImageArrayRotationAnimationInfo(this.allBinaryImageRotationAnimationInfo, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

namespace PooledImageArrayRotationAnimationFactory
{
    

    PooledImageArrayRotationAnimationFactory@ createFactory(Image@ image, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        int totalAngle = int(AngleFactory::getInstance().TOTAL_ANGLE);
        int angleIncrement = (totalAngle / GameConfigurationCentral::getInstance().getGameControlFidelity());
        return PooledImageArrayRotationAnimationFactory().jinit_PooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), -(image.getWidth() >>> 2), -(image.getHeight() >>> 2), angleIncrement, animationBehaviorFactory);
    }
    

    PooledImageArrayRotationAnimationFactory@ createDXY(Image@ image, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        int totalAngle = int(AngleFactory::getInstance().TOTAL_ANGLE);
        int angleIncrement = (totalAngle / GameConfigurationCentral::getInstance().getGameControlFidelity());
        return PooledImageArrayRotationAnimationFactory().jinit_PooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory);
    }
}

