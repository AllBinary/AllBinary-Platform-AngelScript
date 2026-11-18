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
// package org.allbinary.animation.text

class CustomTextAnimation : TextAnimation, TextInterface
{
    FontDebugFactory@ fontDebugFactory;
    int fontSize;
    Font@ font;
    string lastText_CustomTextAnimation;
    bool hasChanged;
    int textWidth_CustomTextAnimation;

    // Java field initializers run after the super constructor
    void jfields_CustomTextAnimation()
    {
    @this.fontDebugFactory = FontDebugFactory::getInstance();
    
    
    this.lastText_CustomTextAnimation = StringUtil::getInstance().INIT_STRING;
    this.hasChanged = true;
    
    }
    

    CustomTextAnimation@ jinit_CustomTextAnimation(string text, int fontSize, AnimationBehavior@ animationBehavior)
    {
        this.jinit_TextAnimation(text, animationBehavior);
        this.jfields_CustomTextAnimation();
        this.fontSize = fontSize;
        @this.font = Font::getFont(Font::FACE_SYSTEM, Font::STYLE_PLAIN, fontSize);
        return this;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.myFontProcessor.process(graphics);
        Font@ existingFont = graphics.getFont();
        this.fontDebugFactory.setFont(this.font, graphics);
        TextAnimation::paintXYNoUpdate(graphics, x, y);
        this.fontDebugFactory.setFont(existingFont, graphics);
    }
    

    void setScale(float scaleX, float scaleY)
    {
        if (scaleX != scaleY) {
            jthrow(RuntimeException().jinit_RuntimeException());
        }
        this.hasChanged = true;
        @this.font = Font::getFont(Font::FACE_SYSTEM, Font::STYLE_PLAIN, int(jdoubleToInt((float(this.fontSize) * scaleX))));
    }
    

    void setTextWithOnMeasure(string text, TextChangeListener@ textChangeListener)
    {
        TextAnimation::setTextWithOnMeasure(text, textChangeListener);
    }
    

    void setText(string text)
    {
        if (this.lastText_CustomTextAnimation != text) {
            this.hasChanged = true;
            this.lastText_CustomTextAnimation = text;
            TextAnimation::setText(text);
        }
    }
    

    string getText()
    {
        return this.lastText_CustomTextAnimation;
    }
    

    int getWidth()
    {
        if (this.hasChanged) {
            this.textWidth_CustomTextAnimation = this.font.stringWidth(this.textArrayP[0]);
            this.hasChanged = false;
        }
        return this.textWidth_CustomTextAnimation;
    }
    

    int getFontHeight()
    {
        return this.font.getHeight();
    }
}

