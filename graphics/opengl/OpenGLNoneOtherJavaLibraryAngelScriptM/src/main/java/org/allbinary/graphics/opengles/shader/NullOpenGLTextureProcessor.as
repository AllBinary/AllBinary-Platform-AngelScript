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

class NullOpenGLTextureProcessor : JObjectBase
{

    NullOpenGLTextureProcessor@ jinit_NullOpenGLTextureProcessor()
    {
        return this;
    }
}

namespace NullOpenGLTextureProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLObject3dProcessor().jinit_OpenGLObject3dProcessor();
    }

    OpenGLObject3dProcessor@ jcell_instance;
    OpenGLObject3dProcessor@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLObject3dProcessor@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLObject3dProcessor@ getInstance()
    {
        return NullOpenGLTextureProcessor::instance;
    }
}

