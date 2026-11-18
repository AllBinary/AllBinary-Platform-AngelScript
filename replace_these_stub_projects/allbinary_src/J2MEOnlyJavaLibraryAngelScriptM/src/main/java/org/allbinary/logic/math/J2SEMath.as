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
// package org.allbinary.logic.math

class J2SEMath : JObjectBase
{

    J2SEMath@ jinit_J2SEMath()
    {
        return this;
    }
    

    int round(float value)
    {
        return int(jdoubleToInt(value));
    }
    

    float abs(float value)
    {
        return ((value < 0.0f) ? -value : value);
    }
    

    double absdouble(double value)
    {
        return ((value < 0.0) ? -value : value);
    }
}

namespace J2SEMath
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = J2SEMath().jinit_J2SEMath();
    }

    J2SEMath@ jcell_instance;
    J2SEMath@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(J2SEMath@ value) property { jclinit(); @jcell_instance = value; }
    

    J2SEMath@ getInstance()
    {
        return J2SEMath::instance;
    }
}

