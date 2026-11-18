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
// package org.allbinary.graphics.paint

class PaintableComposite : Paintable
{
    PaintableInterface@[]@ paintableArray_PaintableComposite;
    

    PaintableComposite@ jinit_PaintableComposite(PaintableInterface@[]@ paintableArray)
    {
        this.jinit_Paintable();
        @this.paintableArray_PaintableComposite = paintableArray;
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        for (int index = int(this.paintableArray_PaintableComposite.length()) - 1; index >= 0; index--) {
            this.paintableArray_PaintableComposite[index].paint(graphics);
        }
    }
    

    void paintThreed(Graphics@ graphics)
    {
        for (int index = int(this.paintableArray_PaintableComposite.length()) - 1; index >= 0; index--) {
            this.paintableArray_PaintableComposite[index].paintThreed(graphics);
        }
    }
}

