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

class CommandRunnable : JObjectBase, Runnable
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    CommandFormInputProcessor@ commandFormInputProcessor_CommandRunnable;
    Command@ command_CommandRunnable;

    // Java field initializers run after the super constructor
    void jfields_CommandRunnable()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    }
    

    CommandRunnable@ jinit_CommandRunnable(CommandFormInputProcessor@ commandFormInputProcessor, Command@ command)
    {
        this.jfields_CommandRunnable();
        @this.commandFormInputProcessor_CommandRunnable = commandFormInputProcessor;
        @this.command_CommandRunnable = command;
        return this;
    }
    

    void run()
    {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            MyCanvas@ canvas = this.commandFormInputProcessor_CommandRunnable.getCanvas();
            CommandListener@ commandListener = canvas.getCustomCommandListener();
            commandListener.commandAction(this.command_CommandRunnable, canvas);
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

