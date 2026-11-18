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

class RectangleCollisionUtil : JObjectBase
{
    

    RectangleCollisionUtil@ jinit_RectangleCollisionUtil()
    {
        return this;
    }
    

    bool isCollision(int rectX1, int rectY1, int rectX2, int rectY2, int rect2X1, int rect2Y1, int rect2X2, int rect2Y2)
    {
        if (rect2X1 >= rectX2 || rect2Y1 >= rectY2 || rect2X2 <= rectX1 || rect2Y2 <= rectY1) {
            return false;
        } else {
            return true;
        }
        return false;
    }
    

    bool isInside(int rectX1, int rectY1, int rectX2, int rectY2, int x, int y)
    {
        if (x >= rectX2 || y >= rectY2 || x <= rectX1 || y <= rectY1) {
            return false;
        } else {
            return true;
        }
        return false;
    }
}

namespace RectangleCollisionUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = RectangleCollisionUtil().jinit_RectangleCollisionUtil();
    }

    RectangleCollisionUtil@ jcell_instance;
    RectangleCollisionUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(RectangleCollisionUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    RectangleCollisionUtil@ getInstance()
    {
        return RectangleCollisionUtil::instance;
    }
}

