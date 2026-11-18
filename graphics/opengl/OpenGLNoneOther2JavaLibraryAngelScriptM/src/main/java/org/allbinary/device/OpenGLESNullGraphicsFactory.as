// Generated Code Do Not Modify
// package org.allbinary.device

class OpenGLESNullGraphicsFactory : JObjectBase
{

    OpenGLESNullGraphicsFactory@ jinit_OpenGLESNullGraphicsFactory()
    {
        return this;
    }
}

namespace OpenGLESNullGraphicsFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLESGraphics().jinit_OpenGLESGraphics();
    }

    OpenGLESGraphics@ jcell_instance;
    OpenGLESGraphics@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLESGraphics@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLESGraphics@ getInstance()
    {
        return OpenGLESNullGraphicsFactory::instance;
    }
}

