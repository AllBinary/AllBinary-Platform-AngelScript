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
// package org.allbinary.image.opengles

class OpenGLESImageTranslate : JObjectBase
{

    OpenGLESImageTranslate@ jinit_OpenGLESImageTranslate()
    {
        return this;
    }
    

    void translate(GL10@ gl, OpenGLESImage@ openGLESImage, float x, float y)
    {
    }
    

    void translate2(GL10@ gl, OpenGLESImage@ openGLESImage)
    {
    }
}

namespace OpenGLESImageTranslate
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLESImageTranslate().jinit_OpenGLESImageTranslate();
    }

    OpenGLESImageTranslate@ jcell_instance;
    OpenGLESImageTranslate@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLESImageTranslate@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLESImageTranslate@ getInstance()
    {
        return OpenGLESImageTranslate::instance;
    }
}

