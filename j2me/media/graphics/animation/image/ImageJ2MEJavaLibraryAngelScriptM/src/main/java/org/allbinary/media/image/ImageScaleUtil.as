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
// package org.allbinary.media.image

class ImageScaleUtil : JObjectBase
{
    

    ImageScaleUtil@ jinit_ImageScaleUtil()
    {
        return this;
    }
    

    Image@ createImage2(ImageCache@ imageCache, Image@ originalImage, float scaleNominatorX, float scaleDenominatorX, float scaleNominatorY, float scaleDenominatorY, bool cached)
    {
        return this.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true);
    }
    

    Image@ createImage3(ImageCache@ imageCache, Image@ originalImage, float scaleNominatorX, float scaleDenominatorX, float scaleNominatorY, float scaleDenominatorY, bool cached, bool mutable)
    {
        return originalImage;
    }
}

namespace ImageScaleUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ImageScaleUtil().jinit_ImageScaleUtil();
    }

    ImageScaleUtil@ jcell_instance;
    ImageScaleUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ImageScaleUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ImageScaleUtil@ getInstance()
    {
        return ImageScaleUtil::instance;
    }
}

