// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

class CustomCustomItem : ABCustomItem, UpdateMyFontInterface
{
    MyFontProcessor@ updateMyFontProcessor;
    MyFontProcessor@ myFontProcessor;

    // Java field initializers run after the super constructor
    void jfields_CustomCustomItem()
    {
    @this.updateMyFontProcessor = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    CustomCustomItem@ jinit_CustomCustomItem(string label, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_ABCustomItem(label, backgroundBasicColor, foregroundBasicColor);
        this.jfields_CustomCustomItem();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
    }
}

