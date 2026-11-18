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
// package org.allbinary.graphics.form.item

class CustomItemUtil : JObjectBase
{
    ABCustomItem@[]@ CUSTOM_ITEM_ARRAY;

    // Java field initializers run after the super constructor
    void jfields_CustomItemUtil()
    {
    @this.CUSTOM_ITEM_ARRAY = array<ABCustomItem@>(0);
    }

    CustomItemUtil@ jinit_CustomItemUtil()
    {
        this.jfields_CustomItemUtil();
        return this;
    }
}

namespace CustomItemUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CustomItemUtil().jinit_CustomItemUtil();
    }

    CustomItemUtil@ jcell_instance;
    CustomItemUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CustomItemUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    CustomItemUtil@ getInstance()
    {
        return CustomItemUtil::instance;
    }
}

