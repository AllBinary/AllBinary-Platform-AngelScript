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
// package org.allbinary.graphics.canvas.transition.progress

class ProgressPaintable : Paintable
{
    ProgressCanvas@ progressCanvas_ProgressPaintable;
    

    ProgressPaintable@ jinit_ProgressPaintable(ProgressCanvas@ progressCanvas)
    {
        this.jinit_Paintable();
        @this.progressCanvas_ProgressPaintable = progressCanvas;
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        this.progressCanvas_ProgressPaintable.paint2(graphics);
    }
}

