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

class TempHorizontalItemIndexDx : ItemIndexDx
{
    ScrollCurrentSelectionForm@ scrollCurrentSelectionForm_TempHorizontalItemIndexDx;
    

    TempHorizontalItemIndexDx@ jinit_TempHorizontalItemIndexDx(ScrollCurrentSelectionForm@ scrollCurrentSelectionForm)
    {
        this.jinit_ItemIndexDx();
        @this.scrollCurrentSelectionForm_TempHorizontalItemIndexDx = scrollCurrentSelectionForm;
        return this;
    }
    

    int getDx(int index, ABCustomItem@ item, int dx, int dy)
    {
        return this.scrollCurrentSelectionForm_TempHorizontalItemIndexDx.getXTempHorizontalForm(index, item, dx, dy);
    }
}

