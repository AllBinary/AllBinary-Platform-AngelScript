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

class ImageCompleteUtil : JObjectBase
{

    ImageCompleteUtil@ jinit_ImageCompleteUtil()
    {
        return this;
    }
    

    void waitForImage(Image@ image, string name)
    {
    }
}

namespace ImageCompleteUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ImageCompleteUtil().jinit_ImageCompleteUtil();
    }

    ImageCompleteUtil@ jcell_instance;
    ImageCompleteUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ImageCompleteUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ImageCompleteUtil@ getInstance()
    {
        return ImageCompleteUtil::instance;
    }
}

