/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable.screen

class DisplayPointScalar : JObjectBase
{

    DisplayPointScalar@ jinit_DisplayPointScalar()
    {
        return this;
    }
    

    int processX(int value)
    {
        return value;
    }
    

    int processY(int value)
    {
        return value;
    }
    

    GPoint@ process(GPoint@ point)
    {
        return point;
    }
}

namespace DisplayPointScalar
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DisplayPointScalar().jinit_DisplayPointScalar();
    }

    DisplayPointScalar@ jcell_instance;
    DisplayPointScalar@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DisplayPointScalar@ value) property { jclinit(); @jcell_instance = value; }
    

    DisplayPointScalar@ getInstance()
    {
        return DisplayPointScalar::instance;
    }
}

