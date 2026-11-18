/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2026 AllBinary
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
// package org.allbinary

//like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
class MIDPUtil : JObjectBase
{

    MIDPUtil@ jinit_MIDPUtil()
    {
        return this;
    }
    

    Image@ createImageWH(int width, int height)
    {
        return Image::createImageWH(width, height);
    }
    

    Image@ createImageFromByteArray(int8[]@ imageData, int imageOffset, int imageLength)
    {
        return Image::createImageFromByteArray(imageData, imageOffset, imageLength);
    }
    

    Image@ createImageFromInputStream(InputStream@ inputStream)
    {
        return Image::createImageFromInputStream(inputStream);
    }
    

    Player@ createPlayerFromInputStream(InputStream@ inputStream, string type)
    {
        return Manager::createPlayerFromInputStream(inputStream, type);
    }
    

    int appendItem(Form@ form, Item@ item)
    {
        return form.appendItem(item);
    }
}

namespace MIDPUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MIDPUtil().jinit_MIDPUtil();
    }

    MIDPUtil@ jcell_instance;
    MIDPUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MIDPUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    MIDPUtil@ getInstance()
    {
        return MIDPUtil::instance;
    }
}

