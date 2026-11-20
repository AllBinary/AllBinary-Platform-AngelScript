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

class CancelTouchButtonInputFactory : JObjectBase
{
    TouchButtonInput@[]@ cancelInputArray_CancelTouchButtonInputFactory;

    // Java field initializers run after the super constructor
    void jfields_CancelTouchButtonInputFactory()
    {
    @this.cancelInputArray_CancelTouchButtonInputFactory = array<TouchButtonInput@>(InputFactory::getInstance().MAX);
    }
    

    CancelTouchButtonInputFactory@ jinit_CancelTouchButtonInputFactory()
    {
        this.jfields_CancelTouchButtonInputFactory();
        BasicTouchInputFactory@ basicTouchInputFactory = BasicTouchInputFactory::getInstance();
        for (int index = int(this.cancelInputArray_CancelTouchButtonInputFactory.length()) - 1; index >= 0; index--) {
            @this.cancelInputArray_CancelTouchButtonInputFactory[index] = basicTouchInputFactory.NONE;
        }
        @this.cancelInputArray_CancelTouchButtonInputFactory[basicTouchInputFactory.UP.getId()] = basicTouchInputFactory.DOWN;
        @this.cancelInputArray_CancelTouchButtonInputFactory[basicTouchInputFactory.DOWN.getId()] = basicTouchInputFactory.UP;
        @this.cancelInputArray_CancelTouchButtonInputFactory[basicTouchInputFactory.LEFT.getId()] = basicTouchInputFactory.RIGHT;
        @this.cancelInputArray_CancelTouchButtonInputFactory[basicTouchInputFactory.RIGHT.getId()] = basicTouchInputFactory.LEFT;
        return this;
    }
    

    TouchButtonInput@ getCancel(TouchButtonInput@ touchButtonInput)
    {
        return this.cancelInputArray_CancelTouchButtonInputFactory[touchButtonInput.getId()];
    }
}

namespace CancelTouchButtonInputFactory
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
    

    CancelTouchButtonInputFactory@ getInstance()
    {
        if (CancelTouchButtonInputFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @CancelTouchButtonInputFactory::instance = CancelTouchButtonInputFactory().jinit_CancelTouchButtonInputFactory();
        }
        return cast<CancelTouchButtonInputFactory>(CancelTouchButtonInputFactory::instance);
    }
}

