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

//OpenGLESNullImageJavaLibrary
class OpenGLESImage : Image, OpenGLSurfaceChangedInterface
{
    CommonStrings@ commonStrings;
    PlatformTextureBaseFactory@ textureFactory;
    PlatformBitmapBase@ openGLBitmap;
    OpenGLESImageProperties@ openGLESImageProperties;
    OpenGLESImageProcessor@ imageProcessor;
    OpenGLESImageTranslate@ openGLESImageTranslate;

    // Java field initializers run after the super constructor
    void jfields_OpenGLESImage()
    {
    @this.commonStrings = CommonStrings::getInstance();
    
    
    @this.openGLESImageProperties = OpenGLESImageProperties().jinit_OpenGLESImageProperties();
    @this.imageProcessor = OpenGLESImageProcessor::getInstance();
    @this.openGLESImageTranslate = OpenGLESImageTranslate::getInstance();
    }
    

    OpenGLESImage@ jinit_OpenGLESImage(Image@ image, PlatformBitmapBaseFactory@ bitmapFactory, PlatformTextureBaseFactory@ textureFactory)
    {
        this.jinit_Image();
        this.jfields_OpenGLESImage();
        @this.openGLBitmap = bitmapFactory.createBitmap(image);
        @this.textureFactory = textureFactory;
        return this;
    }
    

    void set(GL@ gl)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    bool initTexture(GL10@ gl)
    {
        return false;
    }
    

    void drawRegion(GL10@ gl, int viewHeight, float x_src, float y_src, float width, float height, int x, int y, int z)
    {
    }
    

    void draw(GL10@ gl, int x, int y, int z)
    {
    }
    

    int getType()
    {
        return OpenGLESImage::TYPE;
    }
}

namespace OpenGLESImage
{
    const int TYPE = 4;

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_OPENGL_IMAGE = OpenGLESImage().jinit_OpenGLESImage(NullImage::NULL_IMAGE, PlatformBitmapBaseFactory::NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory::NULL_PLATFORM_TEXTURE_BASE_FACTORY);
        @jcell_texture2dList = BasicArrayListD().jinit_BasicArrayListD();
        
    }

    OpenGLESImage@ jcell_NULL_OPENGL_IMAGE;
    OpenGLESImage@ get_NULL_OPENGL_IMAGE() property { jclinit(); return jcell_NULL_OPENGL_IMAGE; }
    void set_NULL_OPENGL_IMAGE(OpenGLESImage@ value) property { jclinit(); @jcell_NULL_OPENGL_IMAGE = value; }

    BasicArrayList@ jcell_texture2dList;
    BasicArrayList@ get_texture2dList() property { jclinit(); return jcell_texture2dList; }
    void set_texture2dList(BasicArrayList@ value) property { jclinit(); @jcell_texture2dList = value; }
}

