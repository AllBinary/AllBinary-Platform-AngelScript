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

class ShaderComposite : JObjectBase
{
    OpenGLProcessor@ disableProgramShaderOpenGLProcessor;
    string requiresOpenGLVersion;
    Shader@[]@ shaderArray;
    ShaderInitializer@ shaderInitializer;
    CompositeShaderUpdater@ compositeShaderUpdater;
    ModelViewProjection@ modelViewProjection;
    OpenGLProcessor@ colorOpenGLProcessor;
    OpenGLProcessor@ vertexOpenGLProcessor;
    OpenGLProcessor@ useProgramShaderOpenGLProcessor;
    OpenGLProcessor@ shaderMatrixOpenGLProcessor;
    OpenGLProcessor@ colorEnableVertexAttribArrayOpenGLProcessor;
    OpenGLProcessor@ normalEnableVertexAttribArrayOpenGLProcessor;
    OpenGLProcessor@ vertexEnableVertexAttribArrayOpenGLProcessor;
    OpenGLProcessor@ textureEnableVertexAttribArrayOpenGLProcessor;
    OpenGLProcessor@ colorDisableVertexAttribArrayOpenGLProcessor;
    OpenGLProcessor@ normalDisableVertexAttribArrayOpenGLProcessor;
    OpenGLProcessor@ vertexDisableVertexAttribArrayOpenGLProcessor;
    OpenGLProcessor@ textureDisableVertexAttribArrayOpenGLProcessor;
    OpenGLObject3dProcessor@ uniformLightPositionOpenGLProcessor;
    OpenGLObject3dProcessor@ uniformLightColorOpenGLProcessor;
    OpenGLObject3dProcessor@ uniformCameraPositionOpenGLProcessor;
    OpenGLObject3dProcessor@ uniformTextureUnitOpenGLProcessor;
    int programHandle;

    // Java field initializers run after the super constructor
    void jfields_ShaderComposite()
    {
    
    
    
    
    
    
    
    
    @this.useProgramShaderOpenGLProcessor = NullOpenGLProcessorFactory::getInstance();
    @this.shaderMatrixOpenGLProcessor = NullOpenGLProcessorFactory::getInstance();
    @this.colorEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory::getInstance();
    @this.normalEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory::getInstance();
    @this.vertexEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory::getInstance();
    @this.textureEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory::getInstance();
    @this.colorDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory::getInstance();
    @this.normalDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory::getInstance();
    @this.vertexDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory::getInstance();
    @this.textureDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory::getInstance();
    @this.uniformLightPositionOpenGLProcessor = NullOpenGLTextureProcessor::getInstance();
    @this.uniformLightColorOpenGLProcessor = NullOpenGLTextureProcessor::getInstance();
    @this.uniformCameraPositionOpenGLProcessor = NullOpenGLTextureProcessor::getInstance();
    @this.uniformTextureUnitOpenGLProcessor = NullOpenGLTextureProcessor::getInstance();
    
    }
    

    ShaderComposite@ jinit_ShaderComposite(string requiresOpenGLVersion, Shader@[]@ shaderArray, CompositeShaderUpdater@ compositeShaderUpdater, ShaderInitializer@ shaderInitializer, ModelViewProjection@ modelViewProjection, OpenGLProcessor@ colorOpenGLProcessor, OpenGLProcessor@ vertexOpenGLProcessor, OpenGLProcessor@ disableProgramShaderOpenGLProcessor)
    {
        this.jfields_ShaderComposite();
        this.requiresOpenGLVersion = requiresOpenGLVersion;
        @this.shaderArray = shaderArray;
        @this.shaderInitializer = shaderInitializer;
        @this.compositeShaderUpdater = compositeShaderUpdater;
        @this.modelViewProjection = modelViewProjection;
        @this.colorOpenGLProcessor = colorOpenGLProcessor;
        @this.vertexOpenGLProcessor = vertexOpenGLProcessor;
        @this.disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor;
        return this;
    }
    

    void init(GL10@ gl)
    {
        this.programHandle = this.shaderInitializer.init(gl, this.shaderArray, StringUtil::getInstance().getArrayInstance());
    }
}

