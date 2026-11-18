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
// package org.allbinary.game.displayable.canvas

class BasicPaintablesCanvas : GameCommandCanvas
{
    Paintable@[]@ paintableArray_BasicPaintablesCanvas;
    ColorFillBasePaintable@ colorFillPaintable_BasicPaintablesCanvas;
    

    BasicPaintablesCanvas@ jinit_BasicPaintablesCanvas(CommandListener@ cmdListener, string name, AllBinaryGameLayerManager@ allBinaryGameLayerManager, Paintable@[]@ paintableArray)
    {
        this.jinit_GameCommandCanvas(cmdListener, name, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        @this.paintableArray_BasicPaintablesCanvas = paintableArray;
        @this.colorFillPaintable_BasicPaintablesCanvas = ColorFillPaintableFactory::getInstance_jstatic().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        this.colorFillPaintable_BasicPaintablesCanvas.paint(graphics);
        graphics.setColor(this.foregroundColor);
        for (int index = int(this.paintableArray_BasicPaintablesCanvas.length()) - 1; index >= 0; index--) {
            this.paintableArray_BasicPaintablesCanvas[index].paint(graphics);
        }
        GameCommandCanvas::paint(graphics);
    }
}

