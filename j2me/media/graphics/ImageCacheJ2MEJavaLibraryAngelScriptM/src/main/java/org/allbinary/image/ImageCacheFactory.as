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
// package org.allbinary.image

class ImageCacheFactory : JObjectBase
{

    ImageCacheFactory@ jinit_ImageCacheFactory()
    {
        return this;
    }
}

namespace ImageCacheFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_IMAGE_CACHE = ImageCache().jinit_ImageCache();
    }

    ImageCache@ jcell_IMAGE_CACHE;
    ImageCache@ get_IMAGE_CACHE() property { jclinit(); return jcell_IMAGE_CACHE; }
    void set_IMAGE_CACHE(ImageCache@ value) property { jclinit(); @jcell_IMAGE_CACHE = value; }
    

    ImageCache@ getInstance()
    {
        return ImageCacheFactory::IMAGE_CACHE;
    }
    

    void init()
    {
    }
}

