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
// package org.allbinary.math

class DistanceUtil : JObjectBase
{
    MathUtil@ mathUtil;

    // Java field initializers run after the super constructor
    void jfields_DistanceUtil()
    {
    @this.mathUtil = MathUtil::getInstance();
    }

    DistanceUtil@ jinit_DistanceUtil()
    {
        this.jfields_DistanceUtil();
        return this;
    }
    

    int getDistance(int x1, int y1, int x2, int y2)
    {
        int dx = x1 - x2;
        int dy = y1 - y2;
        return this.mathUtil.sqrt((dx * dx) + (dy * dy));
    }
}

namespace DistanceUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DistanceUtil().jinit_DistanceUtil();
    }

    DistanceUtil@ jcell_instance;
    DistanceUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DistanceUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    DistanceUtil@ getInstance()
    {
        return DistanceUtil::instance;
    }
}

