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
// package javax.microedition.lcdui

class NullImage : JObjectBase
{

    NullImage@ jinit_NullImage()
    {
        return this;
    }
}

namespace NullImage
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_IMAGE_ARRAY = array<Image@>(0);
        @jcell_NULL_IMAGE = Image().jinit_Image();
    }

    Image@[]@ jcell_NULL_IMAGE_ARRAY;
    Image@[]@ get_NULL_IMAGE_ARRAY() property { jclinit(); return jcell_NULL_IMAGE_ARRAY; }
    void set_NULL_IMAGE_ARRAY(Image@[]@ value) property { jclinit(); @jcell_NULL_IMAGE_ARRAY = value; }

    Image@ jcell_NULL_IMAGE;
    Image@ get_NULL_IMAGE() property { jclinit(); return jcell_NULL_IMAGE; }
    void set_NULL_IMAGE(Image@ value) property { jclinit(); @jcell_NULL_IMAGE = value; }
}

