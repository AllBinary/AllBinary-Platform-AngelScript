// Generated Code Do Not Modify
// package org.allbinary.graphics

class OpenGLBitmapFactory : PlatformBitmapBaseFactory
{
    OpenGLBitmapConfig@ ARGB_8888;

    // Java field initializers run after the super constructor
    void jfields_OpenGLBitmapFactory()
    {
    @this.ARGB_8888 = OpenGLBitmapConfig().jinit_OpenGLBitmapConfig(NullUtil::getInstance().NULL_OBJECT);
    }

    OpenGLBitmapFactory@ jinit_OpenGLBitmapFactory()
    {
        this.jinit_PlatformBitmapBaseFactory();
        this.jfields_OpenGLBitmapFactory();
        return this;
    }
    

    OpenGLBitmap@ createBitmap(int width, int height, OpenGLBitmapConfig@ config)
    {
        return OpenGLBitmap().jinit_OpenGLBitmap(NullUtil::getInstance().NULL_OBJECT);
    }
    

    OpenGLBitmap@ decodeStream(InputStream@ inputStream)
    {
        return OpenGLBitmap().jinit_OpenGLBitmap(NullUtil::getInstance().NULL_OBJECT);
    }
    

    PlatformBitmapBase@ createBitmap(Image@ image)
    {
        return OpenGLBitmap().jinit_OpenGLBitmap(NullUtil::getInstance().NULL_OBJECT);
    }
}

namespace OpenGLBitmapFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLBitmapFactory().jinit_OpenGLBitmapFactory();
    }

    OpenGLBitmapFactory@ jcell_instance;
    OpenGLBitmapFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLBitmapFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLBitmapFactory@ getInstance()
    {
        return OpenGLBitmapFactory::instance;
    }
}

