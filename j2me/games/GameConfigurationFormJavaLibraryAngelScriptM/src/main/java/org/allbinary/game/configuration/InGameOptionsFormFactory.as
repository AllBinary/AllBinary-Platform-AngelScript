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
// package org.allbinary.game.configuration

class InGameOptionsFormFactory : JObjectBase
{
    LogUtil@ logUtil;
    CommandForm@ SINGLETON_InGameOptionsFormFactory;

    // Java field initializers run after the super constructor
    void jfields_InGameOptionsFormFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.SINGLETON_InGameOptionsFormFactory = CommandForm::getNullCommandForm();
    }

    InGameOptionsFormFactory@ jinit_InGameOptionsFormFactory()
    {
        this.jfields_InGameOptionsFormFactory();
        return this;
    }
    

    void init(CommandListener@ commandListener, Init@ initInterface, string title, BasicColor@ backgrounBasicColor, BasicColor@ foregroundBasicColor)
    {
        try {
            if (this.SINGLETON_InGameOptionsFormFactory is CommandForm::getNullCommandForm()) {
                initInterface.init();
                @this.SINGLETON_InGameOptionsFormFactory = InGameOptionsForm().jinit_InGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    CommandForm@ get()
    {
        return this.SINGLETON_InGameOptionsFormFactory;
    }
}

namespace InGameOptionsFormFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    InGameOptionsFormFactory@ getInstance()
    {
        if (InGameOptionsFormFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @InGameOptionsFormFactory::instance = InGameOptionsFormFactory().jinit_InGameOptionsFormFactory();
        }
        return cast<InGameOptionsFormFactory>(InGameOptionsFormFactory::instance);
    }
}

