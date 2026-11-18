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

class ShaderManagerFactory : JObjectBase
{

    ShaderManagerFactory@ jinit_ShaderManagerFactory()
    {
        return this;
    }
    

    ShaderManager@ create()
    {
        return ShaderManager::getInstance();
    }
}

namespace ShaderManagerFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ShaderManagerFactory().jinit_ShaderManagerFactory();
    }

    ShaderManagerFactory@ jcell_instance;
    ShaderManagerFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ShaderManagerFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ShaderManagerFactory@ getInstance()
    {
        return ShaderManagerFactory::instance;
    }
}

