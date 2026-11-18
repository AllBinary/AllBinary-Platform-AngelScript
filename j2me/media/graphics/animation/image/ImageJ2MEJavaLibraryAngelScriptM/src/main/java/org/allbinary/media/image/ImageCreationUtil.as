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

class ImageCreationUtil : JObjectBase
{
    

    ImageCreationUtil@ jinit_ImageCreationUtil()
    {
        return this;
    }
    

    Image@ createImageWH(int width, int height)
    {
        Image@ image = GameFeatureImageCacheFactory::getInstance().get(jClassName(this), width, height);
        return image;
    }
    

    Image@ createImage(int width, int height, float maxScaleX, float maxScaleY)
    {
        Image@ image = GameFeatureImageCacheFactory::getInstance().get(jClassName(this), int(jdoubleToInt((float(width) * maxScaleX))) + 1, int(jdoubleToInt((float(height) * maxScaleY))) + 1);
        return image;
    }
}

namespace ImageCreationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ImageCreationUtil().jinit_ImageCreationUtil();
    }

    ImageCreationUtil@ jcell_instance;
    ImageCreationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ImageCreationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ImageCreationUtil@ getInstance()
    {
        return ImageCreationUtil::instance;
    }
}

