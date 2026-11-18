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

class ScrollSelectionFormTempHorizontalDx : ItemIndexDx
{
    ScrollSelectionForm@ scrollSelectionForm_ScrollSelectionFormTempHorizontalDx;
    

    ScrollSelectionFormTempHorizontalDx@ jinit_ScrollSelectionFormTempHorizontalDx(ScrollSelectionForm@ scrollSelectionForm)
    {
        this.jinit_ItemIndexDx();
        @this.scrollSelectionForm_ScrollSelectionFormTempHorizontalDx = scrollSelectionForm;
        return this;
    }
    

    int getDx(int index, ABCustomItem@ item, int dx, int dy)
    {
        return this.scrollSelectionForm_ScrollSelectionFormTempHorizontalDx.getSelectedIndexForPointTempHorizontalDx(index, item, dx, dy);
    }
}

