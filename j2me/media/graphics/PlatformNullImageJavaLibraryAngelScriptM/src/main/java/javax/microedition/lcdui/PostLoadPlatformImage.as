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
class PostLoadPlatformImage : PlatformImage
{

    PostLoadPlatformImage@ jinit_PostLoadPlatformImage()
    {
        this.jinit_PlatformImage();
        return this;
    }
}

namespace PostLoadPlatformImage
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PostLoadPlatformImage().jinit_PostLoadPlatformImage();
    }

    PostLoadPlatformImage@ jcell_instance;
    PostLoadPlatformImage@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PostLoadPlatformImage@ value) property { jclinit(); @jcell_instance = value; }
    

    PostLoadPlatformImage@ getInstance()
    {
        return PostLoadPlatformImage::instance;
    }
}

