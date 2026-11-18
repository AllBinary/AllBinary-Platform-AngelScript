/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.image.opengles

class ModifierOpenGLESImageProcessor : OpenGLESImageProcessor
{

    ModifierOpenGLESImageProcessor@ jinit_ModifierOpenGLESImageProcessor()
    {
        this.jinit_OpenGLESImageProcessor();
        return this;
    }
}

namespace ModifierOpenGLESImageProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceC = ModifierOpenGLESImageProcessor().jinit_ModifierOpenGLESImageProcessor();
    }

    ModifierOpenGLESImageProcessor@ jcell_instanceC;
    ModifierOpenGLESImageProcessor@ get_instanceC() property { jclinit(); return jcell_instanceC; }
    void set_instanceC(ModifierOpenGLESImageProcessor@ value) property { jclinit(); @jcell_instanceC = value; }
    

    ModifierOpenGLESImageProcessor@ getInstance()
    {
        return ModifierOpenGLESImageProcessor::instanceC;
    }
}

