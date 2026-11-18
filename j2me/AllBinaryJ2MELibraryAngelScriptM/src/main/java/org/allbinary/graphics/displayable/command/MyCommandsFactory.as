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
// package org.allbinary.graphics.displayable.command

class MyCommandsFactory : JObjectBase
{
    Command@ NO_COMMAND;
    Command@ GAUGE_CHANGE;
    Command@ SET_DISPLAYABLE;
    Command@ PAUSE_COMMAND;
    Command@ RESUME_COMMAND;

    // Java field initializers run after the super constructor
    void jfields_MyCommandsFactory()
    {
    @this.NO_COMMAND = Command().jinit_Command(StringUtil::getInstance().EMPTY_STRING, StringUtil::getInstance().EMPTY_STRING, -1, -1);
    @this.GAUGE_CHANGE = Command().jinit_Command("GAUGE_CHANGE", StringUtil::getInstance().EMPTY_STRING, Command::ITEM, 1);
    @this.SET_DISPLAYABLE = Command().jinit_Command("Display", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 2);
    @this.PAUSE_COMMAND = Command().jinit_Command("Pause", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 0);
    @this.RESUME_COMMAND = Command().jinit_Command("Resume", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 0);
    }
    

    MyCommandsFactory@ jinit_MyCommandsFactory()
    {
        this.jfields_MyCommandsFactory();
        return this;
    }
}

namespace MyCommandsFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MyCommandsFactory().jinit_MyCommandsFactory();
    }

    MyCommandsFactory@ jcell_instance;
    MyCommandsFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MyCommandsFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    MyCommandsFactory@ getInstance()
    {
        return MyCommandsFactory::instance;
    }
}

