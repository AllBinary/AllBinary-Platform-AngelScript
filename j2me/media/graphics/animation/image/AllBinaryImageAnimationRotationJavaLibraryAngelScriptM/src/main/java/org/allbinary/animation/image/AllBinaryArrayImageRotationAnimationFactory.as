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

class AllBinaryArrayImageRotationAnimationFactory : BaseImageAnimationFactory
{
    Image@[]@ imageArray_AllBinaryArrayImageRotationAnimationFactory;
    int angleIncrement_AllBinaryArrayImageRotationAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_AllBinaryArrayImageRotationAnimationFactory()
    {
    @this.imageArray_AllBinaryArrayImageRotationAnimationFactory = NullImage::NULL_IMAGE_ARRAY;
    
    }
    

    AllBinaryArrayImageRotationAnimationFactory@ jinit_AllBinaryArrayImageRotationAnimationFactory(Image@ image, int width, int height, int angleIncrement, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jinit_BaseImageAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        this.jfields_AllBinaryArrayImageRotationAnimationFactory();
        this.angleIncrement_AllBinaryArrayImageRotationAnimationFactory = angleIncrement;
        this.init();
        return this;
    }
    

    void init()
    {
        this.setImageArray(ImageToRotationImageArrayUtil::getInstance().generate(this.getImage(), this.getAngleIncrement(), int(AngleFactory::getInstance().TOTAL_ANGLE)));
    }
    

    void initDXY(int dx, int dy)
    {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
        this.animationFactoryInitializationVisitor.originalDx = dx;
        this.animationFactoryInitializationVisitor.originalDy = dy;
    }
    

    Animation@ getInstance(int instanceId)
    {
        Image@[]@ scaledImageArray = array<Image@>(int(this.imageArray_AllBinaryArrayImageRotationAnimationFactory.length()));
        int size = int(scaledImageArray.length());
        Image@ image = this.getImage();
        for (int index = 0; index < size; index++) {
            @scaledImageArray[index] = this.animationFactoryImageScaleUtil.createImage(image, image.getWidth(), image.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        }
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            this.animationFactoryImageScaleUtil.processAdjust(this);
            return AdjustedImageArrayRotationAnimation().jinit_AdjustedImageArrayRotationAnimation(scaledImageArray, AngleInfo::getInstance(int16(this.getAngleIncrement())), int(AngleFactory::getInstance().TOTAL_ANGLE), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return ImageArrayRotationAnimation().jinit_ImageArrayRotationAnimation(scaledImageArray, AngleInfo::getInstance(int16(this.getAngleIncrement())), int(AngleFactory::getInstance().TOTAL_ANGLE), this.animationBehaviorFactory.getOrCreateInstance());
        }
        return null;
    }
    

    void setImageArray(Image@[]@ imageArray)
    {
        @this.imageArray_AllBinaryArrayImageRotationAnimationFactory = imageArray;
    }
    

    int getAngleIncrement()
    {
        return this.angleIncrement_AllBinaryArrayImageRotationAnimationFactory;
    }
}

namespace AllBinaryArrayImageRotationAnimationFactory
{
    

    AllBinaryArrayImageRotationAnimationFactory@ createFactory(Image@ image, int dx, int dy)
    {
        AllBinaryArrayImageRotationAnimationFactory@ arrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory().jinit_AllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), int(AngleFactory::getInstance().TOTAL_ANGLE) / GameConfigurationCentral::getInstance().getGameControlFidelity(), AnimationBehaviorFactory::getInstance());
        arrayImageRotationAnimationFactory.initDXY(dx, dy);
        return arrayImageRotationAnimationFactory;
    }
    

    AllBinaryArrayImageRotationAnimationFactory@ createFactoryA(Image@ image, int dx, int dy, int angleIncrement)
    {
        AllBinaryArrayImageRotationAnimationFactory@ arrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory().jinit_AllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), angleIncrement, AnimationBehaviorFactory::getInstance());
        arrayImageRotationAnimationFactory.initDXY(dx, dy);
        return arrayImageRotationAnimationFactory;
    }
}

