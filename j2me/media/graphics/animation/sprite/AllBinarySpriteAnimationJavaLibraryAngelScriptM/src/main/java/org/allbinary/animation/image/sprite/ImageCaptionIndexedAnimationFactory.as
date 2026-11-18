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
    AnimationFactorySpriteScaleUtil@ animationFactorySpriteScaleUtil;
    Image@ captionImage;
    Image@ spriteMovieImage;
    int frameWidth;
    int frameHeight;
    int captionDx;
    int captionDy;
    int dx;
    int dy;
    int time;
    Sound@ soundInterface;
    ScaleProperties@ scaleProperties;
    AnimationBehaviorFactory@ animationBehaviorFactory;

    // Java field initializers run after the super constructor
    void jfields_ImageCaptionIndexedAnimationFactory()
    {
    @this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil::getInstance();
    @this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil::getInstance();
    
    
    
    
    
    
    
    
    
    
    @this.scaleProperties = ScaleProperties::instance;
    
    }
    

    ImageCaptionIndexedAnimationFactory@ jinit_ImageCaptionIndexedAnimationFactory(Image@ captionImage, Image@ spriteMovieImage, Sound@ soundInterface, int frameWidth, int frameHeight, int captionDx, int captionDy, int dx, int dy, int time, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jfields_ImageCaptionIndexedAnimationFactory();
        if (animationBehaviorFactory is AnimationBehaviorFactory::getInstance()) {
            ForcedLogUtil::log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this);
        }
        @this.captionImage = captionImage;
        @this.spriteMovieImage = spriteMovieImage;
        this.frameWidth = frameWidth;
        this.frameHeight = frameHeight;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
        this.time = time;
        @this.soundInterface = soundInterface;
        @this.animationBehaviorFactory = animationBehaviorFactory;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        Image@ scaledImage = this.animationFactoryImageScaleUtil.createImage(this.captionImage, this.captionImage.getWidth(), this.captionImage.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        Animation@ animationInterface = ImageAnimation().jinit_ImageAnimation(scaledImage, this.animationBehaviorFactory.getOrCreateInstance());
        Sprite@ sprite = this.animationFactorySpriteScaleUtil.createImage(this.spriteMovieImage, this.frameWidth, this.frameHeight, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        IndexedAnimation@ movieIndexedAnimationInterface = SpriteIndexedAnimation().jinit_SpriteIndexedAnimation(sprite, this.spriteMovieImage, BasicColorUtil::getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance());
        Player@ player = this.soundInterface.getPlayerP();
        if (player is null) {
            jthrow(Exception().jinit_Exception("Sound Was not Initialized"));
        }
        return CaptionIndexedAnimation().jinit_CaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, this.captionDx, this.captionDy, this.dx, this.dy, this.time, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
        @this.scaleProperties = scaleProperties;
    }
}

