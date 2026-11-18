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

class StartIntermissionProcessor : Processor
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    AllBinaryGameCanvas@ gameCanvas_StartIntermissionProcessor;
    int64 WAIT_StartIntermissionProcessor;

    // Java field initializers run after the super constructor
    void jfields_StartIntermissionProcessor()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    this.WAIT_StartIntermissionProcessor = 5000;
    }
    

    StartIntermissionProcessor@ jinit_StartIntermissionProcessor(AllBinaryGameCanvas@ gameCanvas)
    {
        this.jinit_Processor();
        this.jfields_StartIntermissionProcessor();
        @this.gameCanvas_StartIntermissionProcessor = gameCanvas;
        return this;
    }
    

    void process()
    {
        if (this.gameCanvas_StartIntermissionProcessor.getStartIntermissionInterface().getTimeDelayHelper().isElapsedTNT(this.WAIT_StartIntermissionProcessor)) {
            this.logUtil.putF("Intermission End", this, this.commonStrings.PROCESS);
            this.gameCanvas_StartIntermissionProcessor.getStartIntermissionInterface().setEnabled(false);
        }
    }
}

