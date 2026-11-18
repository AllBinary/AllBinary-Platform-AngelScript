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

class PlatformBitmapBaseFactory : JObjectBase
{

    PlatformBitmapBaseFactory@ jinit_PlatformBitmapBaseFactory()
    {
        return this;
    }
    

    PlatformBitmapBase@ createBitmap(Image@ image)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
}

namespace PlatformBitmapBaseFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY = PlatformBitmapBaseFactory().jinit_PlatformBitmapBaseFactory();
    }

    PlatformBitmapBaseFactory@ jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY;
    PlatformBitmapBaseFactory@ get_NULL_PLATFORM_BITMAP_BASE_FACTORY() property { jclinit(); return jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY; }
    void set_NULL_PLATFORM_BITMAP_BASE_FACTORY(PlatformBitmapBaseFactory@ value) property { jclinit(); @jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY = value; }
}

