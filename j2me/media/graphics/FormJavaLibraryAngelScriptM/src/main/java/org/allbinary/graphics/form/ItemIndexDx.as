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

class ItemIndexDx : JObjectBase
{

    ItemIndexDx@ jinit_ItemIndexDx()
    {
        return this;
    }
    

    int getDx(int index, ABCustomItem@ item, int dx, int dy)
    {
        return 0;
    }
}

namespace ItemIndexDx
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ItemIndexDx().jinit_ItemIndexDx();
    }

    ItemIndexDx@ jcell_instance;
    ItemIndexDx@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ItemIndexDx@ value) property { jclinit(); @jcell_instance = value; }
    

    ItemIndexDx@ getInstance()
    {
        return ItemIndexDx::instance;
    }
}

