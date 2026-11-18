// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

class ABTextItem : CustomCustomItem, ABCustomItemInterface
{
    

    ABTextItem@ jinit_ABTextItem(string label, int layout, string altText, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_CustomCustomItem(label, backgroundBasicColor, foregroundBasicColor);
        return this;
    }
    

    void keyPressed(int keyCode)
    {
    }
    

    void paintUnselected(Graphics@ graphics, int x, int y)
    {
    }
    

    ABStringComponent@ getLabelStringComponent()
    {
        return ABStringComponent::NULL_STRING_COMPONENT;
    }
    

    int getMinimumWidth()
    {
        return CustomCustomItem::getMinimumWidth();
    }
    

    int getMinimumHeight()
    {
        return CustomCustomItem::getMinimumHeight();
    }
    

    string getLabel()
    {
        return CustomCustomItem::getLabel();
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        CustomCustomItem::paintXY(graphics, x, y);
    }
}

