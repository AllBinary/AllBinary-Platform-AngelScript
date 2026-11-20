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
// package org.allbinary.game.input

class PlatformInputMappingFactory : JObjectBase
{
    LogUtil@ logUtil;
    PersistentInputMapping@ inputToGameKeyMapping_PlatformInputMappingFactory;

    // Java field initializers run after the super constructor
    void jfields_PlatformInputMappingFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.inputToGameKeyMapping_PlatformInputMappingFactory = PersistentInputMapping::getNullInstance();
    }

    PlatformInputMappingFactory@ jinit_PlatformInputMappingFactory()
    {
        this.jfields_PlatformInputMappingFactory();
        return this;
    }
    

    PersistentInputMapping@ getPersistentInputMappingInstance()
    {
        try {
            if (this.inputToGameKeyMapping_PlatformInputMappingFactory is PersistentInputMapping::getNullInstance()) {
                @this.inputToGameKeyMapping_PlatformInputMappingFactory = MotionJ2MEGameInputMapping().jinit_MotionJ2MEGameInputMapping();
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            }
            else { jthrow(jex0); }
        }
        return this.inputToGameKeyMapping_PlatformInputMappingFactory;
    }
}

namespace PlatformInputMappingFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PlatformInputMappingFactory().jinit_PlatformInputMappingFactory();
    }

    PlatformInputMappingFactory@ jcell_instance;
    PlatformInputMappingFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PlatformInputMappingFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    PlatformInputMappingFactory@ getInstance()
    {
        return PlatformInputMappingFactory::instance;
    }
}

