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

class MultipleScrollSelectionFormHorizontalPaintable : ItemIndexPaintable
{
    MultipleScrollSelectionHorizontalForm@ multipleScrollSelectionForm_MultipleScrollSelectionFormHorizontalPaintable;
    

    MultipleScrollSelectionFormHorizontalPaintable@ jinit_MultipleScrollSelectionFormHorizontalPaintable(MultipleScrollSelectionHorizontalForm@ multipleScrollSelectionForm)
    {
        this.jinit_ItemIndexPaintable();
        @this.multipleScrollSelectionForm_MultipleScrollSelectionFormHorizontalPaintable = multipleScrollSelectionForm;
        return this;
    }
    

    int paint(Graphics@ graphics, int index, ABCustomItem@ item, int dx, int dy)
    {
        return this.multipleScrollSelectionForm_MultipleScrollSelectionFormHorizontalPaintable.paintHorizontal(graphics, index, item, dx, dy);
    }
}

