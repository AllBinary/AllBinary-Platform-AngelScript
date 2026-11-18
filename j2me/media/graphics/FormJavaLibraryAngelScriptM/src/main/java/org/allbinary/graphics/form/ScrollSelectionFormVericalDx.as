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

class ScrollSelectionFormVericalDx : ItemIndexDx
{
    ScrollSelectionForm@ scrollSelectionForm_ScrollSelectionFormVericalDx;
    

    ScrollSelectionFormVericalDx@ jinit_ScrollSelectionFormVericalDx(ScrollSelectionForm@ scrollSelectionForm)
    {
        this.jinit_ItemIndexDx();
        @this.scrollSelectionForm_ScrollSelectionFormVericalDx = scrollSelectionForm;
        return this;
    }
    

    int getDx(int index, ABCustomItem@ item, int dx, int dy)
    {
        return this.scrollSelectionForm_ScrollSelectionFormVericalDx.getSelectedIndexForPointVerticalDx(index, item, dx, dy);
    }
}

