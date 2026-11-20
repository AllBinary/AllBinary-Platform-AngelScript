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
// package org.allbinary.game.midlet

class DemoRunnable : JObjectBase, Runnable
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    DemoGameMidlet@ demoGameMidlet_DemoRunnable;
    DemoGameMidletEvent@ startDemoGameMidletEvent_DemoRunnable;

    // Java field initializers run after the super constructor
    void jfields_DemoRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    }
    

    DemoRunnable@ jinit_DemoRunnable(DemoGameMidlet@ demoGameMidlet)
    {
        this.jfields_DemoRunnable();
        @this.demoGameMidlet_DemoRunnable = demoGameMidlet;
        @this.startDemoGameMidletEvent_DemoRunnable = DemoGameMidletEvent().jinit_DemoGameMidletEvent(this.demoGameMidlet_DemoRunnable, DemoGameMidletStateFactory::getInstance().START_DEMO);
        return this;
    }
    

    void run()
    {
        try {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START_LABEL).append("GameCanvasRunnableInterface").toString(), this, this.commonStrings.RUN);
            this.demoGameMidlet_DemoRunnable.commandAction(MyCommandsFactory::getInstance().SET_DISPLAYABLE, ProgressCanvasFactory::getInstance());
            this.demoGameMidlet_DemoRunnable.setGameCanvasRunnableInterface(this.demoGameMidlet_DemoRunnable.createDemoGameCanvasRunnableInterface());
            this.demoGameMidlet_DemoRunnable.demoSetup();
            DemoGameMidletEventHandler::getInstance().fireEvent(this.startDemoGameMidletEvent_DemoRunnable);
            this.demoGameMidlet_DemoRunnable.startGameCanvasRunnableInterface();
            this.demoGameMidlet_DemoRunnable.postDemoSetup();
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            }
            else { jthrow(jex0); }
        }
    }
}

