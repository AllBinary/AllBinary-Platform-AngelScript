// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

class OpenGLProcessor : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;

    // Java field initializers run after the super constructor
    void jfields_OpenGLProcessor()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    }

    OpenGLProcessor@ jinit_OpenGLProcessor()
    {
        this.jfields_OpenGLProcessor();
        return this;
    }
    

    void process(GL10@ gl)
    {
    }
}

