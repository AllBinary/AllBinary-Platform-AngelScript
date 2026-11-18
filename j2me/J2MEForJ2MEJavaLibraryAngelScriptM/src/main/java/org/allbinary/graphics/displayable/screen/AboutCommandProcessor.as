/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2022 AllBinary
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

class AboutCommandProcessor : JObjectBase
{

    AboutCommandProcessor@ jinit_AboutCommandProcessor()
    {
        return this;
    }
    

    void process(CommandListener@ midletCommandListener, Command@ command, Canvas@ canvas)
    {
        midletCommandListener.commandAction(command, canvas);
    }
}

namespace AboutCommandProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AboutCommandProcessor().jinit_AboutCommandProcessor();
    }

    AboutCommandProcessor@ jcell_instance;
    AboutCommandProcessor@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AboutCommandProcessor@ value) property { jclinit(); @jcell_instance = value; }
    

    AboutCommandProcessor@ getInstance()
    {
        return AboutCommandProcessor::instance;
    }
}

