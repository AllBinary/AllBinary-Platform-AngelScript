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

class CompositeShaderUpdater : ShaderUpdater
{
    CommonSeps@ commonSeps;

    // Java field initializers run after the super constructor
    void jfields_CompositeShaderUpdater()
    {
    @this.commonSeps = CommonSeps::getInstance();
    }
    

    CompositeShaderUpdater@ jinit_CompositeShaderUpdater(string[]@ uniformBlockArray, string[]@ uniformArray, string[]@ attributeArray, int[]@ attributeHandleArray)
    {
        this.jinit_ShaderUpdater();
        this.jfields_CompositeShaderUpdater();
        return this;
    }
    

    void onSurfaceCreated(GL10@ gl, EGLConfig@ eglConfig, int programHandle)
    {
    }
    

    void onSurfaceDestroyed(GL10@ gl)
    {
    }
}

namespace CompositeShaderUpdater
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceC = CompositeShaderUpdater().jinit_CompositeShaderUpdater(StringUtil::getInstance().getArrayInstance(), StringUtil::getInstance().getArrayInstance(), StringUtil::getInstance().getArrayInstance(), NullUtil::getInstance().NULL_INT_ARRAY);
    }

    CompositeShaderUpdater@ jcell_instanceC;
    CompositeShaderUpdater@ get_instanceC() property { jclinit(); return jcell_instanceC; }
    void set_instanceC(CompositeShaderUpdater@ value) property { jclinit(); @jcell_instanceC = value; }
    

    CompositeShaderUpdater@ getInstance()
    {
        return CompositeShaderUpdater::instanceC;
    }
}

