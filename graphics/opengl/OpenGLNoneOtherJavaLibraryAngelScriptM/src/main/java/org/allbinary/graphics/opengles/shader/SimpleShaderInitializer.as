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

class SimpleShaderInitializer : ShaderInitializer
{

    SimpleShaderInitializer@ jinit_SimpleShaderInitializer()
    {
        this.jinit_ShaderInitializer();
        return this;
    }
}

namespace SimpleShaderInitializer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceC = SimpleShaderInitializer().jinit_SimpleShaderInitializer();
    }

    SimpleShaderInitializer@ jcell_instanceC;
    SimpleShaderInitializer@ get_instanceC() property { jclinit(); return jcell_instanceC; }
    void set_instanceC(SimpleShaderInitializer@ value) property { jclinit(); @jcell_instanceC = value; }
    

    SimpleShaderInitializer@ getInstance()
    {
        return SimpleShaderInitializer::instanceC;
    }
}

