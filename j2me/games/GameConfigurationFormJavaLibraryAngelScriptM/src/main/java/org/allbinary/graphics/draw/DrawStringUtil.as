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

class DrawStringUtil : JObjectBase
{
    string EMPTY_STRING_DrawStringUtil;
    int anchor_DrawStringUtil;

    // Java field initializers run after the super constructor
    void jfields_DrawStringUtil()
    {
    this.EMPTY_STRING_DrawStringUtil = StringUtil::getInstance().EMPTY_STRING;
    this.anchor_DrawStringUtil = Anchor::TOP_LEFT;
    }

    DrawStringUtil@ jinit_DrawStringUtil()
    {
        this.jfields_DrawStringUtil();
        return this;
    }
    

    void drawCenterString(Graphics@ graphics, string string_, int offset, int length, int x, int y)
    {
        int width = (graphics.getFont().substringWidth(string_, offset, length) >>> 1);
        try {
            graphics.drawSubstring(string_, offset, length, x - width, y, this.anchor_DrawStringUtil);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::put(StringMaker().jinit_StringMaker().append("Exception: stringLength: ").appendint(int(string_.length())).append(" offset: ").appendint(offset).append(" currentLength: ").appendint(length).toString(), this, "drawCenterString");
            }
            else { jthrow(jex0); }
        }
    }
    

    void drawCenterStrings(Graphics@ graphics, string[]@ stringArray, int maxWidth, int charHeight, int x, int y)
    {
        int extraLines = 0;
        for (int index = 0; index < int(stringArray.length()); index++) {
            string string_ = stringArray[index];
            if (string_ != this.EMPTY_STRING_DrawStringUtil) {
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
                    this.drawCenterString(graphics, string_, offset, currentLength, x, y + ((index + extraLines++) * charHeight));
                    offset = offset + currentLength;
                    currentLength = linePortion;
                }
                extraLines--;
            }
        }
    }
}

namespace DrawStringUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DrawStringUtil().jinit_DrawStringUtil();
    }

    DrawStringUtil@ jcell_instance;
    DrawStringUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DrawStringUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    DrawStringUtil@ getInstance()
    {
        return DrawStringUtil::instance;
    }
}

