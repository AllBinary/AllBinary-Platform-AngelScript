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
// package org.allbinary.midlet

//J2SEForJ2ME
class ProgressMidlet : AllBinaryMidlet
{
    AbeClientInformationInterface@ abeClientInformation;
    

    ProgressMidlet@ jinit_ProgressMidlet(ClientInformationFactory@ clientInformationFactory)
    {
        this.jinit_AllBinaryMidlet();
        this.preInit();
        @this.abeClientInformation = clientInformationFactory.getInstance();
        return this;
    }
    

    void preInit()
    {
    }
    

    void exitProgress(bool isProgress)
    {
        Processor@ processor = MidletExitProcessorFactory::getInstance().getExitInstance(this);
        try {
            ThreadPool@ primaryThreadPool = PrimaryThreadPool::getInstance();
            Runnable@ runnable = ExitRunnable().jinit_ExitRunnable(this, processor, isProgress);
            primaryThreadPool.runTask(runnable);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "exit", e);
            try {
                processor.process();
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e2 = cast<Exception>(jex1);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "exit", e);
                }
                else { jthrow(jex1); }
            }
            }
            else { jthrow(jex0); }
        }
    }
}

