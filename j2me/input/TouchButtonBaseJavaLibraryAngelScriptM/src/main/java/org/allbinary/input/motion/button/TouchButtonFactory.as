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

class TouchButtonFactory : JObjectBase
{
    BasicArrayList@ LIST_TouchButtonFactory;
    BasicArrayList@ list_TouchButtonFactory;
    BasicArrayList@ savedList_TouchButtonFactory;
    bool saved_TouchButtonFactory;

    // Java field initializers run after the super constructor
    void jfields_TouchButtonFactory()
    {
    @this.LIST_TouchButtonFactory = BasicArrayListUtil::getInstance().getImmutableInstance();
    @this.list_TouchButtonFactory = this.LIST_TouchButtonFactory;
    @this.savedList_TouchButtonFactory = this.LIST_TouchButtonFactory;
    this.saved_TouchButtonFactory = false;
    }
    

    TouchButtonFactory@ jinit_TouchButtonFactory()
    {
        this.jfields_TouchButtonFactory();
        return this;
    }
    

    void defaultList()
    {
        @this.list_TouchButtonFactory = this.LIST_TouchButtonFactory;
        this.toggle(false, this.LIST_TouchButtonFactory);
    }
    

    void toggle(bool save, BasicArrayList@ list)
    {
        if (list !is BasicArrayListUtil::getInstance().getImmutableInstance()) {
            @this.savedList_TouchButtonFactory = list;
            if (!this.saved_TouchButtonFactory) {
                @this.list_TouchButtonFactory = this.savedList_TouchButtonFactory;
            }
        } else {
            if (save) {
                if (!this.saved_TouchButtonFactory) {
                    this.saved_TouchButtonFactory = true;
                    @this.savedList_TouchButtonFactory = this.list_TouchButtonFactory;
                    @this.list_TouchButtonFactory = this.LIST_TouchButtonFactory;
                } else {
                }
            } else {
                @this.list_TouchButtonFactory = this.savedList_TouchButtonFactory;
                this.saved_TouchButtonFactory = false;
            }
        }
    }
    

    void setList(BasicArrayList@ list)
    {
        if (list is null) {
            jthrow(Exception().jinit_Exception("Null List"));
        }
        @this.list_TouchButtonFactory = list;
    }
    

    BasicArrayList@ getList()
    {
        return this.list_TouchButtonFactory;
    }
}

namespace TouchButtonFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = TouchButtonFactory().jinit_TouchButtonFactory();
    }

    TouchButtonFactory@ jcell_SINGLETON;
    TouchButtonFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(TouchButtonFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    TouchButtonFactory@ getInstance()
    {
        return TouchButtonFactory::SINGLETON;
    }
}

