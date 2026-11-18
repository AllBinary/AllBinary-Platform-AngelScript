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

class RectangleFactory : JObjectBase
{

    RectangleFactory@ jinit_RectangleFactory()
    {
        return this;
    }
}

namespace RectangleFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = Rectangle().jinit_Rectangle(PointFactory::getInstance().ZERO_ZERO, 0, 0);
        @jcell_ARRAY_OF_ARRAYS = RectangleFactory::jnewArray2_Rectangle(0, 0);
    }

    Rectangle@ jcell_SINGLETON;
    Rectangle@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(Rectangle@ value) property { jclinit(); @jcell_SINGLETON = value; }

    Rectangle@[]@[]@ jcell_ARRAY_OF_ARRAYS;
    Rectangle@[]@[]@ get_ARRAY_OF_ARRAYS() property { jclinit(); return jcell_ARRAY_OF_ARRAYS; }
    void set_ARRAY_OF_ARRAYS(Rectangle@[]@[]@ value) property { jclinit(); @jcell_ARRAY_OF_ARRAYS = value; }

    Rectangle@[]@[]@ jnewArray2_Rectangle(int a, int b)
    {
        Rectangle@[]@[]@ result = array<Rectangle@[]@>(a);
        for (int i = 0; i < a; i++) { @result[i] = array<Rectangle@>(b); }
        return result;
    }
}

