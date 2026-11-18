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
    InputToGameKeyMapping@ inputToGameKeyMapping;

    // Java field initializers run after the super constructor
    void jfields_PlatformFormInputMappingFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.inputToGameKeyMapping = InputToGameKeyMapping::getNullInstance();
    }

    PlatformFormInputMappingFactory@ jinit_PlatformFormInputMappingFactory()
    {
        this.jfields_PlatformFormInputMappingFactory();
        return this;
    }
    

    InputToGameKeyMapping@ getOrCreate()
    {
        try {
            if (this.inputToGameKeyMapping is InputToGameKeyMapping::getNullInstance()) {
                InputToGameKeyMapping@ inputToGameKeyMapping = InputToGameKeyMapping().jinit_InputToGameKeyMapping();
                GameKeyFactory@ gameKeyFactory = GameKeyFactory::getInstance();
                inputToGameKeyMapping.add(gameKeyFactory.UP, gameKeyFactory.UP);
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, gameKeyFactory.DOWN);
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, gameKeyFactory.LEFT);
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, gameKeyFactory.RIGHT);
                inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, gameKeyFactory.GAME_A);
                @this.inputToGameKeyMapping = inputToGameKeyMapping;
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
        return this.inputToGameKeyMapping;
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

