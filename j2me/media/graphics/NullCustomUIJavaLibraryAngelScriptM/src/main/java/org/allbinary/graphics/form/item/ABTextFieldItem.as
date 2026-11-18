// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

class ABTextFieldItem : ABTextItem
{
    Font@ font_ABTextFieldItem;
    

    ABTextFieldItem@ jinit_ABTextFieldItem(Canvas@ canvas, Visitor@ visitor, string label, string value, int maxSize, int layout, string altText, Font@ font, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_ABTextItem(label, layout, altText, backgroundBasicColor, foregroundBasicColor);
        @this.font_ABTextFieldItem = font;
        return this;
    }
    

    string getLabel()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    void setLabel(string label)
    {
    }
    

    string getString()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    void setString(string string_)
    {
    }
    

    void setFocus(bool state)
    {
    }
    

    int getFontHeight()
    {
        return this.font_ABTextFieldItem.getHeight();
    }
    

    void setBackgroundBasicColorP(BasicColor@ basicColor)
    {
    }
    

    void setForegroundBasicColorP(BasicColor@ basicColor)
    {
    }
}

