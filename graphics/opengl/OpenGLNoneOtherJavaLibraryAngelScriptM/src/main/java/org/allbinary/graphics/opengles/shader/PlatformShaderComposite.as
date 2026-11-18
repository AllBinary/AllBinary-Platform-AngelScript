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

class PlatformShaderComposite : ShaderComposite
{
    

    PlatformShaderComposite@ jinit_PlatformShaderComposite(string requiresOpenGLVersion, Shader@[]@ shaderArray, CompositeShaderUpdater@ compositeShaderUpdater, ShaderInitializer@ shaderInitializer, ModelViewProjection@ modelViewProjection, OpenGLProcessor@ colorOpenGLProcessor, OpenGLProcessor@ vertexOpenGLProcessor)
    {
        this.jinit_ShaderComposite(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, NullOpenGLProcessorFactory::getInstance());
        return this;
    }
}

