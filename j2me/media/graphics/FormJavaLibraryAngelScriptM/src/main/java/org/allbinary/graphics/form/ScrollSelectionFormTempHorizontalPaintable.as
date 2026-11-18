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
// package org.allbinary.graphics.form

class ScrollSelectionFormTempHorizontalPaintable : ItemIndexPaintable
{
    ScrollSelectionForm@ scrollSelectionForm_ScrollSelectionFormTempHorizontalPaintable;
    

    ScrollSelectionFormTempHorizontalPaintable@ jinit_ScrollSelectionFormTempHorizontalPaintable(ScrollSelectionForm@ scrollSelectionForm)
    {
        this.jinit_ItemIndexPaintable();
        @this.scrollSelectionForm_ScrollSelectionFormTempHorizontalPaintable = scrollSelectionForm;
        return this;
    }
    

    int paint(Graphics@ graphics, int index, ABCustomItem@ item, int dx, int dy)
    {
        return this.scrollSelectionForm_ScrollSelectionFormTempHorizontalPaintable.paintItemTempHorizontal(graphics, index, item, dx, dy);
    }
}

