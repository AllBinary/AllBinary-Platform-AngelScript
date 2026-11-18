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
// package org.allbinary.logic.system

class PlatformAssetManager : JObjectBase
{

    PlatformAssetManager@ jinit_PlatformAssetManager()
    {
        return this;
    }
    

    InputStream@ getResourceAsStream(string resource)
    {
        ResourceUtil@ resourceUtil = ResourceUtil::getInstance();
        InputStream@ inputStream = resourceUtil.getResourceAsStream(resource);
        return inputStream;
    }
}

namespace PlatformAssetManager
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PlatformAssetManager().jinit_PlatformAssetManager();
    }

    PlatformAssetManager@ jcell_instance;
    PlatformAssetManager@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PlatformAssetManager@ value) property { jclinit(); @jcell_instance = value; }
    

    PlatformAssetManager@ getInstance()
    {
        return PlatformAssetManager::instance;
    }
}

