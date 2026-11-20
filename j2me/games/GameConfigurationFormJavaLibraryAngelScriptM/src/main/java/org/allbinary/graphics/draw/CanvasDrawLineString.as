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

class CanvasDrawLineString : JObjectBase, UpdateMyFontInterface
{
    DrawStringUtil@ drawStringUtil_CanvasDrawLineString;
    MyFontProcessor@ myFontProcessor_CanvasDrawLineString;
    int x_CanvasDrawLineString;
    int y_CanvasDrawLineString;
    int fontHeight_CanvasDrawLineString;

    // Java field initializers run after the super constructor
    void jfields_CanvasDrawLineString()
    {
    @this.drawStringUtil_CanvasDrawLineString = DrawStringUtil::getInstance();
    @this.myFontProcessor_CanvasDrawLineString = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    
    
    this.fontHeight_CanvasDrawLineString = 0;
    }
    

    CanvasDrawLineString@ jinit_CanvasDrawLineString(int x, int y)
    {
        this.jfields_CanvasDrawLineString();
        this.x_CanvasDrawLineString = x;
        this.y_CanvasDrawLineString = y;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.fontHeight_CanvasDrawLineString = font.getHeight();
        @this.myFontProcessor_CanvasDrawLineString = MyFontProcessor::getInstance();
    }
    

    void paint(Graphics@ graphics, string string_, int line)
    {
        this.myFontProcessor_CanvasDrawLineString.process(graphics);
        this.drawStringUtil_CanvasDrawLineString.drawCenterString(graphics, string_, 0, int(string_.length()), this.x_CanvasDrawLineString, this.y_CanvasDrawLineString + (line * this.fontHeight_CanvasDrawLineString));
    }
}

namespace CanvasDrawLineString
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_CANVAS_DRAW_LINE_STRING = CanvasDrawLineString().jinit_CanvasDrawLineString(0, 0);
    }

    CanvasDrawLineString@ jcell_NULL_CANVAS_DRAW_LINE_STRING;
    CanvasDrawLineString@ get_NULL_CANVAS_DRAW_LINE_STRING() property { jclinit(); return jcell_NULL_CANVAS_DRAW_LINE_STRING; }
    void set_NULL_CANVAS_DRAW_LINE_STRING(CanvasDrawLineString@ value) property { jclinit(); @jcell_NULL_CANVAS_DRAW_LINE_STRING = value; }
}

