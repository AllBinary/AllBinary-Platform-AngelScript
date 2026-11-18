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
// package org.allbinary.graphics.color

class BasicColorUtil : JObjectBase
{
    BasicColor@[]@ ZERO_ARRAY;
    int ALPHA;
    bool isAlpha;
    bool ffOpaque;

    // Java field initializers run after the super constructor
    void jfields_BasicColorUtil()
    {
    @this.ZERO_ARRAY = array<BasicColor@>(0);
    this.ALPHA = int(0xFF000000);
    this.isAlpha = true;
    this.ffOpaque = true;
    }

    BasicColorUtil@ jinit_BasicColorUtil()
    {
        this.jfields_BasicColorUtil();
        return this;
    }
    

    int getRGB(int red, int green, int blue)
    {
        int value = 0;
        if (this.isAlpha) {
            if (this.ffOpaque) {
                value = this.ALPHA;
            }
        }
        value = (red << 16) | value;
        value = (green << 8) | value;
        value = blue | value;
        return value;
    }
    

    int getARGB(int alphaValue, int r, int g, int b)
    {
        return ((alphaValue << 24) & this.ALPHA) + ((r << 16) & 0x00FF0000) + ((g << 8) & 0x0000FF00) + (b & 0x000000FF);
    }
    

    int get(int alphaValue, int color)
    {
        return ((alphaValue << 24) & this.ALPHA) + color;
    }
    

    int invert(int color)
    {
        return (0xFFFFFF - color) | this.ALPHA;
    }
}

namespace BasicColorUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BasicColorUtil().jinit_BasicColorUtil();
    }

    BasicColorUtil@ jcell_instance;
    BasicColorUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BasicColorUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    BasicColorUtil@ getInstance()
    {
        return BasicColorUtil::instance;
    }
}

