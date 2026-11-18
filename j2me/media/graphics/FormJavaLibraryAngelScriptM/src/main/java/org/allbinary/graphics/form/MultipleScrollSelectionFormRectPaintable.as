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

class MultipleScrollSelectionFormRectPaintable : Paintable
{
    MultipleScrollSelectionHorizontalForm@ multipleScrollSelectionForm_MultipleScrollSelectionFormRectPaintable;
    

    MultipleScrollSelectionFormRectPaintable@ jinit_MultipleScrollSelectionFormRectPaintable(MultipleScrollSelectionHorizontalForm@ multipleScrollSelectionForm)
    {
        this.jinit_Paintable();
        @this.multipleScrollSelectionForm_MultipleScrollSelectionFormRectPaintable = multipleScrollSelectionForm;
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        this.multipleScrollSelectionForm_MultipleScrollSelectionFormRectPaintable.fillRect(graphics);
    }
}

