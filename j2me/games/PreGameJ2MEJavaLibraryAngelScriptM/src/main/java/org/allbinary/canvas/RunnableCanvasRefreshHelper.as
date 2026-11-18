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
// package org.allbinary.canvas

class RunnableCanvasRefreshHelper : Processor
{
    MyCanvas@ runnableCanvas_RunnableCanvasRefreshHelper;
    

    RunnableCanvasRefreshHelper@ jinit_RunnableCanvasRefreshHelper(MyCanvas@ runnableCanvas)
    {
        this.jinit_Processor();
        @this.runnableCanvas_RunnableCanvasRefreshHelper = runnableCanvas;
        return this;
    }
    

    void process()
    {
        this.runnableCanvas_RunnableCanvasRefreshHelper.repaint();
    }
}

