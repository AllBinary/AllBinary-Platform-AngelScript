/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2002 AllBinary 
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

class CommandForm : Form, MyCommandInterface, MenuListener
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    Processor@ repaintProcessor_CommandForm;
    ABStack@ commandStack_CommandForm;

    // Java field initializers run after the super constructor
    void jfields_CommandForm()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.repaintProcessor_CommandForm = ScreenRepaintProcessorFactory::getInstance().create(this);
    
    }
    

    CommandForm@ jinit_CommandForm(CommandListener@ commandListener, string formTitle, BasicColor@ backgrounBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_Form(formTitle);
        this.jfields_CommandForm();
        @this.commandStack_CommandForm = StdUtil::getInstance().createStack();
        try {
            this.repaintProcessor_CommandForm.process();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e);
            }
            else { jthrow(jex0); }
        }
        return this;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
    }
    

    void open()
    {
        this.logUtil.putF(this.commonStrings.START, this, "open");
    }
    

    void close()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE);
    }
    

    void update()
    {
        this.repaintProcessor_CommandForm.process();
    }
    

    int getSourceId()
    {
        return 0;
    }
    

    void addCommand(Command@ command)
    {
        this.commandStack_CommandForm.push(command);
        Form::addCommand(command);
    }
    

    void removeAllCommands()
    {
        int size = this.commandStack_CommandForm.size();
        for (int index = 0; index < size; index++) {
            Form::removeCommand(cast<Command>(this.commandStack_CommandForm.pop()));
        }
    }
}

namespace CommandForm
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_COMMAND_FORM = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_NULL_COMMAND_FORM;
    JObject@ get_NULL_COMMAND_FORM() property { jclinit(); return jcell_NULL_COMMAND_FORM; }
    void set_NULL_COMMAND_FORM(JObject@ value) property { jclinit(); @jcell_NULL_COMMAND_FORM = value; }
    

    CommandForm@ getNullCommandForm()
    {
        if (CommandForm::NULL_COMMAND_FORM is NullUtil::getInstance().NULL_OBJECT) {
            @CommandForm::NULL_COMMAND_FORM = CommandForm().jinit_CommandForm(NullCommandListener::NULL_COMMAND_LISTENER, StringUtil::getInstance().EMPTY_STRING, BasicColorFactory::getInstance().BLACK, BasicColorFactory::getInstance().WHITE);
        }
        return cast<CommandForm>(CommandForm::NULL_COMMAND_FORM);
    }
}

