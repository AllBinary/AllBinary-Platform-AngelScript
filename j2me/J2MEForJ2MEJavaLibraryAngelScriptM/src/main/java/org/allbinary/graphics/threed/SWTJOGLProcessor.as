/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.threed

//OpenGLNone
class SWTJOGLProcessor : JObjectBase, Runnable
{

    SWTJOGLProcessor@ jinit_SWTJOGLProcessor()
    {
        return this;
    }
    

    void init(JObject@ display, JObject@ comp)
    {
    }
    

    bool isHolderCreated()
    {
        return true;
    }
    

    void setRenderer(JObject@ renderer)
    {
    }
    

    bool isJOGL()
    {
        return false;
    }
    

    void createSurface()
    {
    }
    

    void onSurfaceCreated()
    {
    }
    

    void onSurfaceChangedForEvent(JObject@ event)
    {
    }
    

    void onSurfaceChanged()
    {
    }
    

    void onSurfaceChangedWH(int width, int height)
    {
    }
    

    void addListener()
    {
    }
    

    void addListeners(MIDlet@ midlet)
    {
    }
    

    void run()
    {
    }
    

    void clear()
    {
    }
    

    void setCustom(int width, int height, float ratio)
    {
    }
    

    void setRatioProcessor(RatioProcessor@ ratioProcessor)
    {
    }
    

    bool isPortraitRatioProcessor()
    {
        return true;
    }
    

    int charWidth(Font@ font, uint16 ch)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return 0;
    }
    

    int charsWidth(Font@ font, uint16[]@ ch, int offset, int length)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return 0;
    }
    

    int stringWidth(Font@ font, string str)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return 0;
    }
    

    int substringWidth(Font@ font, string str, int offset, int len)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return 0;
    }
}

namespace SWTJOGLProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SWTJOGLProcessor().jinit_SWTJOGLProcessor();
    }

    SWTJOGLProcessor@ jcell_instance;
    SWTJOGLProcessor@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SWTJOGLProcessor@ value) property { jclinit(); @jcell_instance = value; }
    

    SWTJOGLProcessor@ getInstance()
    {
        return SWTJOGLProcessor::instance;
    }
}

