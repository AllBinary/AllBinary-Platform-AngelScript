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

class OpenGLESImageProcessor : JObjectBase
{

    OpenGLESImageProcessor@ jinit_OpenGLESImageProcessor()
    {
        return this;
    }
    

    void translate(GL10@ gl, float translateX, float translateY)
    {
    }
    

    void rotate(GL10@ gl, float angle)
    {
    }
    

    void scale(GL10@ gl, float scaleX, float scaleY)
    {
    }
    

    void colorMask(GL10@ gl, float red, float green, float blue, float alpha)
    {
    }
}

namespace OpenGLESImageProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLESImageProcessor().jinit_OpenGLESImageProcessor();
    }

    OpenGLESImageProcessor@ jcell_instance;
    OpenGLESImageProcessor@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLESImageProcessor@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLESImageProcessor@ getInstance()
    {
        return OpenGLESImageProcessor::instance;
    }
}

