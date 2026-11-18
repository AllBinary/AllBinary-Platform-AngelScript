/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.font

class MyFontProcessor : JObjectBase
{

    MyFontProcessor@ jinit_MyFontProcessor()
    {
        return this;
    }
    

    void process(Graphics@ graphics)
    {
    }
}

namespace MyFontProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MyFontProcessor().jinit_MyFontProcessor();
    }

    MyFontProcessor@ jcell_instance;
    MyFontProcessor@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MyFontProcessor@ value) property { jclinit(); @jcell_instance = value; }
    

    int defaultCharWidth(Font@ font)
    {
        return font.charWidth(uint16('C'));
    }
    

    int defaultStringWidth(Font@ font, int size)
    {
        return MyFontProcessor::defaultCharWidth(font) * size;
    }
    

    MyFontProcessor@ getInstance()
    {
        return MyFontProcessor::instance;
    }
}

