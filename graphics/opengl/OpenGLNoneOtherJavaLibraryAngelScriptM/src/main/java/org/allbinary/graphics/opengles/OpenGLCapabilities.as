/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
// package org.allbinary.graphics.opengles

class OpenGLCapabilities : JObjectBase
{
    bool CUSTOM_GL_SURFACE_VIEW;
    string VERSION_1_0;
    string VERSION_1_1;
    string VERSION_2_0;
    string VERSION_3_0;
    string VERSION_3_1;
    string VERSION_3_2;
    string VERSION_HIGHER_THAN_EXISTS;
    string glVersion;
    int shaderVersion;
    string glInstanceVersion;
    int maxTextureSize;

    // Java field initializers run after the super constructor
    void jfields_OpenGLCapabilities()
    {
    this.CUSTOM_GL_SURFACE_VIEW = true;
    this.VERSION_1_0 = "1.0";
    this.VERSION_1_1 = "1.1";
    this.VERSION_2_0 = "2.0";
    this.VERSION_3_0 = "3.0";
    this.VERSION_3_1 = "3.1";
    this.VERSION_3_2 = "3.2";
    this.VERSION_HIGHER_THAN_EXISTS = "999.999";
    this.glVersion = StringUtil::getInstance().EMPTY_STRING;
    this.shaderVersion = 0;
    this.glInstanceVersion = StringUtil::getInstance().EMPTY_STRING;
    this.maxTextureSize = 64;
    }
    

    OpenGLCapabilities@ jinit_OpenGLCapabilities()
    {
        this.jfields_OpenGLCapabilities();
        return this;
    }
    

    bool isInitialized()
    {
        return true;
    }
    

    void initCapabilities(JObject@ gl)
    {
    }
    

    bool isGlExtensionDrawTexture()
    {
        return false;
    }
    

    string getGlVersion()
    {
        return this.glVersion;
    }
    

    bool isVertexBufferObjectSupport()
    {
        return false;
    }
    

    bool isTextureSizeValid(int widthAndHeight)
    {
        return true;
    }
}

namespace OpenGLCapabilities
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLCapabilities().jinit_OpenGLCapabilities();
    }

    OpenGLCapabilities@ jcell_instance;
    OpenGLCapabilities@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLCapabilities@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLCapabilities@ getInstance()
    {
        return OpenGLCapabilities::instance;
    }
}

