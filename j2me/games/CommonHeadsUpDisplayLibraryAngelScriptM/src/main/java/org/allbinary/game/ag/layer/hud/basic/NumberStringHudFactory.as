/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.ag.layer.hud.basic

class NumberStringHudFactory : JObjectBase
{
    NumberStringHud@ NULL_NUMBER_STRING_HUD;

    // Java field initializers run after the super constructor
    void jfields_NumberStringHudFactory()
    {
    @this.NULL_NUMBER_STRING_HUD = this.createHud();
    }

    NumberStringHudFactory@ jinit_NumberStringHudFactory()
    {
        this.jfields_NumberStringHudFactory();
        return this;
    }
    

    NumberStringHud@ createHud()
    {
        try {
            return NumberStringHud().jinit_NumberStringHud(StringUtil::getInstance().EMPTY_STRING, 9, BasicHudFactory::getInstance().ABSOLUTE, 1, 0, BasicColorFactory::getInstance().NULL_COLOR);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            LogUtil@ logUtil = LogUtil::getInstance();
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            jthrow(RuntimeException().jinit_RuntimeException());
            }
            else { jthrow(jex0); }
        }
        return null;
    }
}

namespace NumberStringHudFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance();
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    NumberStringHudFactory@ getInstance()
    {
        if (NumberStringHudFactory::instance is NullUtil::getInstance()) {
            @NumberStringHudFactory::instance = NumberStringHudFactory().jinit_NumberStringHudFactory();
        }
        return cast<NumberStringHudFactory>(NumberStringHudFactory::instance);
    }
}

