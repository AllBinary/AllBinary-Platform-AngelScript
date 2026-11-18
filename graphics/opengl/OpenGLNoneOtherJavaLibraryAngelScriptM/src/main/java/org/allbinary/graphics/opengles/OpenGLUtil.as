// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

class OpenGLUtil : JObjectBase
{

    OpenGLUtil@ jinit_OpenGLUtil()
    {
        return this;
    }
    

    Image@ addImage(Image@ image)
    {
        return image;
    }
    

    void clear()
    {
    }
    

    void addRunnable(Runnable@ runnable)
    {
    }
}

namespace OpenGLUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLUtil().jinit_OpenGLUtil();
    }

    OpenGLUtil@ jcell_instance;
    OpenGLUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLUtil@ getInstance()
    {
        return OpenGLUtil::instance;
    }
}

