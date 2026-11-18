// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

class OpenGLThreadUtil : JObjectBase
{

    OpenGLThreadUtil@ jinit_OpenGLThreadUtil()
    {
        return this;
    }
    

    void set(JObject@ glSurfaceView)
    {
    }
    

    void onPause()
    {
    }
    

    void onResume()
    {
    }
}

namespace OpenGLThreadUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLThreadUtil().jinit_OpenGLThreadUtil();
    }

    OpenGLThreadUtil@ jcell_instance;
    OpenGLThreadUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLThreadUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLThreadUtil@ getInstance()
    {
        return OpenGLThreadUtil::instance;
    }
}

