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
// package org.allbinary.image

//ImageCacheBaseJavaLibrary - J2ME
class ImageFactory : JObjectBase
{

    ImageFactory@ jinit_ImageFactory()
    {
        return this;
    }
    

    Image@ createImageUrl(string url)
    {
        return Image::createImage(url);
    }
    

    Image@ createImage(string caller, int width, int height)
    {
        return MIDPUtil::getInstance().createImageWH(width, height);
    }
    

    Image@ createImageFromInputStream(JObject@ key, InputStream@ inputStream)
    {
        Image@ image = MIDPUtil::getInstance().createImageFromInputStream(inputStream);
        return image;
    }
    

    Image@ createImageFromInputStream(InputStream@ inputStream)
    {
        return MIDPUtil::getInstance().createImageFromInputStream(inputStream);
    }
}

namespace ImageFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ImageFactory().jinit_ImageFactory();
    }

    ImageFactory@ jcell_instance;
    ImageFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ImageFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ImageFactory@ getInstance()
    {
        return ImageFactory::instance;
    }
}

