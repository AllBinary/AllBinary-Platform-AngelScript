/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

class VectorUtil : JObjectBase
{

    VectorUtil@ jinit_VectorUtil()
    {
        return this;
    }
    

    int getSize(JObject@ anyType)
    {
        Vector@ vector = cast<Vector>(anyType);
        return vector.size();
    }
    

    JObject@ elementAt(JObject@ anyType, int index)
    {
        Vector@ vector = cast<Vector>(anyType);
        return vector.elementAt(index);
    }
}

namespace VectorUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = VectorUtil().jinit_VectorUtil();
    }

    VectorUtil@ jcell_instance;
    VectorUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(VectorUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    VectorUtil@ getInstance()
    {
        return VectorUtil::instance;
    }
}

