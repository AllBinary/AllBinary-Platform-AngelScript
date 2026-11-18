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

class CustomGPoint : GPoint
{
    int cx_CustomGPoint;
    int cy_CustomGPoint;
    int cz_CustomGPoint;
    

    CustomGPoint@ jinit_CustomGPoint(int x, int y, int z)
    {
        this.jinit_GPoint(x, y, z);
        return this;
    }
    

    void setX(int x)
    {
        this.cx_CustomGPoint = x;
    }
    

    int getX()
    {
        return this.cx_CustomGPoint;
    }
    

    void setY(int y)
    {
        this.cy_CustomGPoint = y;
    }
    

    int getY()
    {
        return this.cy_CustomGPoint;
    }
    

    void setZ(int z)
    {
        this.cz_CustomGPoint = z;
    }
    

    int getZ()
    {
        return this.cz_CustomGPoint;
    }
}

namespace CustomGPoint
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_CUSTOM_POINT = CustomGPoint().jinit_CustomGPoint(0, 0, 0);
    }

    CustomGPoint@ jcell_NULL_CUSTOM_POINT;
    CustomGPoint@ get_NULL_CUSTOM_POINT() property { jclinit(); return jcell_NULL_CUSTOM_POINT; }
    void set_NULL_CUSTOM_POINT(CustomGPoint@ value) property { jclinit(); @jcell_NULL_CUSTOM_POINT = value; }
    

    CustomGPoint@ getInstance(GPoint@ point)
    {
        return CustomGPoint().jinit_CustomGPoint(point.getX(), point.getY(), point.getZ());
    }
    

    CustomGPoint@ getInstance3(int x, int y)
    {
        return CustomGPoint().jinit_CustomGPoint(x, y, 3);
    }
}

