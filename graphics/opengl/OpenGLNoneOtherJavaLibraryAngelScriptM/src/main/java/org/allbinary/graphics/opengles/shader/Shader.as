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

class Shader : JObjectBase
{
    string shaderName;
    BasicArrayList@ shaderStringList;
    string shaderAsString;
    int shaderHandle;

    // Java field initializers run after the super constructor
    void jfields_Shader()
    {
    this.shaderName = StringUtil::getInstance().EMPTY_STRING;
    @this.shaderStringList = BasicArrayListUtil::getInstance().getImmutableInstance();
    this.shaderAsString = StringUtil::getInstance().EMPTY_STRING;
    
    }

    Shader@ jinit_Shader()
    {
        this.jfields_Shader();
        return this;
    }
}

