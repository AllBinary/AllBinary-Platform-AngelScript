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
    BasicArrayList@ LIST;
    BasicArrayList@ list;
    BasicArrayList@ savedList;
    bool saved;

    // Java field initializers run after the super constructor
    void jfields_TouchButtonFactory()
    {
    @this.LIST = BasicArrayListUtil::getInstance().getImmutableInstance();
    @this.list = this.LIST;
    @this.savedList = this.LIST;
    this.saved = false;
    }
    

    TouchButtonFactory@ jinit_TouchButtonFactory()
    {
        this.jfields_TouchButtonFactory();
        return this;
    }
    

    void defaultList()
    {
        @this.list = this.LIST;
        this.toggle(false, this.LIST);
    }
    

    void toggle(bool save, BasicArrayList@ list)
    {
        if (list !is BasicArrayListUtil::getInstance().getImmutableInstance()) {
            @this.savedList = list;
            if (!this.saved) {
                @this.list = this.savedList;
            }
        } else {
            if (save) {
                if (!this.saved) {
                    this.saved = true;
                    @this.savedList = this.list;
                    @this.list = this.LIST;
                } else {
                }
            } else {
                @this.list = this.savedList;
                this.saved = false;
            }
        }
    }
    

    void setList(BasicArrayList@ list)
    {
        if (list is null) {
            jthrow(Exception().jinit_Exception("Null List"));
        }
        @this.list = list;
    }
    

    BasicArrayList@ getList()
    {
        return this.list;
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

