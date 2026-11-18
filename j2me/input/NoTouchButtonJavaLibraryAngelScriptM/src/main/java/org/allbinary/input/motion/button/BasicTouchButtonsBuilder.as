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

class BasicTouchButtonsBuilder : BaseTouchInput
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_BasicTouchButtonsBuilder()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    BasicTouchButtonsBuilder@ jinit_BasicTouchButtonsBuilder()
    {
        this.jinit_BaseTouchInput();
        this.jfields_BasicTouchButtonsBuilder();
        return this;
    }
    

    BasicArrayList@ getList()
    {
        try {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.GET_LIST);
            BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
            return list;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e);
            return BasicArrayListUtil::getInstance().getImmutableInstance();
            }
            else { jthrow(jex0); }
        }
        return null;
    }
}

namespace BasicTouchButtonsBuilder
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = BasicTouchButtonsBuilder().jinit_BasicTouchButtonsBuilder();
    }

    BasicTouchButtonsBuilder@ jcell_SINGLETON;
    BasicTouchButtonsBuilder@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(BasicTouchButtonsBuilder@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    BaseTouchInput@ getInstance()
    {
        return BasicTouchButtonsBuilder::SINGLETON;
    }
}

