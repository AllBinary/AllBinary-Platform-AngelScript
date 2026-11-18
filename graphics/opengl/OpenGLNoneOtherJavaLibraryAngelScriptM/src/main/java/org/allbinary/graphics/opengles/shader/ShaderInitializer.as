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

class ShaderInitializer : JObjectBase
{
    CommonStrings@ commonStrings;

    // Java field initializers run after the super constructor
    void jfields_ShaderInitializer()
    {
    @this.commonStrings = CommonStrings::getInstance();
    }

    ShaderInitializer@ jinit_ShaderInitializer()
    {
        this.jfields_ShaderInitializer();
        return this;
    }
    

    int init(GL10@ gl, Shader@[]@ shader, string[]@ attributeArray)
    {
        return -1;
    }
}

namespace ShaderInitializer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ShaderInitializer().jinit_ShaderInitializer();
    }

    ShaderInitializer@ jcell_instance;
    ShaderInitializer@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ShaderInitializer@ value) property { jclinit(); @jcell_instance = value; }
    

    ShaderInitializer@ getInstance()
    {
        return ShaderInitializer::instance;
    }
}

