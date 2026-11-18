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

class OpenGLESImageExclusionUtil : JObjectBase
{
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_OpenGLESImageExclusionUtil()
    {
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }

    OpenGLESImageExclusionUtil@ jinit_OpenGLESImageExclusionUtil()
    {
        this.jfields_OpenGLESImageExclusionUtil();
        return this;
    }
    

    bool isCustomScaling(Image@ image)
    {
        return false;
    }
}

namespace OpenGLESImageExclusionUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLESImageExclusionUtil().jinit_OpenGLESImageExclusionUtil();
    }

    OpenGLESImageExclusionUtil@ jcell_instance;
    OpenGLESImageExclusionUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLESImageExclusionUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLESImageExclusionUtil@ getInstance()
    {
        return OpenGLESImageExclusionUtil::instance;
    }
}

