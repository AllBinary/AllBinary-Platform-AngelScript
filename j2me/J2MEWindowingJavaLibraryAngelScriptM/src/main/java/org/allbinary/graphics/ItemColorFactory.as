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
// package org.allbinary.graphics

class ItemColorFactory : JObjectBase
{
    int INVERT_PAINT;
    int PAINT;
    int TEXT_FIELD_NO_FOCUS;

    // Java field initializers run after the super constructor
    void jfields_ItemColorFactory()
    {
    this.INVERT_PAINT = int(0xFF000000);
    this.PAINT = int(0xFFe07718);
    this.TEXT_FIELD_NO_FOCUS = 0x7F7F7F;
    }

    ItemColorFactory@ jinit_ItemColorFactory()
    {
        this.jfields_ItemColorFactory();
        return this;
    }
}

namespace ItemColorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ItemColorFactory().jinit_ItemColorFactory();
    }

    ItemColorFactory@ jcell_instance;
    ItemColorFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ItemColorFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ItemColorFactory@ getInstance()
    {
        return ItemColorFactory::instance;
    }
}

