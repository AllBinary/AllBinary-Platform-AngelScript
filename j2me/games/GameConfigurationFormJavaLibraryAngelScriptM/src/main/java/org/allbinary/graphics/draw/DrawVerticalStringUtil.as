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
// package org.allbinary.graphics.draw

class DrawVerticalStringUtil : JObjectBase
{
    string EMPTY_STRING_DrawVerticalStringUtil;
    int anchor_DrawVerticalStringUtil;
    int charHeight_DrawVerticalStringUtil;
    int offsetY_DrawVerticalStringUtil;
    int[]@ offsetXArray_DrawVerticalStringUtil;

    // Java field initializers run after the super constructor
    void jfields_DrawVerticalStringUtil()
    {
    this.EMPTY_STRING_DrawVerticalStringUtil = StringUtil::getInstance().EMPTY_STRING;
    this.anchor_DrawVerticalStringUtil = Anchor::TOP_LEFT;
    
    
    @this.offsetXArray_DrawVerticalStringUtil = NullUtil::getInstance().NULL_INT_ARRAY;
    }

    DrawVerticalStringUtil@ jinit_DrawVerticalStringUtil()
    {
        this.jfields_DrawVerticalStringUtil();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics, string string_)
    {
        OpenGLFeatureUtil@ openGLFeatureUtil = OpenGLFeatureUtil::getInstance();
        Font@ font = graphics.getFont();
        this.charHeight_DrawVerticalStringUtil = font.getHeight();
        this.offsetY_DrawVerticalStringUtil = 0;
        if (J2MEUtil::isHTML()) {
            this.charHeight_DrawVerticalStringUtil += 1;
        } else if (openGLFeatureUtil.isAnyThreed()) {
            this.charHeight_DrawVerticalStringUtil += 2;
            if (AndroidUtil::isAndroid()) {
            } else {
                this.offsetY_DrawVerticalStringUtil = 2 + (this.charHeight_DrawVerticalStringUtil * 2 / 3);
            }
        }
        int size = int(string_.length());
        uint16 aChar = 0;
        int[]@ offsetXArray = array<int>(size);
        for (int index = size - 1; index >= 0; index--) {
            aChar = String::charAt(string_, index);
            if (openGLFeatureUtil.isAnyThreed()) {
                offsetXArray[index] = font.charWidth(aChar) / 2;
            }
        }
        @this.offsetXArray_DrawVerticalStringUtil = offsetXArray;
    }
    

    void paintVerticle(Graphics@ graphics, string string_, int x, int y, int anchor)
    {
        int size = int(string_.length());
        uint16 aChar = 0;
        for (int index = size - 1; index >= 0; index--) {
            aChar = String::charAt(string_, index);
            graphics.drawChar(aChar, x + this.offsetXArray_DrawVerticalStringUtil[index], y + (this.charHeight_DrawVerticalStringUtil * index) + this.offsetY_DrawVerticalStringUtil, anchor);
        }
    }
    

    void drawCenterString(Graphics@ graphics, string string_, int offset, int length, int x, int y)
    {
        int width = (graphics.getFont().substringWidth(string_, offset, length) >>> 1);
        try {
            graphics.drawSubstring(string_, offset, length, x - width, y, this.anchor_DrawVerticalStringUtil);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::put(StringMaker().jinit_StringMaker().append("Exception: stringLength: ").appendint(int(string_.length())).append(" offset: ").appendint(offset).append(" currentLength: ").appendint(length).toString(), this, "drawCenterString");
            }
            else { jthrow(jex0); }
        }
    }
    

    void drawCenterStrings(Graphics@ graphics, string[]@ stringArray, int maxWidth, int x, int y)
    {
        int extraLines = 0;
        for (int index = 0; index < int(stringArray.length()); index++) {
            string string_ = stringArray[index];
            if (string_ != this.EMPTY_STRING_DrawVerticalStringUtil) {
                int width = graphics.getFont().stringWidth(string_);
                int minTotalLines = 1;
                if (width > maxWidth) {
                    minTotalLines = (width / maxWidth) + 1;
                }
                int linePortion = int(string_.length()) / minTotalLines;
                int offset = 0;
                int currentLength = linePortion;
                int size = int(string_.length());
                while (offset < size) {
                    if (offset + currentLength > size) {
                        currentLength = size - offset;
                    }
                    if (offset + currentLength != size) {
                        while (currentLength > 0 && String::charAt(stringArray[index], offset + currentLength) != uint16(' ')) {
                            currentLength--;
                        }
                        if (currentLength <= 4) {
                            currentLength = linePortion;
                        }
                    }
                    this.drawCenterString(graphics, string_, offset, currentLength, x, y + ((index + extraLines++) * this.charHeight_DrawVerticalStringUtil));
                    offset = offset + currentLength;
                    currentLength = linePortion;
                }
                extraLines--;
            }
        }
    }
}

namespace DrawVerticalStringUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DrawVerticalStringUtil().jinit_DrawVerticalStringUtil();
    }

    DrawVerticalStringUtil@ jcell_instance;
    DrawVerticalStringUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DrawVerticalStringUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    DrawVerticalStringUtil@ getInstance()
    {
        return DrawVerticalStringUtil::instance;
    }
}

