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

class ShaderManager : JObjectBase
{
    string LOAD_SHADER;
    CommonStrings@ commonStrings;
    int GL_VERTEX_SHADER;
    int GL_FRAGMENT_SHADER;

    // Java field initializers run after the super constructor
    void jfields_ShaderManager()
    {
    this.LOAD_SHADER = "loadShader";
    @this.commonStrings = CommonStrings::getInstance();
    
    
    }
    

    ShaderManager@ jinit_ShaderManager(int GL_VERTEX_SHADER, int GL_FRAGMENT_SHADER)
    {
        this.jfields_ShaderManager();
        this.GL_VERTEX_SHADER = GL_VERTEX_SHADER;
        this.GL_FRAGMENT_SHADER = GL_FRAGMENT_SHADER;
        return this;
    }
    

    int load(GL10@ gl, string resource, string[]@ shaderAsStringArray, int shaderType)
    {
        return -1;
    }
    

    int loadShader(GL10@ gl, string resource, BasicArrayList@ stringList, int shaderType)
    {
        return -1;
    }
}

namespace ShaderManager
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ShaderManager().jinit_ShaderManager(-1, -1);
    }

    ShaderManager@ jcell_instance;
    ShaderManager@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ShaderManager@ value) property { jclinit(); @jcell_instance = value; }
    

    ShaderManager@ getInstance()
    {
        return ShaderManager::instance;
    }
}

