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
// package org.allbinary.image.sprite

class AnimationFactorySpriteScaleUtil : JObjectBase
{
    ImageCache@ imageCache_AnimationFactorySpriteScaleUtil;
    ImageScaleUtil@ imageScaleUtil_AnimationFactorySpriteScaleUtil;
    OpenGLUtil@ openGLUtil_AnimationFactorySpriteScaleUtil;
    J2SEMath@ j2seMath_AnimationFactorySpriteScaleUtil;
    OpenGLESImageExclusionUtil@ openGLESImageExclusionUtil_AnimationFactorySpriteScaleUtil;

    // Java field initializers run after the super constructor
    void jfields_AnimationFactorySpriteScaleUtil()
    {
    @this.imageCache_AnimationFactorySpriteScaleUtil = ImageCacheFactory::getInstance();
    @this.imageScaleUtil_AnimationFactorySpriteScaleUtil = ImageScaleUtil::getInstance();
    @this.openGLUtil_AnimationFactorySpriteScaleUtil = OpenGLUtil::getInstance();
    @this.j2seMath_AnimationFactorySpriteScaleUtil = J2SEMath::getInstance();
    @this.openGLESImageExclusionUtil_AnimationFactorySpriteScaleUtil = OpenGLESImageExclusionUtil::getInstance();
    }

    AnimationFactorySpriteScaleUtil@ jinit_AnimationFactorySpriteScaleUtil()
    {
        this.jfields_AnimationFactorySpriteScaleUtil();
        return this;
    }
    

    Sprite@ createImage(Image@ image, int width, int height, int scaleWidth, int scaleHeight)
    {
        SpriteFactory@ spriteFactory = SpriteFactory::getInstance();
        Sprite@ sprite;
        Image@ scaledImage;
        if (scaleWidth != 0 && scaleHeight != 0) {
            float scaleX = (float(scaleWidth)) / (float(width));
            float scaleY = (float(scaleHeight)) / (float(height));
            if ((scaleX == 1.0f && scaleY == 1.0f) || (scaleX == 0.0f || scaleY == 0.0f)) {
                @scaledImage = this.openGLUtil_AnimationFactorySpriteScaleUtil.addImage(image);
                @sprite = spriteFactory.createSprite(scaledImage, width, height);
            } else {
                if (this.openGLESImageExclusionUtil_AnimationFactorySpriteScaleUtil.isCustomScaling(image)) {
                    int width2 = this.j2seMath_AnimationFactorySpriteScaleUtil.round(float((scaleWidth)) - 0.5f);
                    int height2 = this.j2seMath_AnimationFactorySpriteScaleUtil.round(float((scaleHeight)) - 0.5f);
                    int multiplesOf16Width = width2 / 16;
                    int by16Width = multiplesOf16Width * 16;
                    scaleX = (float(by16Width)) / float(width);
                    int multiplesOf16Height = height2 / 16;
                    int by16Height = multiplesOf16Height * 16;
                    scaleY = (float(by16Height)) / float(height);
                    if (scaleWidth < width) {
                        scaleX = scaleX * 2.35f;
                    }
                    if (scaleHeight < height) {
                        scaleY = scaleY * 2.35f;
                    }
                }
                @scaledImage = this.imageScaleUtil_AnimationFactorySpriteScaleUtil.createImage2(this.imageCache_AnimationFactorySpriteScaleUtil, image, scaleX, 1.0f, scaleY, 1.0f, true);
                @sprite = spriteFactory.createSprite(scaledImage, int(jdoubleToInt((float(width) * scaleX))), int(jdoubleToInt((float(height) * scaleY))));
            }
        } else {
            @scaledImage = this.openGLUtil_AnimationFactorySpriteScaleUtil.addImage(image);
            @sprite = spriteFactory.createSprite(scaledImage, width, height);
        }
        return sprite;
    }
}

namespace AnimationFactorySpriteScaleUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AnimationFactorySpriteScaleUtil().jinit_AnimationFactorySpriteScaleUtil();
    }

    AnimationFactorySpriteScaleUtil@ jcell_instance;
    AnimationFactorySpriteScaleUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AnimationFactorySpriteScaleUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    AnimationFactorySpriteScaleUtil@ getInstance()
    {
        return AnimationFactorySpriteScaleUtil::instance;
    }
}

