/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2026 AllBinary
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

class InitGameProcessor : Processor
{
    AllBinaryGameCanvas@ gameCanvas_InitGameProcessor;
    

    InitGameProcessor@ jinit_InitGameProcessor(AllBinaryGameCanvas@ gameCanvas)
    {
        this.jinit_Processor();
        @this.gameCanvas_InitGameProcessor = gameCanvas;
        return this;
    }
    

    void process()
    {
        if (ProgressCanvasFactory::getInstance().isInGame()) {
            this.gameCanvas_InitGameProcessor.setProcessGameProcessorInit();
        }
    }
}

