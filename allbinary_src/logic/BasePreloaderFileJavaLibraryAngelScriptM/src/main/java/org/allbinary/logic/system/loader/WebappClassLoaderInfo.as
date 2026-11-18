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
// package org.allbinary.logic.system.loader

class WebappClassLoaderInfo : JObjectBase
{
    

    WebappClassLoaderInfo@ jinit_WebappClassLoaderInfo()
    {
        return this;
    }
}

namespace WebappClassLoaderInfo
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_classLoader = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_classLoader;
    JObject@ get_classLoader() property { jclinit(); return jcell_classLoader; }
    void set_classLoader(JObject@ value) property { jclinit(); @jcell_classLoader = value; }
    

    void setLoader(ClassLoader@ classLoader)
    {
        @WebappClassLoaderInfo::classLoader = classLoader;
    }
    

    ClassLoader@ getLoader()
    {
        return cast<ClassLoader>(WebappClassLoaderInfo::classLoader);
    }
}

