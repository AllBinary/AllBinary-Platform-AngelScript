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

class GameOptionsFormFactory : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_GameOptionsFormFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    GameOptionsFormFactory@ jinit_GameOptionsFormFactory()
    {
        this.jfields_GameOptionsFormFactory();
        return this;
    }
    

    CommandForm@ init(CommandListener@ commandListener, string title, BasicColor@ backgrounBasicColor, BasicColor@ foregroundBasicColor)
    {
        try {
            return GameOptionsForm().jinit_GameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
            return CommandForm::getNullCommandForm();
            }
            else { jthrow(jex0); }
        }
        return null;
    }
}

namespace GameOptionsFormFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameOptionsFormFactory().jinit_GameOptionsFormFactory();
    }

    GameOptionsFormFactory@ jcell_instance;
    GameOptionsFormFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameOptionsFormFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GameOptionsFormFactory@ getInstance()
    {
        return GameOptionsFormFactory::instance;
    }
}

