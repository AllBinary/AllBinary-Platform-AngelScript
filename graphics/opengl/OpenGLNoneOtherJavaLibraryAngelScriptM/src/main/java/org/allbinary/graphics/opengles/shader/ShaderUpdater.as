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

class ShaderUpdater : JObjectBase
{
    CommonStrings@ commonStrings;
    RendererStrings@ rendererStrings;

    // Java field initializers run after the super constructor
    void jfields_ShaderUpdater()
    {
    @this.commonStrings = CommonStrings::getInstance();
    @this.rendererStrings = RendererStrings::getInstance();
    }

    ShaderUpdater@ jinit_ShaderUpdater()
    {
        this.jfields_ShaderUpdater();
        return this;
    }
    

    void onSurfaceCreated(GL10@ gl, EGLConfig@ eglConfig)
    {
    }
}

namespace ShaderUpdater
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ShaderUpdater().jinit_ShaderUpdater();
    }

    ShaderUpdater@ jcell_instance;
    ShaderUpdater@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ShaderUpdater@ value) property { jclinit(); @jcell_instance = value; }
    

    ShaderUpdater@ getInstance()
    {
        return ShaderUpdater::instance;
    }
}

