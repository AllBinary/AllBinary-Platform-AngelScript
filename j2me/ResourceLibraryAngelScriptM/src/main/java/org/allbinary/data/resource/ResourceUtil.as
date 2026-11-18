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
// package org.allbinary.data.resource

//J2SE - J2ME
class ResourceUtil : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_ResourceUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    ResourceUtil@ jinit_ResourceUtil()
    {
        this.jfields_ResourceUtil();
        return this;
    }
    

    void setLoadingPaths(string path, string ext)
    {
        this.logUtil.putF(CommonStrings::getInstance().NOT_IMPLEMENTED, this, "setLoadingPaths");
    }
    

    void setClassLoader(ClassLoader@ classLoader)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Resource Loader: ").append(jClassName(classLoader)).toString(), this, "setClassLoader");
        @ResourceUtil::classLoader = classLoader;
    }
    

    InputStream@ getResourceAsStream(string resource)
    {
        InputStream@ inputStream = this.getResourceAsStreamAtStart(resource, 2);
        if (inputStream is null) {
            @inputStream = this.getResourceAsStreamAtStart(resource, 1);
            if (inputStream is null) {
                jthrow(Exception().jinit_Exception(StringMaker().jinit_StringMaker().append("Unable to obtain: ").append(resource).toString()));
            }
        }
        return inputStream;
    }
    

    InputStream@ getResourceAsStreamAtStart(string resource, int startIndex)
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        int index = String::indexOf(resource, commonSeps.COLON);
        string resourcePath = String::substring(resource, index + startIndex);
        InputStream@ inputStream = jgetResourceAsStream(resourcePath);
        if (inputStream !is null) {
            return inputStream;
        }
        ClassLoader@ classLoader = cast<ClassLoader>(ResourceUtil::classLoader);
        @inputStream = classLoader.getResourceAsStream(resourcePath);
        if (inputStream !is null) {
            return inputStream;
        }
        @inputStream = Thread::currentThread().getContextClassLoader().getResourceAsStream(resourcePath);
        if (inputStream !is null) {
            return inputStream;
        }
        return inputStream;
    }
    

    void addResource(string resource, JInteger@ value)
    {
    }
}

namespace ResourceUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_classLoader = NullUtil::getInstance().NULL_OBJECT;
        @jcell_instance = ResourceUtil().jinit_ResourceUtil();
    }

    JObject@ jcell_classLoader;
    JObject@ get_classLoader() property { jclinit(); return jcell_classLoader; }
    void set_classLoader(JObject@ value) property { jclinit(); @jcell_classLoader = value; }

    ResourceUtil@ jcell_instance;
    ResourceUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ResourceUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ResourceUtil@ getInstance()
    {
        return ResourceUtil::instance;
    }
}

