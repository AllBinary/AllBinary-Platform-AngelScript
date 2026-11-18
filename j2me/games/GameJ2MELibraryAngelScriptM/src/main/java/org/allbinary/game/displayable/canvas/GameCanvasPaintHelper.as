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

class GameCanvasPaintHelper : ProcessPaintable
{
    AllBinaryGameCanvas@ gameCanvas_GameCanvasPaintHelper;
    

    GameCanvasPaintHelper@ jinit_GameCanvasPaintHelper(AllBinaryGameCanvas@ gameCanvas)
    {
        this.jinit_ProcessPaintable();
        @this.gameCanvas_GameCanvasPaintHelper = gameCanvas;
        return this;
    }
    

    void process()
    {
    }
    

    void paint(Graphics@ graphics)
    {
        this.gameCanvas_GameCanvasPaintHelper.draw(graphics);
    }
}

