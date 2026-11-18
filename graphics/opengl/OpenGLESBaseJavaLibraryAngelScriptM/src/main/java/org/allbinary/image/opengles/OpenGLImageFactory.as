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

class OpenGLImageFactory : JObjectBase
{

    OpenGLImageFactory@ jinit_OpenGLImageFactory()
    {
        return this;
    }
    

    Image@ getInstance(Image@ image, PlatformBitmapBaseFactory@ bitmapFactory, PlatformTextureBaseFactory@ textureFactory)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
}

namespace OpenGLImageFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_OPENGL_IMAGE_FACTORY = OpenGLImageFactory().jinit_OpenGLImageFactory();
    }

    OpenGLImageFactory@ jcell_NULL_OPENGL_IMAGE_FACTORY;
    OpenGLImageFactory@ get_NULL_OPENGL_IMAGE_FACTORY() property { jclinit(); return jcell_NULL_OPENGL_IMAGE_FACTORY; }
    void set_NULL_OPENGL_IMAGE_FACTORY(OpenGLImageFactory@ value) property { jclinit(); @jcell_NULL_OPENGL_IMAGE_FACTORY = value; }
}

