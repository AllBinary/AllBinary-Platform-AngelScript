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

class KeyValueDrawString : JObjectBase, UpdateMyFontInterface
{
    MyFontProcessor@ myFontProcessor;
    string LABEL;
    int labelX;
    int valueX;
    string value;

    // Java field initializers run after the super constructor
    void jfields_KeyValueDrawString()
    {
    @this.myFontProcessor = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    
    
    
    this.value = StringUtil::getInstance().EMPTY_STRING;
    }
    

    KeyValueDrawString@ jinit_KeyValueDrawString(string label, int x)
    {
        this.jfields_KeyValueDrawString();
        this.LABEL = label;
        this.labelX = x;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        int labelWidth = graphics.getFont().stringWidth(this.LABEL) - int(this.LABEL.length());
        this.valueX = labelWidth + this.labelX;
        @this.myFontProcessor = MyFontProcessor::getInstance();
    }
    

    void paint(Graphics@ graphics, int y)
    {
        this.myFontProcessor.process(graphics);
        graphics.drawString(this.LABEL, this.labelX, y, 0);
        graphics.drawString(this.value, this.valueX, y, 0);
    }
    

    void update(string value)
    {
        this.value = value;
    }
}

