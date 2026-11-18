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

class HorizontalItemIndexDx : ItemIndexDx
{
    ScrollCurrentSelectionForm@ scrollCurrentSelectionForm_HorizontalItemIndexDx;
    

    HorizontalItemIndexDx@ jinit_HorizontalItemIndexDx(ScrollCurrentSelectionForm@ scrollCurrentSelectionForm)
    {
        this.jinit_ItemIndexDx();
        @this.scrollCurrentSelectionForm_HorizontalItemIndexDx = scrollCurrentSelectionForm;
        return this;
    }
    

    int getDx(int index, ABCustomItem@ item, int dx, int dy)
    {
        return this.scrollCurrentSelectionForm_HorizontalItemIndexDx.getXHorizontalForm(index, item, dx, dy);
    }
}

