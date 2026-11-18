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

class OpenGLFeatureFactory : JObjectBase
{
    OpenGLFeature@ OPENGL_OPTIONS;
    OpenGLFeature@ OPENGL;
    OpenGLFeature@ OPENGL_SURFACE_VIEW;
    OpenGLFeature@ OPENGL_2D;
    OpenGLFeature@ OPENGL_3D;
    OpenGLFeature@ OPENGL_2D_AND_3D;
    OpenGLFeature@ OPENGL_AUTO_SELECT;
    OpenGLFeature@ OPENGL_MINIMUM;
    OpenGLFeature@ OPENGL_AS_GAME_THREAD;
    OpenGLFeature@ OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS;
    OpenGLFeature@ IMAGE_COLOR_DEPTH_4444;
    OpenGLFeature@ IMAGE_COLOR_DEPTH_8888;
    OpenGLFeature@ IMAGE_COLOR_DEPTH_565;
    OpenGLFeature@ OPENGL_COLOR_DEPTH_4444;
    OpenGLFeature@ OPENGL_COLOR_DEPTH_8888;
    OpenGLFeature@ OPENGL_COLOR_DEPTH_565;
    OpenGLFeature@ OPENGL_DRAW_TEXTURE;
    OpenGLFeature@ OPENGL_VERTEX_BUFFER_OBJECT;
    OpenGLFeature@ OPENGL_SIMPLE_OBJECT3D_PROCESSOR;
    OpenGLFeature@ OPENGL_COMPLEX_OBJECT3D_PROCESSOR;
    OpenGLFeature@ OPENGL_SIMPLE_TEXTURE_PROCESSOR;
    OpenGLFeature@ OPENGL_COMPLEX_TEXTURE_PROCESSOR;

    // Java field initializers run after the super constructor
    void jfields_OpenGLFeatureFactory()
    {
    @this.OPENGL_OPTIONS = OpenGLFeature().jinit_OpenGLFeature("OpenGL Options");
    @this.OPENGL = OpenGLFeature().jinit_OpenGLFeature("OpenGL");
    @this.OPENGL_SURFACE_VIEW = OpenGLFeature().jinit_OpenGLFeature("GLSurfaceView");
    @this.OPENGL_2D = OpenGLFeature().jinit_OpenGLFeature("OpenGL 2D");
    @this.OPENGL_3D = OpenGLFeature().jinit_OpenGLFeature("OpenGL 3D");
    @this.OPENGL_2D_AND_3D = OpenGLFeature().jinit_OpenGLFeature("OpenGL 2D/3D");
    @this.OPENGL_AUTO_SELECT = OpenGLFeature().jinit_OpenGLFeature("Auto Select");
    @this.OPENGL_MINIMUM = OpenGLFeature().jinit_OpenGLFeature("Minimum");
    @this.OPENGL_AS_GAME_THREAD = OpenGLFeature().jinit_OpenGLFeature("As game thread");
    @this.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = OpenGLFeature().jinit_OpenGLFeature("As different threads");
    @this.IMAGE_COLOR_DEPTH_4444 = OpenGLFeature().jinit_OpenGLFeature("4444");
    @this.IMAGE_COLOR_DEPTH_8888 = OpenGLFeature().jinit_OpenGLFeature("8888");
    @this.IMAGE_COLOR_DEPTH_565 = OpenGLFeature().jinit_OpenGLFeature("565");
    @this.OPENGL_COLOR_DEPTH_4444 = OpenGLFeature().jinit_OpenGLFeature("4444");
    @this.OPENGL_COLOR_DEPTH_8888 = OpenGLFeature().jinit_OpenGLFeature("8888");
    @this.OPENGL_COLOR_DEPTH_565 = OpenGLFeature().jinit_OpenGLFeature("565");
    @this.OPENGL_DRAW_TEXTURE = OpenGLFeature().jinit_OpenGLFeature("GL_OES_draw_texture");
    @this.OPENGL_VERTEX_BUFFER_OBJECT = OpenGLFeature().jinit_OpenGLFeature("vertex_buffer_object");
    @this.OPENGL_SIMPLE_OBJECT3D_PROCESSOR = OpenGLFeature().jinit_OpenGLFeature("Simple Object3d Processor");
    @this.OPENGL_COMPLEX_OBJECT3D_PROCESSOR = OpenGLFeature().jinit_OpenGLFeature("Complex Object3d Processor");
    @this.OPENGL_SIMPLE_TEXTURE_PROCESSOR = OpenGLFeature().jinit_OpenGLFeature("Simple Texture Processor");
    @this.OPENGL_COMPLEX_TEXTURE_PROCESSOR = OpenGLFeature().jinit_OpenGLFeature("Complex Texture Processor");
    }
    

    OpenGLFeatureFactory@ jinit_OpenGLFeatureFactory()
    {
        this.jfields_OpenGLFeatureFactory();
        return this;
    }
}

namespace OpenGLFeatureFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLFeatureFactory().jinit_OpenGLFeatureFactory();
    }

    OpenGLFeatureFactory@ jcell_instance;
    OpenGLFeatureFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLFeatureFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLFeatureFactory@ getInstance()
    {
        return OpenGLFeatureFactory::instance;
    }
}

