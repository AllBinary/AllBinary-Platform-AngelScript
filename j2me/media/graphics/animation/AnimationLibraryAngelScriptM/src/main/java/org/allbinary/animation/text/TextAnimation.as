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

class TextAnimation : IndexedAnimation, UpdateMyFontInterface
{
    MyFontProcessor@ updateMyFontProcessor_TextAnimation;
    MyFontProcessor@ myFontProcessor;
    string[]@ textArrayP;
    int anchor_TextAnimation;
    int fontHeight_TextAnimation;
    int offsetY_TextAnimation;
    TextChangeListener@ textChangeListener_TextAnimation;

    // Java field initializers run after the super constructor
    void jfields_TextAnimation()
    {
    @this.updateMyFontProcessor_TextAnimation = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor = this.updateMyFontProcessor_TextAnimation;
    @this.textArrayP = StringUtil::getInstance().ONE_EMPTY_STRING_ARRAY;
    this.anchor_TextAnimation = Anchor::TOP_LEFT;
    this.fontHeight_TextAnimation = 0;
    this.offsetY_TextAnimation = 0;
    @this.textChangeListener_TextAnimation = TextChangeListener::getInstance();
    }
    

    TextAnimation@ jinit_TextAnimation(string text, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        this.jfields_TextAnimation();
        this.setText(text);
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.fontHeight_TextAnimation = font.getHeight();
        int adjustedFontHeight = int(jdoubleToInt(-(double(this.fontHeight_TextAnimation) * 2.00)));
        this.offsetY_TextAnimation = (SWTJOGLProcessor::getInstance().isJOGL() ? adjustedFontHeight : 0);
        this.textChangeListener_TextAnimation.onMeasure();
        @this.textChangeListener_TextAnimation = TextChangeListener::getInstance();
        @this.myFontProcessor = MyFontProcessor::getInstance();
    }
    

    void nextFrame()
    {
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.myFontProcessor.process(graphics);
        this.paintXYNoUpdate(graphics, x, y);
    }
    

    void paintXYNoUpdate(Graphics@ graphics, int x, int y)
    {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        int size = int(this.textArrayP.length());
        for (int index = 0; index < size; index++) {
            graphics.drawString(this.textArrayP[index], x, y + this.offsetY_TextAnimation + (index * this.fontHeight_TextAnimation), this.anchor_TextAnimation);
        }
    }
    

    void setTextWithOnMeasure(string text, TextChangeListener@ textChangeListener)
    {
        this.setText(text);
        @this.textChangeListener_TextAnimation = textChangeListener;
    }
    

    void setText(string text)
    {
        BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
        if (int(text.length()) > 0) {
            int index = 0;
            int startIndex = 0;
            int endIndex = 0;
            while (index >= 0) {
                startIndex = index;
                index = String::indexOf(text, uint16('\n'), startIndex);
                endIndex = index;
                if (index < 0) {
                    endIndex = int(text.length());
                }
                list.add(jbox(String::substring(text, startIndex, endIndex)));
                if (index < 0) {
                    break;
                }
                index++;
            }
        }
        if (list.size() > 0) {
            string[]@ textArray = array<string>(list.size());
            int size = list.size();
            for (int index = 0; index < size; index++) {
                textArray[index] = jstringOf(list.get(index));
            }
            @this.textArrayP = textArray;
        } else {
            @this.textArrayP = StringUtil::getInstance().ONE_EMPTY_STRING_ARRAY;
        }
        @this.myFontProcessor = this.updateMyFontProcessor_TextAnimation;
    }
    

    string[]@ getTextArray()
    {
        return this.textArrayP;
    }
    

    int getFontHeight()
    {
        return this.fontHeight_TextAnimation;
    }
}

