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
// package org.allbinary.animation.text

class CustomTextAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface
{
    LogUtil@ logUtil;
    AnimationBehaviorFactory@ animationBehaviorFactory;
    BasicColor@ basicColor;
    string text;
    int initScaleHeight;
    int dx;
    int dy;
    Font@ font;
    ScaleProperties@ scaleProperties;

    // Java field initializers run after the super constructor
    void jfields_CustomTextAnimationFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    
    @this.basicColor = BasicColorFactory::getInstance().BLACK;
    
    
    this.dx = 0;
    this.dy = 0;
    
    
    }
    

    CustomTextAnimationFactory@ jinit_CustomTextAnimationFactory(string text, int fontSize, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jfields_CustomTextAnimationFactory();
        @this.scaleProperties = ScaleProperties().jinit_ScaleProperties();
        this.text = text;
        this.scaleProperties.scaleHeight = fontSize - (fontSize / 4);
        this.initScaleHeight = this.scaleProperties.scaleHeight;
        @this.animationBehaviorFactory = animationBehaviorFactory;
        @this.font = Font::getFont(Font::FACE_SYSTEM, Font::STYLE_PLAIN, this.initScaleHeight);
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        CustomTextAnimation@ customTextAnimation;
        if (this.dx != 0 || this.dy != 0) {
            @customTextAnimation = AdjustCustomTextAnimation().jinit_AdjustCustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.dx, this.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            @customTextAnimation = CustomTextAnimation().jinit_CustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.animationBehaviorFactory.getOrCreateInstance());
        }
        customTextAnimation.setBasicColorP(this.basicColor);
        return customTextAnimation;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
    

    int getWidth()
    {
        return this.font.stringWidth(this.text);
    }
    

    int getHeight()
    {
        return this.font.getHeight();
    }
}

namespace CustomTextAnimationFactory
{
    

    CustomTextAnimationFactory@ createDXY(string text, int fontSize, int dx, int dy, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        CustomTextAnimationFactory@ customTextAnimationFactory = CustomTextAnimationFactory().jinit_CustomTextAnimationFactory(text, fontSize, animationBehaviorFactory);
        customTextAnimationFactory.dx = dx;
        customTextAnimationFactory.dy = dy;
        return customTextAnimationFactory;
    }
}

