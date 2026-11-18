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
// package org.allbinary.content

class CommandUriAction : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_CommandUriAction()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    CommandUriAction@ jinit_CommandUriAction()
    {
        this.jfields_CommandUriAction();
        return this;
    }
    

    void add(Command@ command, string url)
    {
    }
    

    void process(Command@ command)
    {
    }
}

namespace CommandUriAction
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CommandUriAction().jinit_CommandUriAction();
    }

    CommandUriAction@ jcell_instance;
    CommandUriAction@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CommandUriAction@ value) property { jclinit(); @jcell_instance = value; }
    

    CommandUriAction@ getInstance()
    {
        return CommandUriAction::instance;
    }
}

