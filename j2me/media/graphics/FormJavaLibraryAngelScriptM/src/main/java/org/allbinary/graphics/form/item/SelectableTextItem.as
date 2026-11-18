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
// package org.allbinary.graphics.form.item

class SelectableTextItem : ABTextItem
{
    

    SelectableTextItem@ jinit_SelectableTextItem(string label, int layout, string altText, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_ABTextItem(label, layout, altText, backgroundBasicColor, foregroundBasicColor);
        return this;
    }
    

    bool isFocusable()
    {
        return true;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.myFontProcessor.process(graphics);
        ABStringComponent@ stringComponent = this.getLabelStringComponent();
        if (stringComponent !is null) {
            graphics.setColor(stringComponent.getForegroundBasicColor().intValue());
        }
        graphics.drawString(this.getLabel(), x + 2, y, 0);
    }
}

