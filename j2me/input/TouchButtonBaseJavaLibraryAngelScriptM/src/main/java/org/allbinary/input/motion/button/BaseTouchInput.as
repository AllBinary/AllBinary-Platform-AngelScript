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
// package org.allbinary.input.motion.button

class BaseTouchInput : JObjectBase
{
    CommonStrings@ commonStrings;
    BasicArrayListUtil@ basicArrayListUtil_BaseTouchInput;

    // Java field initializers run after the super constructor
    void jfields_BaseTouchInput()
    {
    @this.commonStrings = CommonStrings::getInstance();
    @this.basicArrayListUtil_BaseTouchInput = BasicArrayListUtil::getInstance();
    }
    

    BaseTouchInput@ jinit_BaseTouchInput()
    {
        this.jfields_BaseTouchInput();
        return this;
    }
    

    BasicArrayList@ getList()
    {
        return this.basicArrayListUtil_BaseTouchInput.getImmutableInstance();
    }
    

    string toString()
    {
        return jClassName(this);
    }
}

