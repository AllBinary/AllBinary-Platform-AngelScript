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
// package org.allbinary.image

class AnimationFactoryImageScaleUtil : JObjectBase
{
    ImageJ2MEScaleUtil@ imageScaleUtil_AnimationFactoryImageScaleUtil;

    // Java field initializers run after the super constructor
    void jfields_AnimationFactoryImageScaleUtil()
    {
    @this.imageScaleUtil_AnimationFactoryImageScaleUtil = ImageJ2MEScaleUtil::getInstance();
    }

    AnimationFactoryImageScaleUtil@ jinit_AnimationFactoryImageScaleUtil()
    {
        this.jfields_AnimationFactoryImageScaleUtil();
        return this;
    }
    

    Image@ createImage(Image@ image, int width, int height, int scaleWidth, int scaleHeight)
    {
        Image@ scaledImage;
        if (scaleWidth != 0 && scaleHeight != 0) {
            float scaleX = (float(scaleWidth)) / (float(width));
            float scaleY = (float(scaleHeight)) / (float(height));
            if ((scaleX == 1.0f && scaleY == 1.0f) || (scaleX == 0.0f || scaleY == 0.0f)) {
                @scaledImage = image;
            } else {
                int scaledWidth = int(jdoubleToInt((scaleX * float(width))));
                int scaledHeight = int(jdoubleToInt((scaleY * float(height))));
                @scaledImage = this.imageScaleUtil_AnimationFactoryImageScaleUtil.scale(image, scaledWidth, scaledHeight);
            }
        } else {
            @scaledImage = image;
        }
        return scaledImage;
    }
    

    void processAdjust(BaseImageAnimationFactory@ baseImageAnimationFactory)
    {
        ScaleProperties@ scaleProperties = baseImageAnimationFactory.getScalePropertiesP();
        if (scaleProperties.scaleWidth != 0 && scaleProperties.scaleHeight != 0) {
            AnimationFactoryInitializationVisitor@ animationFactoryInitializationVisitor = baseImageAnimationFactory.getAnimationFactoryInitializationVisitorP();
            float scaleX = (float(scaleProperties.scaleWidth)) / (float(animationFactoryInitializationVisitor.width));
            float scaleY = (float(scaleProperties.scaleHeight)) / (float(animationFactoryInitializationVisitor.height));
            if ((scaleX == 1.0f && scaleY == 1.0f) || (scaleX == 0.0f || scaleY == 0.0f)) {
            } else {
                animationFactoryInitializationVisitor.dx = int(jdoubleToInt((float(animationFactoryInitializationVisitor.originalDx) * scaleX)));
                animationFactoryInitializationVisitor.dy = int(jdoubleToInt((float(animationFactoryInitializationVisitor.originalDy) * scaleY)));
            }
        } else {
        }
    }
}

namespace AnimationFactoryImageScaleUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AnimationFactoryImageScaleUtil().jinit_AnimationFactoryImageScaleUtil();
    }

    AnimationFactoryImageScaleUtil@ jcell_instance;
    AnimationFactoryImageScaleUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AnimationFactoryImageScaleUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    AnimationFactoryImageScaleUtil@ getInstance()
    {
        return AnimationFactoryImageScaleUtil::instance;
    }
}

