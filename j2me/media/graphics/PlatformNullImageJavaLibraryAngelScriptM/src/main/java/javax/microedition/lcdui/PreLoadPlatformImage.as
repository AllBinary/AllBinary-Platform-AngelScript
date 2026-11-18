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
// package javax.microedition.lcdui

//PlatformNullImageJavaLibrary
class PreLoadPlatformImage : PlatformImage
{

    PreLoadPlatformImage@ jinit_PreLoadPlatformImage()
    {
        this.jinit_PlatformImage();
        return this;
    }
}

namespace PreLoadPlatformImage
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PreLoadPlatformImage().jinit_PreLoadPlatformImage();
    }

    PreLoadPlatformImage@ jcell_instance;
    PreLoadPlatformImage@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PreLoadPlatformImage@ value) property { jclinit(); @jcell_instance = value; }
    

    PreLoadPlatformImage@ getInstance()
    {
        return PreLoadPlatformImage::instance;
    }
}

