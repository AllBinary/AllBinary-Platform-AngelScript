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

class NullLocationPaintable : LocationPaintable
{

    NullLocationPaintable@ jinit_NullLocationPaintable()
    {
        this.jinit_LocationPaintable();
        return this;
    }
}

namespace NullLocationPaintable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceC = NullLocationPaintable().jinit_NullLocationPaintable();
    }

    NullLocationPaintable@ jcell_instanceC;
    NullLocationPaintable@ get_instanceC() property { jclinit(); return jcell_instanceC; }
    void set_instanceC(NullLocationPaintable@ value) property { jclinit(); @jcell_instanceC = value; }
    

    NullLocationPaintable@ getInstance()
    {
        return NullLocationPaintable::instanceC;
    }
}

