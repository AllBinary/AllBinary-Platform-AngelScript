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
// package org.allbinary.graphics.form

class ItemPaintableFactory : ItemPaintable
{

    ItemPaintableFactory@ jinit_ItemPaintableFactory()
    {
        this.jinit_ItemPaintable();
        return this;
    }
    

    ItemPaintable@ getInstanceItemPaintable(PaintableForm@ paintableForm)
    {
        return ItemPaintableFactory::instance;
    }
}

namespace ItemPaintableFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ItemPaintableFactory().jinit_ItemPaintableFactory();
    }

    ItemPaintableFactory@ jcell_instance;
    ItemPaintableFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ItemPaintableFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ItemPaintableFactory@ getInstance()
    {
        return ItemPaintableFactory::instance;
    }
}

