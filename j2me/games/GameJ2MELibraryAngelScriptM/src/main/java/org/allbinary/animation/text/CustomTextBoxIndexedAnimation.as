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

class CustomTextBoxIndexedAnimation : IndexedAnimation, RawKeyEventListener, UpdateMyFontInterface, TextInterface
{
    CustomTextBox@ customTextBox_CustomTextBoxIndexedAnimation;
    string lastText_CustomTextBoxIndexedAnimation;
    bool hasChanged;
    TextChangeListener@ textChangeListener_CustomTextBoxIndexedAnimation;

    // Java field initializers run after the super constructor
    void jfields_CustomTextBoxIndexedAnimation()
    {
    
    this.lastText_CustomTextBoxIndexedAnimation = StringUtil::getInstance().INIT_STRING;
    this.hasChanged = true;
    @this.textChangeListener_CustomTextBoxIndexedAnimation = TextChangeListener::getInstance();
    }
    

    CustomTextBoxIndexedAnimation@ jinit_CustomTextBoxIndexedAnimation(CustomTextBox@ customTextBox)
    {
        this.jinit_IndexedAnimation(AnimationBehavior::getInstance());
        this.jfields_CustomTextBoxIndexedAnimation();
        @this.customTextBox_CustomTextBoxIndexedAnimation = customTextBox;
        return this;
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        this.customTextBox_CustomTextBoxIndexedAnimation.getTextFieldItem().setForegroundBasicColorP(basicColor);
    }
    

    void setBackgroundBasicColorP(BasicColor@ basicColor)
    {
        this.customTextBox_CustomTextBoxIndexedAnimation.getTextFieldItem().setBackgroundBasicColorP(basicColor);
    }
    

    void setTextWithOnMeasure(string text, TextChangeListener@ textChangeListener)
    {
        this.setText(text);
        @this.textChangeListener_CustomTextBoxIndexedAnimation = textChangeListener;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.textChangeListener_CustomTextBoxIndexedAnimation.onMeasure();
        @this.textChangeListener_CustomTextBoxIndexedAnimation = TextChangeListener::getInstance();
    }
    

    void setText(string text)
    {
        if (this.lastText_CustomTextBoxIndexedAnimation != text) {
            this.hasChanged = true;
            this.lastText_CustomTextBoxIndexedAnimation = text;
            this.customTextBox_CustomTextBoxIndexedAnimation.getTextFieldItem().setString(text);
        }
    }
    

    string getText()
    {
        return this.customTextBox_CustomTextBoxIndexedAnimation.getTextFieldItem().getString();
    }
    

    void onEventRaw(int keyCode, int deviceId, bool repeated)
    {
        this.customTextBox_CustomTextBoxIndexedAnimation.onEventRaw(keyCode, deviceId, repeated);
    }
    

    int getFontHeight()
    {
        return this.customTextBox_CustomTextBoxIndexedAnimation.getTextFieldItem().getFontHeight();
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.customTextBox_CustomTextBoxIndexedAnimation.paintXY(graphics, x, y);
    }
    

    void paintThreedXYZ(Graphics@ graphics, int x, int y, int z)
    {
    }
    

    int getWidth()
    {
        return IndexedAnimation::getWidth();
    }
}

