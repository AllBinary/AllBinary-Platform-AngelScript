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

class BaseImageAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface
{
    AnimationFactoryImageScaleUtil@ animationFactoryImageScaleUtil;
    Image@ image_BaseImageAnimationFactory;
    AnimationBehaviorFactory@ animationBehaviorFactory;
    int[]@ sequenceArray_BaseImageAnimationFactory;
    AnimationFactoryInitializationVisitor@ animationFactoryInitializationVisitor;
    ScaleProperties@ scaleProperties;

    // Java field initializers run after the super constructor
    void jfields_BaseImageAnimationFactory()
    {
    @this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil::getInstance();
    
    
    
    
    @this.scaleProperties = ScaleProperties::instance;
    }
    

    BaseImageAnimationFactory@ jinit_BaseImageAnimationFactory(Image@ image, int[]@ sequenceArray, int width, int height, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jfields_BaseImageAnimationFactory();
        @this.animationFactoryInitializationVisitor = AnimationFactoryInitializationVisitor().jinit_AnimationFactoryInitializationVisitor();
        @this.image_BaseImageAnimationFactory = image;
        this.animationFactoryInitializationVisitor.width = width;
        this.animationFactoryInitializationVisitor.height = height;
        @this.animationBehaviorFactory = animationBehaviorFactory;
        @this.sequenceArray_BaseImageAnimationFactory = sequenceArray;
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        return NullAnimationFactory::getFactoryInstance().getInstance(instanceId);
    }
    

    Image@ getImage()
    {
        return this.image_BaseImageAnimationFactory;
    }
    

    int[]@ getSequenceArray()
    {
        return this.sequenceArray_BaseImageAnimationFactory;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
        @this.scaleProperties = scaleProperties;
        if (this.scaleProperties.shouldScale) {
            this.scaleProperties.scaleWidth = int(jdoubleToInt((float(this.animationFactoryInitializationVisitor.width) * this.scaleProperties.scaleX)));
            this.scaleProperties.scaleHeight = int(jdoubleToInt((float(this.animationFactoryInitializationVisitor.height) * this.scaleProperties.scaleY)));
        } else {
        }
    }
    

    AnimationFactoryInitializationVisitor@ getAnimationFactoryInitializationVisitorP()
    {
        return this.animationFactoryInitializationVisitor;
    }
    

    ScaleProperties@ getScalePropertiesP()
    {
        return this.scaleProperties;
    }
    

    string toString()
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        CommonLabels@ commonLabels = CommonLabels::getInstance();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(JObjectBase::toString());
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(int(this.image_BaseImageAnimationFactory.getHeight()));
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(this.animationFactoryInitializationVisitor.toString());
        return stringBuffer.toString();
    }
}

namespace BaseImageAnimationFactory
{
    

    BaseImageAnimationFactory@ createFactoryBase(Image@ image, int[]@ sequenceArray, int width, int height, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        return BaseImageAnimationFactory().jinit_BaseImageAnimationFactory(image, sequenceArray, width, height, 0, 0, animationBehaviorFactory);
    }
}

