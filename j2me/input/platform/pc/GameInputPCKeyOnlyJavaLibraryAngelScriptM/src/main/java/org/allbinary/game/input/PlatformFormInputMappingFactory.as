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

class PlatformFormInputMappingFactory : JObjectBase
{
    LogUtil@ logUtil;
    InputToGameKeyMapping@ inputToGameKeyMapping_PlatformFormInputMappingFactory;

    // Java field initializers run after the super constructor
    void jfields_PlatformFormInputMappingFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.inputToGameKeyMapping_PlatformFormInputMappingFactory = InputToGameKeyMapping::getNullInstance();
    }

    PlatformFormInputMappingFactory@ jinit_PlatformFormInputMappingFactory()
    {
        this.jfields_PlatformFormInputMappingFactory();
        return this;
    }
    

    InputToGameKeyMapping@ getOrCreate()
    {
        try {
            if (this.inputToGameKeyMapping_PlatformFormInputMappingFactory is InputToGameKeyMapping::getNullInstance()) {
                PCKeyFactory@ pcKeyFactory = PCKeyFactory::getInstance();
                InputToGameKeyMapping@ inputToGameKeyMapping = InputToGameKeyMapping().jinit_InputToGameKeyMapping();
                GameKeyFactory@ gameKeyFactory = GameKeyFactory::getInstance();
                inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.DPAD_UP);
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN);
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT);
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT);
                inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.ENTER);
                @this.inputToGameKeyMapping_PlatformFormInputMappingFactory = inputToGameKeyMapping;
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
        return this.inputToGameKeyMapping_PlatformFormInputMappingFactory;
    }
}

namespace PlatformFormInputMappingFactory
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
    

    PlatformFormInputMappingFactory@ getInstance()
    {
        if (PlatformFormInputMappingFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @PlatformFormInputMappingFactory::instance = PlatformFormInputMappingFactory().jinit_PlatformFormInputMappingFactory();
        }
        return cast<PlatformFormInputMappingFactory>(PlatformFormInputMappingFactory::instance);
    }
}

