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
// package org.allbinary.graphics.displayable.screen

class ScreenRepaintProcessor : Processor
{
    Displayable@ displayable_ScreenRepaintProcessor;
    

    ScreenRepaintProcessor@ jinit_ScreenRepaintProcessor(Displayable@ displayable)
    {
        this.jinit_Processor();
        @this.displayable_ScreenRepaintProcessor = displayable;
        return this;
    }
    

    void process()
    {
        ScreenRepaintUtil::repaint(this.displayable_ScreenRepaintProcessor);
    }
}

