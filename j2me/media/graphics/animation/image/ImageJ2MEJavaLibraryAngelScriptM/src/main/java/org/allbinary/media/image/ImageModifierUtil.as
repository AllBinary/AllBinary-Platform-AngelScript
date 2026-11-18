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
// package org.allbinary.media.image

class ImageModifierUtil : JObjectBase
{

    ImageModifierUtil@ jinit_ImageModifierUtil()
    {
        return this;
    }
    

    void setColor(Image@ unusedOriginalImage, Image@ image, int imageIndex, BasicColor@ basicColor)
    {
    }
    

    void changeColor(Image@ unusedOriginalImage, Image@ image, int imageIndex, BasicColor@ basicColor)
    {
    }
    

    void setAlpha(Image@ originalImage, Image@ image, int imageIndex, int alphaInt)
    {
    }
    

    Image@[]@ getImageArray(Image@[]@ originalImageArray)
    {
        return originalImageArray;
    }
    

    void handleImage(Image@[]@ imageArray, int index, Image@ image)
    {
    }
    

    void reset()
    {
    }
}

namespace ImageModifierUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ImageModifierUtil().jinit_ImageModifierUtil();
    }

    ImageModifierUtil@ jcell_instance;
    ImageModifierUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ImageModifierUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ImageModifierUtil@ getInstanceOrCreate()
    {
        return ImageModifierUtil::instance;
    }
}

