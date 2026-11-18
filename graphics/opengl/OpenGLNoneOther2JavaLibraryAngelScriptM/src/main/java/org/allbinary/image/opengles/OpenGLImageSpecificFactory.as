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
// package org.allbinary.image.opengles

class OpenGLImageSpecificFactory : JObjectBase
{
    bool updating;

    // Java field initializers run after the super constructor
    void jfields_OpenGLImageSpecificFactory()
    {
    this.updating = false;
    }

    OpenGLImageSpecificFactory@ jinit_OpenGLImageSpecificFactory()
    {
        this.jfields_OpenGLImageSpecificFactory();
        return this;
    }
}

namespace OpenGLImageSpecificFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLImageSpecificFactory().jinit_OpenGLImageSpecificFactory();
    }

    OpenGLImageSpecificFactory@ jcell_instance;
    OpenGLImageSpecificFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLImageSpecificFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLImageSpecificFactory@ getInstance()
    {
        return OpenGLImageSpecificFactory::instance;
    }
}

