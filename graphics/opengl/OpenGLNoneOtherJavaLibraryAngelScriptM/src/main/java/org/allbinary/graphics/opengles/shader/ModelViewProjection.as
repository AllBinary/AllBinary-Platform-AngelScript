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
// package org.allbinary.graphics.opengles.shader

class ModelViewProjection : JObjectBase
{

    ModelViewProjection@ jinit_ModelViewProjection()
    {
        return this;
    }
    

    float[]@ get()
    {
        return NullUtil::getInstance().NULL_FLOAT_ARRAY;
    }
}

namespace ModelViewProjection
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ModelViewProjection().jinit_ModelViewProjection();
    }

    ModelViewProjection@ jcell_instance;
    ModelViewProjection@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ModelViewProjection@ value) property { jclinit(); @jcell_instance = value; }
    

    ModelViewProjection@ getInstance()
    {
        return ModelViewProjection::instance;
    }
}

