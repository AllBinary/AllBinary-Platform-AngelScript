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
// package org.allbinary.game.layer

class PaintableLayerComposite : Paintable
{
    ABLayer@[]@ paintableArray_PaintableLayerComposite;
    

    PaintableLayerComposite@ jinit_PaintableLayerComposite(ABLayer@[]@ paintableArray)
    {
        this.jinit_Paintable();
        @this.paintableArray_PaintableLayerComposite = paintableArray;
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        for (int index = int(this.paintableArray_PaintableLayerComposite.length()); --index >= 0; ) {
            this.paintableArray_PaintableLayerComposite[index].paint(graphics);
        }
    }
    

    void paintThreed(Graphics@ graphics)
    {
        PaintableInterface@ paintableInterface;
        for (int index = int(this.paintableArray_PaintableLayerComposite.length()); --index >= 0; ) {
            @paintableInterface = cast<PaintableInterface>(this.paintableArray_PaintableLayerComposite[index]);
            paintableInterface.paintThreed(graphics);
        }
    }
}

