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
// package org.allbinary.graphics.paint

class NullInitUpdatePaintable : InitUpdatePaintable
{
    

    NullInitUpdatePaintable@ jinit_NullInitUpdatePaintable()
    {
        this.jinit_InitUpdatePaintable();
        return this;
    }
}

namespace NullInitUpdatePaintable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NullInitUpdatePaintable().jinit_NullInitUpdatePaintable();
    }

    NullInitUpdatePaintable@ jcell_SINGLETON;
    NullInitUpdatePaintable@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(NullInitUpdatePaintable@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    InitUpdatePaintable@ getInstance()
    {
        return NullInitUpdatePaintable::SINGLETON;
    }
}

