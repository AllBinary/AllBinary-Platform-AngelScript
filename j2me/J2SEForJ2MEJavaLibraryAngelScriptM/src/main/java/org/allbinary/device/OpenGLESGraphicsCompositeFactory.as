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
// package org.allbinary.device

class OpenGLESGraphicsCompositeFactory : JObjectBase
{
    OpenGLESGraphicsFactory@ openGLESGraphicsFactory_OpenGLESGraphicsCompositeFactory;

    // Java field initializers run after the super constructor
    void jfields_OpenGLESGraphicsCompositeFactory()
    {
    @this.openGLESGraphicsFactory_OpenGLESGraphicsCompositeFactory = OpenGLESGraphicsFactory().jinit_OpenGLESGraphicsFactory();
    }

    OpenGLESGraphicsCompositeFactory@ jinit_OpenGLESGraphicsCompositeFactory()
    {
        this.jfields_OpenGLESGraphicsCompositeFactory();
        return this;
    }
    

    void set(OpenGLESGraphicsFactory@ openGLESGraphicsFactory)
    {
        @this.openGLESGraphicsFactory_OpenGLESGraphicsCompositeFactory = openGLESGraphicsFactory;
    }
    

    OpenGLESGraphicsFactory@ get()
    {
        return this.openGLESGraphicsFactory_OpenGLESGraphicsCompositeFactory;
    }
}

namespace OpenGLESGraphicsCompositeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLESGraphicsCompositeFactory().jinit_OpenGLESGraphicsCompositeFactory();
    }

    OpenGLESGraphicsCompositeFactory@ jcell_instance;
    OpenGLESGraphicsCompositeFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLESGraphicsCompositeFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLESGraphicsCompositeFactory@ getInstance()
    {
        return OpenGLESGraphicsCompositeFactory::instance;
    }
}

