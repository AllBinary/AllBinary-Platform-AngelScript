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

class KeyValueDrawCharArray : JObjectBase, UpdateMyFontInterface
{
    MyFontProcessor@ myFontProcessor_KeyValueDrawCharArray;
    string LABEL_KeyValueDrawCharArray;
    int labelX_KeyValueDrawCharArray;
    int valueX_KeyValueDrawCharArray;
    uint16[]@ value_KeyValueDrawCharArray;
    int len_KeyValueDrawCharArray;

    // Java field initializers run after the super constructor
    void jfields_KeyValueDrawCharArray()
    {
    @this.myFontProcessor_KeyValueDrawCharArray = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    
    
    
    @this.value_KeyValueDrawCharArray = CharArrayFactory::getInstance().getZeroCharArray();
    
    }
    

    KeyValueDrawCharArray@ jinit_KeyValueDrawCharArray(string label, int x)
    {
        this.jfields_KeyValueDrawCharArray();
        this.LABEL_KeyValueDrawCharArray = label;
        this.labelX_KeyValueDrawCharArray = x;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        int labelWidth = graphics.getFont().stringWidth(this.LABEL_KeyValueDrawCharArray) - int(this.LABEL_KeyValueDrawCharArray.length());
        this.valueX_KeyValueDrawCharArray = labelWidth + this.labelX_KeyValueDrawCharArray;
        @this.myFontProcessor_KeyValueDrawCharArray = MyFontProcessor::getInstance();
    }
    

    void paint(Graphics@ graphics, int y)
    {
        this.myFontProcessor_KeyValueDrawCharArray.process(graphics);
        graphics.drawString(this.LABEL_KeyValueDrawCharArray, this.labelX_KeyValueDrawCharArray, y, 0);
        graphics.drawChars(this.value_KeyValueDrawCharArray, 0, this.len_KeyValueDrawCharArray, this.valueX_KeyValueDrawCharArray, y, 0);
    }
    

    void update(uint16[]@ value, int len)
    {
        @this.value_KeyValueDrawCharArray = value;
        this.len_KeyValueDrawCharArray = len;
    }
}

