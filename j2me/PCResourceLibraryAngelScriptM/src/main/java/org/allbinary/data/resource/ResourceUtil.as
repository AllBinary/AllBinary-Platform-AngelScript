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

//J2SE - PC
class ResourceUtil : JObjectBase
{
    LogUtil@ logUtil;
    string path_ResourceUtil;
    string ext_ResourceUtil;

    // Java field initializers run after the super constructor
    void jfields_ResourceUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    this.path_ResourceUtil = StringUtil::getInstance().EMPTY_STRING;
    this.ext_ResourceUtil = StringUtil::getInstance().EMPTY_STRING;
    }
    

    ResourceUtil@ jinit_ResourceUtil()
    {
        this.jfields_ResourceUtil();
        return this;
    }
    

    void setLoadingPaths(string path, string ext)
    {
        this.path_ResourceUtil = path;
        this.ext_ResourceUtil = ext;
    }
    

    void setClassLoader(ClassLoader@ classLoader)
    {
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
        InputStream@ inputStream = FileInputStream().jinit_FileInputStream(StringMaker().jinit_StringMaker().append(this.path_ResourceUtil).append(resource).append(this.ext_ResourceUtil).toString());
        if (inputStream !is null) {
            int8[]@ byteArray = array<int8>(inputStream.available());
            StreamUtil::getInstance().getByteArray(inputStream, ByteArrayOutputStream().jinit_ByteArrayOutputStream(), byteArray);
            return ByteArrayInputStream().jinit_ByteArrayInputStream(byteArray);
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
        @jcell_instance = ResourceUtil().jinit_ResourceUtil();
    }

    ResourceUtil@ jcell_instance;
    ResourceUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ResourceUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ResourceUtil@ getInstance()
    {
        return ResourceUtil::instance;
    }
}

