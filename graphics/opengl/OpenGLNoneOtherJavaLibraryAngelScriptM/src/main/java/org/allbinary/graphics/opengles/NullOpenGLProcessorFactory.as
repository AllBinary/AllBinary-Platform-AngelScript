// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

class NullOpenGLProcessorFactory : JObjectBase
{

    NullOpenGLProcessorFactory@ jinit_NullOpenGLProcessorFactory()
    {
        return this;
    }
}

namespace NullOpenGLProcessorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OpenGLProcessor().jinit_OpenGLProcessor();
    }

    OpenGLProcessor@ jcell_instance;
    OpenGLProcessor@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OpenGLProcessor@ value) property { jclinit(); @jcell_instance = value; }
    

    OpenGLProcessor@ getInstance()
    {
        return NullOpenGLProcessorFactory::instance;
    }
}

