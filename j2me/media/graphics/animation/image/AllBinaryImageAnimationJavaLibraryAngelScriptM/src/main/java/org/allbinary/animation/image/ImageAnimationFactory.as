/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class ImageAnimationFactory : BaseImageAnimationFactory
{
    

    ImageAnimationFactory@ jinit_ImageAnimationFactory(Image@ image, int width, int height, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jinit_BaseImageAnimationFactory(image, PrimitiveIntUtil::getArrayInstance(), width, height, dx, dy, animationBehaviorFactory);
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        Image@ scaledImage = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        OpenGLUtil@ openGLUtil = OpenGLUtil::getInstance();
        @scaledImage = openGLUtil.addImage(scaledImage);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            this.animationFactoryImageScaleUtil.processAdjust(this);
            return AdjustedImageAnimation().jinit_AdjustedImageAnimation(scaledImage, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return ImageAnimation().jinit_ImageAnimation(scaledImage, this.animationBehaviorFactory.getOrCreateInstance());
        }
        return null;
    }
}

namespace ImageAnimationFactory
{
    

    ImageAnimationFactory@ createFactory(Image@ image)
    {
        return ImageAnimationFactory().jinit_ImageAnimationFactory(image, image.getWidth(), image.getHeight(), 0, 0, AnimationBehaviorFactory::getInstance());
    }
}

