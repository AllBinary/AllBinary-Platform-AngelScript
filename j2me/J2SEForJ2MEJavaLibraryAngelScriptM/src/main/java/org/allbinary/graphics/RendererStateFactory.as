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
    bool loaded;
    bool surfaceChanged;

    // Java field initializers run after the super constructor
    void jfields_RendererStateFactory()
    {
    this.loaded = false;
    this.surfaceChanged = false;
    }

    RendererStateFactory@ jinit_RendererStateFactory()
    {
        this.jfields_RendererStateFactory();
        return this;
    }
    

    void setLoaded(bool loaded)
    {
        this.loaded = loaded;
    }
    

    bool isLoaded()
    {
        return this.loaded;
    }
    

    void setSurfaceChanged(bool initialized)
    {
        this.surfaceChanged = initialized;
    }
    

    bool isSurfaceChanged()
    {
        return this.surfaceChanged;
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

