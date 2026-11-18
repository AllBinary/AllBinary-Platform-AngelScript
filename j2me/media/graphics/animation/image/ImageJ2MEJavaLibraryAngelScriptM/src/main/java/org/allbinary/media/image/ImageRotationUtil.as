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

class ImageRotationUtil : JObjectBase
{
    int anchor;

    // Java field initializers run after the super constructor
    void jfields_ImageRotationUtil()
    {
    this.anchor = Anchor::TOP_LEFT;
    }
    

    ImageRotationUtil@ jinit_ImageRotationUtil()
    {
        this.jfields_ImageRotationUtil();
        return this;
    }
    

    Image@ createRotatedImage(Image@ originalImage, int rotationInDegrees)
    {
        return originalImage;
    }
}

namespace ImageRotationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ImageRotationUtil().jinit_ImageRotationUtil();
    }

    ImageRotationUtil@ jcell_instance;
    ImageRotationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ImageRotationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ImageRotationUtil@ getInstance()
    {
        return ImageRotationUtil::instance;
    }
}

