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

class CustomTextBoxIndexedAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface
{
    LogUtil@ logUtil;
    ScaleProperties@ scaleProperties;
    int maxLength_CustomTextBoxIndexedAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_CustomTextBoxIndexedAnimationFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    
    
    }
    

    CustomTextBoxIndexedAnimationFactory@ jinit_CustomTextBoxIndexedAnimationFactory(int fontSize, int maxLength)
    {
        this.jfields_CustomTextBoxIndexedAnimationFactory();
        @this.scaleProperties = ScaleProperties().jinit_ScaleProperties();
        this.scaleProperties.scaleHeight = fontSize;
        this.maxLength_CustomTextBoxIndexedAnimationFactory = maxLength;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        ABToGBUtil@ abToGBUtil = ABToGBUtil::getInstance();
        AllBinaryGameCanvas@ abCanvas = cast<AllBinaryGameCanvas>(abToGBUtil.abCanvas);
        Font@ font = Font::getFont(Font::FACE_SYSTEM, Font::STYLE_PLAIN, this.scaleProperties.scaleHeight);
        CustomTextBox@ customTextBox = CustomTextBox2().jinit_CustomTextBox2(abCanvas.getCustomCommandListener(), StringUtil::getInstance().EMPTY_STRING, StringUtil::getInstance().EMPTY_STRING, this.maxLength_CustomTextBoxIndexedAnimationFactory, TextField::ANY, font, abCanvas.getLayerManager().getBackgroundBasicColor(), abCanvas.getLayerManager().getForegroundBasicColor());
        return CustomTextBoxIndexedAnimation().jinit_CustomTextBoxIndexedAnimation(customTextBox);
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
        int fontSize = this.scaleProperties.scaleHeight;
        @this.scaleProperties = scaleProperties;
        if (this.scaleProperties.scaleHeight < 6) {
            this.scaleProperties.scaleHeight = fontSize;
        }
    }
}

