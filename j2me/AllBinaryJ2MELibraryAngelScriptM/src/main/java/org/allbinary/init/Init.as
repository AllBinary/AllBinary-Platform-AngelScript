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
// package org.allbinary.init

class Init : JObjectBase, InitInterface
{
    CommonStrings@ commonStrings;

    // Java field initializers run after the super constructor
    void jfields_Init()
    {
    @this.commonStrings = CommonStrings::getInstance();
    }

    Init@ jinit_Init()
    {
        this.jfields_Init();
        return this;
    }
    

    void init()
    {
    }
}

