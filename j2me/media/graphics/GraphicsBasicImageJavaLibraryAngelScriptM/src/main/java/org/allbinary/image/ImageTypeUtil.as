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

class ImageTypeUtil : JObjectBase
{
    string PNG;
    string JPG;
    string GIF;
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_ImageTypeUtil()
    {
    this.PNG = "png";
    this.JPG = "jpg";
    this.GIF = "gif";
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    ImageTypeUtil@ jinit_ImageTypeUtil()
    {
        this.jfields_ImageTypeUtil();
        this.list.add(jbox(this.JPG));
        this.list.add(jbox(this.GIF));
        this.list.add(jbox(this.PNG));
        return this;
    }
    

    bool isSupported(string mediaFileType)
    {
        mediaFileType = String::toLowerCase(mediaFileType);
        for (int index = this.list.size() - 1; index >= 0; index--) {
            string name = jstringOf(this.list.get(index));
            if (String::compareTo(mediaFileType, name) == 0) {
                return true;
            }
        }
        return false;
    }
}

namespace ImageTypeUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = ImageTypeUtil().jinit_ImageTypeUtil();
    }

    ImageTypeUtil@ jcell_SINGLETON;
    ImageTypeUtil@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(ImageTypeUtil@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    ImageTypeUtil@ getInstance()
    {
        return ImageTypeUtil::SINGLETON;
    }
}

