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
    MyFontProcessor@ myFontProcessor_KeyValueDrawString;
    string LABEL_KeyValueDrawString;
    int labelX_KeyValueDrawString;
    int valueX_KeyValueDrawString;
    string value_KeyValueDrawString;

    // Java field initializers run after the super constructor
    void jfields_KeyValueDrawString()
    {
    @this.myFontProcessor_KeyValueDrawString = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    
    
    
    this.value_KeyValueDrawString = StringUtil::getInstance().EMPTY_STRING;
    }
    

    KeyValueDrawString@ jinit_KeyValueDrawString(string label, int x)
    {
        this.jfields_KeyValueDrawString();
        this.LABEL_KeyValueDrawString = label;
        this.labelX_KeyValueDrawString = x;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        int labelWidth = graphics.getFont().stringWidth(this.LABEL_KeyValueDrawString) - int(this.LABEL_KeyValueDrawString.length());
        this.valueX_KeyValueDrawString = labelWidth + this.labelX_KeyValueDrawString;
        @this.myFontProcessor_KeyValueDrawString = MyFontProcessor::getInstance();
    }
    

    void paint(Graphics@ graphics, int y)
    {
        this.myFontProcessor_KeyValueDrawString.process(graphics);
        graphics.drawString(this.LABEL_KeyValueDrawString, this.labelX_KeyValueDrawString, y, 0);
        graphics.drawString(this.value_KeyValueDrawString, this.valueX_KeyValueDrawString, y, 0);
    }
    

    void update(string value)
    {
        this.value_KeyValueDrawString = value;
    }
}

