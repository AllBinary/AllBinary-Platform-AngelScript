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

class BufferedGameCanvasPaintHelper : ProcessPaintable
{
    Canvas@ gameCanvas_BufferedGameCanvasPaintHelper;
    Image@[]@ offScreenImage_BufferedGameCanvasPaintHelper;
    Image@ previousImage_BufferedGameCanvasPaintHelper;
    CircularIndexUtil@ circularIndexUtil_BufferedGameCanvasPaintHelper;
    CircularIndexUtil@ drawCircularIndexUtil_BufferedGameCanvasPaintHelper;
    int anchor_BufferedGameCanvasPaintHelper;

    // Java field initializers run after the super constructor
    void jfields_BufferedGameCanvasPaintHelper()
    {
    @this.gameCanvas_BufferedGameCanvasPaintHelper = NullCanvas::NULL_CANVAS;
    @this.offScreenImage_BufferedGameCanvasPaintHelper = array<Image@>(BufferedGameCanvasPaintHelper::MAX_IMAGES);
    @this.previousImage_BufferedGameCanvasPaintHelper = NullImage::NULL_IMAGE;
    @this.circularIndexUtil_BufferedGameCanvasPaintHelper = CircularIndexUtil::createInstance(BufferedGameCanvasPaintHelper::MAX_IMAGES);
    @this.drawCircularIndexUtil_BufferedGameCanvasPaintHelper = CircularIndexUtil::createInstanceAt(BufferedGameCanvasPaintHelper::MAX_IMAGES - 1, BufferedGameCanvasPaintHelper::MAX_IMAGES);
    this.anchor_BufferedGameCanvasPaintHelper = Anchor::TOP_LEFT;
    }
    

    BufferedGameCanvasPaintHelper@ jinit_BufferedGameCanvasPaintHelper(AllBinaryGameCanvas@ gameCanvas)
    {
        this.jinit_ProcessPaintable();
        this.jfields_BufferedGameCanvasPaintHelper();
        jthrow(Exception().jinit_Exception("No Longer Used"));
        return this;
    }
    

    void process()
    {
        MyCanvas@ myCanvas = (cast<MyCanvas>(this.gameCanvas_BufferedGameCanvasPaintHelper));
        myCanvas.draw(this.offScreenImage_BufferedGameCanvasPaintHelper[this.circularIndexUtil_BufferedGameCanvasPaintHelper.getIndex()].getGraphics());
        this.circularIndexUtil_BufferedGameCanvasPaintHelper.next();
        this.drawCircularIndexUtil_BufferedGameCanvasPaintHelper.next();
    }
    

    void paint(Graphics@ graphics)
    {
        @this.previousImage_BufferedGameCanvasPaintHelper = this.offScreenImage_BufferedGameCanvasPaintHelper[this.drawCircularIndexUtil_BufferedGameCanvasPaintHelper.getIndex()];
        graphics.drawImage(this.previousImage_BufferedGameCanvasPaintHelper, 0, 0, this.anchor_BufferedGameCanvasPaintHelper);
    }
}

namespace BufferedGameCanvasPaintHelper
{
    const int MAX_IMAGES = 4;
}

