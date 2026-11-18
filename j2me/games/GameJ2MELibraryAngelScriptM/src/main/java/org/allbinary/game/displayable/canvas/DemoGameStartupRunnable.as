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

class DemoGameStartupRunnable : ABRunnable
{
    LogUtil@ logUtil;
    DemoCanvas@ demoCanvas_DemoGameStartupRunnable;

    // Java field initializers run after the super constructor
    void jfields_DemoGameStartupRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    
    }
    

    DemoGameStartupRunnable@ jinit_DemoGameStartupRunnable(DemoCanvas@ demoCanvas)
    {
        this.jinit_ABRunnable();
        this.jfields_DemoGameStartupRunnable();
        @this.demoCanvas_DemoGameStartupRunnable = demoCanvas;
        return this;
    }
    

    void run()
    {
        try {
            this.setRunning(true);
            this.demoCanvas_DemoGameStartupRunnable.stopGameDemo();
            this.demoCanvas_DemoGameStartupRunnable.create();
            this.demoCanvas_DemoGameStartupRunnable.start();
            this.setRunning(false);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.setRunning(false);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    int getType()
    {
        return DemoGameStartupRunnable::TYPE;
    }
}

namespace DemoGameStartupRunnable
{
    const int TYPE = 4;
}

