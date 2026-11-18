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

class WebCommandProcessor : JObjectBase
{
    LogUtil@ logUtil;
    AboutCommandProcessor@ aboutCommandProcessor;
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_WebCommandProcessor()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.aboutCommandProcessor = AboutCommandProcessor::getInstance();
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }

    WebCommandProcessor@ jinit_WebCommandProcessor()
    {
        this.jfields_WebCommandProcessor();
        return this;
    }
    

    void process(CommandListener@ midletCommandListener, Command@ command, Canvas@ canvas)
    {
        try {
            if (Desktop::isDesktopSupported() && Desktop::getDesktop().isSupported(Desktop::Action.BROWSE)) {
                Desktop::getDesktop().browse(URI().jinit_URI(jstringOf(this.list.removeAt(0))));
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.PROCESS, e);
            }
            else { jthrow(jex0); }
        }
    }
}

namespace WebCommandProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = WebCommandProcessor().jinit_WebCommandProcessor();
    }

    WebCommandProcessor@ jcell_instance;
    WebCommandProcessor@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(WebCommandProcessor@ value) property { jclinit(); @jcell_instance = value; }
    

    WebCommandProcessor@ getInstance()
    {
        return WebCommandProcessor::instance;
    }
}

