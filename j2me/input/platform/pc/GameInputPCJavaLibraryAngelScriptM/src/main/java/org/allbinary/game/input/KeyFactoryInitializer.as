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

class KeyFactoryInitializer : Init
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_KeyFactoryInitializer()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    KeyFactoryInitializer@ jinit_KeyFactoryInitializer()
    {
        this.jinit_Init();
        this.jfields_KeyFactoryInitializer();
        return this;
    }
    

    void init()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        SmallIntegerSingletonFactory::getInstance().initWithRange(0x2D0, 6);
    }
}

