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
// package org.allbinary.graphics.opengles.renderer

class RendererStrings : JObjectBase
{
    string ON_SURFACE_CREATED;
    string ON_SURFACE_CHANGED;
    string ON_DRAW_FRAME;
    string ON_DRAW_FRAME_THREED;
    string ON_DRAW_FRAME_2D;

    // Java field initializers run after the super constructor
    void jfields_RendererStrings()
    {
    this.ON_SURFACE_CREATED = "onSurfaceCreated";
    this.ON_SURFACE_CHANGED = "onSurfaceChanged";
    this.ON_DRAW_FRAME = "onDrawFrame";
    this.ON_DRAW_FRAME_THREED = "onDrawFrameThreed";
    this.ON_DRAW_FRAME_2D = "onDrawFrame2d";
    }

    RendererStrings@ jinit_RendererStrings()
    {
        this.jfields_RendererStrings();
        return this;
    }
}

namespace RendererStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = RendererStrings().jinit_RendererStrings();
    }

    RendererStrings@ jcell_instance;
    RendererStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(RendererStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    RendererStrings@ getInstance()
    {
        return RendererStrings::instance;
    }
}

