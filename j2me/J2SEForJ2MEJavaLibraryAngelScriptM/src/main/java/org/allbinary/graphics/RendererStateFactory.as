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
// package org.allbinary.graphics

class RendererStateFactory : JObjectBase
{
    bool loaded_RendererStateFactory;
    bool surfaceChanged_RendererStateFactory;

    // Java field initializers run after the super constructor
    void jfields_RendererStateFactory()
    {
    this.loaded_RendererStateFactory = false;
    this.surfaceChanged_RendererStateFactory = false;
    }

    RendererStateFactory@ jinit_RendererStateFactory()
    {
        this.jfields_RendererStateFactory();
        return this;
    }
    

    void setLoaded(bool loaded)
    {
        this.loaded_RendererStateFactory = loaded;
    }
    

    bool isLoaded()
    {
        return this.loaded_RendererStateFactory;
    }
    

    void setSurfaceChanged(bool initialized)
    {
        this.surfaceChanged_RendererStateFactory = initialized;
    }
    

    bool isSurfaceChanged()
    {
        return this.surfaceChanged_RendererStateFactory;
    }
}

namespace RendererStateFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = RendererStateFactory().jinit_RendererStateFactory();
    }

    RendererStateFactory@ jcell_instance;
    RendererStateFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(RendererStateFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    RendererStateFactory@ getInstance()
    {
        return RendererStateFactory::instance;
    }
}

