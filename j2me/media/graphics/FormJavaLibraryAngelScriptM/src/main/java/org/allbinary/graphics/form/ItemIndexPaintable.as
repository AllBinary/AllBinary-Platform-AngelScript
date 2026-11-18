/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class ItemIndexPaintable : JObjectBase
{

    ItemIndexPaintable@ jinit_ItemIndexPaintable()
    {
        return this;
    }
    

    int paint(Graphics@ graphics, int index, ABCustomItem@ item, int dx, int dy)
    {
        return 0;
    }
}

namespace ItemIndexPaintable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ItemIndexPaintable().jinit_ItemIndexPaintable();
    }

    ItemIndexPaintable@ jcell_instance;
    ItemIndexPaintable@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ItemIndexPaintable@ value) property { jclinit(); @jcell_instance = value; }
    

    ItemIndexPaintable@ getInstance()
    {
        return ItemIndexPaintable::instance;
    }
}

