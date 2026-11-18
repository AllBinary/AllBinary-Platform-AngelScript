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
// package org.allbinary.platform.graphics

class PlatformBitmapBase : JObjectBase
{
    int alpha;
    BasicColor@ basicColor;

    // Java field initializers run after the super constructor
    void jfields_PlatformBitmapBase()
    {
    this.alpha = 255;
    @this.basicColor = BasicColorFactory::getInstance().NULL_COLOR;
    }

    PlatformBitmapBase@ jinit_PlatformBitmapBase()
    {
        this.jfields_PlatformBitmapBase();
        return this;
    }
    

    int getWidth()
    {
        return 0;
    }
    

    int getHeight()
    {
        return 0;
    }
    

    Image@ getImage()
    {
        return NullImage::NULL_IMAGE;
    }
}

namespace PlatformBitmapBase
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_PLATFORM_BITMAP_BASE = PlatformBitmapBase().jinit_PlatformBitmapBase();
    }

    PlatformBitmapBase@ jcell_NULL_PLATFORM_BITMAP_BASE;
    PlatformBitmapBase@ get_NULL_PLATFORM_BITMAP_BASE() property { jclinit(); return jcell_NULL_PLATFORM_BITMAP_BASE; }
    void set_NULL_PLATFORM_BITMAP_BASE(PlatformBitmapBase@ value) property { jclinit(); @jcell_NULL_PLATFORM_BITMAP_BASE = value; }
}

