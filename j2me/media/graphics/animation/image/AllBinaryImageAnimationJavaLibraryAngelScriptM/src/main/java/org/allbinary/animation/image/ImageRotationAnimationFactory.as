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

class ImageRotationAnimationFactory : BaseImageAnimationFactory
{
    int16 angleIncrement;
    

    ImageRotationAnimationFactory@ jinit_ImageRotationAnimationFactory(Image@ image, int width, int height, int dx, int dy, int16 angleIncrement, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jinit_BaseImageAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        this.angleIncrement = angleIncrement;
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            this.animationFactoryImageScaleUtil.processAdjust(this);
            return AdjustedImageBaseRotationAnimation().jinit_AdjustedImageBaseRotationAnimation(this.getImage(), AngleInfo::getInstance(this.angleIncrement), AngleFactory::getInstance().TOTAL_ANGLE, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return ImageBaseRotationAnimation().jinit_ImageBaseRotationAnimation(this.getImage(), AngleInfo::getInstance(this.angleIncrement), AngleFactory::getInstance().TOTAL_ANGLE, this.animationBehaviorFactory.getOrCreateInstance());
        }
        return null;
    }
    

    int16 getAngleIncrementP()
    {
        return this.angleIncrement;
    }
}

