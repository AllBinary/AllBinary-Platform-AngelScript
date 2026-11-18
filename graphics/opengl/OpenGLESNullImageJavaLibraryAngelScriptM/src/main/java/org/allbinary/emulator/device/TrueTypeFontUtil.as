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
// package org.allbinary.emulator.device

class TrueTypeFontUtil : TrueTypeFontUtilBase
{
    OpenGLESImage@ fontImage;

    // Java field initializers run after the super constructor
    void jfields_TrueTypeFontUtil()
    {
    @this.fontImage = OpenGLESImage::NULL_OPENGL_IMAGE;
    }
    

    TrueTypeFontUtil@ jinit_TrueTypeFontUtil()
    {
        this.jinit_TrueTypeFontUtilBase(1);
        this.jfields_TrueTypeFontUtil();
        return this;
    }
    

    int getAsTextureSize(int textureSize)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return 0;
    }
    

    int getCellSize(int cellSize)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return 0;
    }
    

    Image@ getFontBitmap(string filename, int fontSize, int cellSize, BasicColor@ basicColor)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    void saveFontAtlasAsFile()
    {
    }
    

    Image@ getFontBitmapGL(GL10@ gl, string filename, int cellSize, BasicColor@ basicColor)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    int[]@ getFontWidths(string filename, int fontSize)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
}

namespace TrueTypeFontUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TrueTypeFontUtil().jinit_TrueTypeFontUtil();
    }

    TrueTypeFontUtil@ jcell_instance;
    TrueTypeFontUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TrueTypeFontUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    TrueTypeFontUtil@ getInstance()
    {
        return TrueTypeFontUtil::instance;
    }
}

