// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

class ABCustomImageItem : ABCustomItem
{
    int yOffset;

    // Java field initializers run after the super constructor
    void jfields_ABCustomImageItem()
    {
    this.yOffset = 0;
    }
    

    ABCustomImageItem@ jinit_ABCustomImageItem(string label, Image@ image, int layout, string altText, BasicColor@ basicColor, int yOffset)
    {
        this.jinit_ABCustomItem(label, basicColor, basicColor);
        this.jfields_ABCustomImageItem();
        return this;
    }
    

    Image@ getImage()
    {
        return NullImage::NULL_IMAGE;
    }
}

