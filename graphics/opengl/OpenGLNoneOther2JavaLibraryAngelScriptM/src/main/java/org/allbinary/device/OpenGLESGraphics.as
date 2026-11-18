// Generated Code Do Not Modify
// package org.allbinary.device

class OpenGLESGraphics : Graphics, OpenGLSurfaceChangedInterface, GraphicsInterface
{
    CommonStrings@ commonStrings;
    GL10@ gl;

    // Java field initializers run after the super constructor
    void jfields_OpenGLESGraphics()
    {
    @this.commonStrings = CommonStrings::getInstance();
    @this.gl = NullGL10::NULL_GL10;
    }
    

    OpenGLESGraphics@ jinit_OpenGLESGraphics()
    {
        this.jinit_Graphics();
        this.jfields_OpenGLESGraphics();
        return this;
    }
    

    void updateGL(GL@ gl)
    {
    }
    

    void set(GL@ gl)
    {
    }
    

    void init()
    {
    }
    

    void update()
    {
    }
    

    void setOrthoginalMode()
    {
    }
    

    void setCameraMode()
    {
    }
    

    GL10@ getGl10()
    {
        return this.gl;
    }
    

    void setFontDebug(Font@ font, FontDebugBase@ fontDebug)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
    }
}

