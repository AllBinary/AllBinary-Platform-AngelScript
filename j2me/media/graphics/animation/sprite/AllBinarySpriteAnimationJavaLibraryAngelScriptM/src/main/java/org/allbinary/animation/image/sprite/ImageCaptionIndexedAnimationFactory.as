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

class ImageCaptionIndexedAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface
{
    AnimationFactoryImageScaleUtil@ animationFactoryImageScaleUtil;
    AnimationFactorySpriteScaleUtil@ animationFactorySpriteScaleUtil_ImageCaptionIndexedAnimationFactory;
    Image@ captionImage_ImageCaptionIndexedAnimationFactory;
    Image@ spriteMovieImage_ImageCaptionIndexedAnimationFactory;
    int frameWidth_ImageCaptionIndexedAnimationFactory;
    int frameHeight_ImageCaptionIndexedAnimationFactory;
    int captionDx_ImageCaptionIndexedAnimationFactory;
    int captionDy_ImageCaptionIndexedAnimationFactory;
    int dx_ImageCaptionIndexedAnimationFactory;
    int dy_ImageCaptionIndexedAnimationFactory;
    int time_ImageCaptionIndexedAnimationFactory;
    Sound@ soundInterface_ImageCaptionIndexedAnimationFactory;
    ScaleProperties@ scaleProperties;
    AnimationBehaviorFactory@ animationBehaviorFactory_ImageCaptionIndexedAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_ImageCaptionIndexedAnimationFactory()
    {
    @this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil::getInstance();
    @this.animationFactorySpriteScaleUtil_ImageCaptionIndexedAnimationFactory = AnimationFactorySpriteScaleUtil::getInstance();
    
    
    
    
    
    
    
    
    
    
    @this.scaleProperties = ScaleProperties::instance;
    
    }
    

    ImageCaptionIndexedAnimationFactory@ jinit_ImageCaptionIndexedAnimationFactory(Image@ captionImage, Image@ spriteMovieImage, Sound@ soundInterface, int frameWidth, int frameHeight, int captionDx, int captionDy, int dx, int dy, int time, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jfields_ImageCaptionIndexedAnimationFactory();
        if (animationBehaviorFactory is AnimationBehaviorFactory::getInstance()) {
            ForcedLogUtil::log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this);
        }
        @this.captionImage_ImageCaptionIndexedAnimationFactory = captionImage;
        @this.spriteMovieImage_ImageCaptionIndexedAnimationFactory = spriteMovieImage;
        this.frameWidth_ImageCaptionIndexedAnimationFactory = frameWidth;
        this.frameHeight_ImageCaptionIndexedAnimationFactory = frameHeight;
        this.captionDx_ImageCaptionIndexedAnimationFactory = captionDx;
        this.captionDy_ImageCaptionIndexedAnimationFactory = captionDy;
        this.dx_ImageCaptionIndexedAnimationFactory = dx;
        this.dy_ImageCaptionIndexedAnimationFactory = dy;
        this.time_ImageCaptionIndexedAnimationFactory = time;
        @this.soundInterface_ImageCaptionIndexedAnimationFactory = soundInterface;
        @this.animationBehaviorFactory_ImageCaptionIndexedAnimationFactory = animationBehaviorFactory;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        Image@ scaledImage = this.animationFactoryImageScaleUtil.createImage(this.captionImage_ImageCaptionIndexedAnimationFactory, this.captionImage_ImageCaptionIndexedAnimationFactory.getWidth(), this.captionImage_ImageCaptionIndexedAnimationFactory.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        Animation@ animationInterface = ImageAnimation().jinit_ImageAnimation(scaledImage, this.animationBehaviorFactory_ImageCaptionIndexedAnimationFactory.getOrCreateInstance());
        Sprite@ sprite = this.animationFactorySpriteScaleUtil_ImageCaptionIndexedAnimationFactory.createImage(this.spriteMovieImage_ImageCaptionIndexedAnimationFactory, this.frameWidth_ImageCaptionIndexedAnimationFactory, this.frameHeight_ImageCaptionIndexedAnimationFactory, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        IndexedAnimation@ movieIndexedAnimationInterface = SpriteIndexedAnimation().jinit_SpriteIndexedAnimation(sprite, this.spriteMovieImage_ImageCaptionIndexedAnimationFactory, BasicColorUtil::getInstance().ZERO_ARRAY, this.animationBehaviorFactory_ImageCaptionIndexedAnimationFactory.getOrCreateInstance());
        Player@ player = this.soundInterface_ImageCaptionIndexedAnimationFactory.getPlayerP();
        if (player is null) {
            jthrow(Exception().jinit_Exception("Sound Was not Initialized"));
        }
        return CaptionIndexedAnimation().jinit_CaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, this.captionDx_ImageCaptionIndexedAnimationFactory, this.captionDy_ImageCaptionIndexedAnimationFactory, this.dx_ImageCaptionIndexedAnimationFactory, this.dy_ImageCaptionIndexedAnimationFactory, this.time_ImageCaptionIndexedAnimationFactory, this.animationBehaviorFactory_ImageCaptionIndexedAnimationFactory.getOrCreateInstance());
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
        @this.scaleProperties = scaleProperties;
    }
}

