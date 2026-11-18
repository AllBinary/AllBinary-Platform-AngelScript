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

class PointFactory : JObjectBase
{
    GPoint@ ZERO_ZERO;

    // Java field initializers run after the super constructor
    void jfields_PointFactory()
    {
    @this.ZERO_ZERO = this.createXYZ(0, 0, 0);
    }
    

    void init()
    {
    }
    

    PointFactory@ jinit_PointFactory()
    {
        this.jfields_PointFactory();
        return this;
    }
    

    GPoint@ createXY(int x, int y)
    {
        return GPoint().jinit_GPoint(x, y, 0);
    }
    

    GPoint@ createXYZ(int x, int y, int z)
    {
        return GPoint().jinit_GPoint(x, y, z);
    }
}

namespace PointFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PointFactory().jinit_PointFactory();
    }

    PointFactory@ jcell_instance;
    PointFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PointFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    PointFactory@ getInstance()
    {
        return PointFactory::instance;
    }
}

