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

class ImageToRotationImageArrayUtil : JObjectBase
{
    

    ImageToRotationImageArrayUtil@ jinit_ImageToRotationImageArrayUtil()
    {
        return this;
    }
    

    Image@[]@ generate(Image@ image, int angleIncrement, int totalAngle)
    {
        ImageRotationUtil@ imageRotationUtil = ImageRotationUtil::getInstance();
        int totalFrames = totalAngle / angleIncrement;
        Image@[]@ imageArray = array<Image@>(totalFrames);
        @imageArray[0] = image;
        for (int index = 1; index < totalFrames; index++) {
            @imageArray[index] = imageRotationUtil.createRotatedImage(image, index * angleIncrement);
        }
        return imageArray;
    }
}

namespace ImageToRotationImageArrayUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ImageToRotationImageArrayUtil().jinit_ImageToRotationImageArrayUtil();
    }

    ImageToRotationImageArrayUtil@ jcell_instance;
    ImageToRotationImageArrayUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ImageToRotationImageArrayUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ImageToRotationImageArrayUtil@ getInstance()
    {
        return ImageToRotationImageArrayUtil::instance;
    }
}

