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

//J2ME
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
    

    InputStream@ getResourceAsStream(string resource)
    {
        InputStream@ inputStream = jgetResourceAsStream(resource);
        if (inputStream is null) {
            @inputStream = this.getResourceAsStreamAtStart(resource, 2);
            if (inputStream is null) {
                @inputStream = this.getResourceAsStreamAtStart(resource, 1);
                if (inputStream is null) {
                    StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
                    int index = String::lastIndexOf(resource, uint16('/'));
                    string resourcePath = String::substring(resource, index + 1);
                    @inputStream = jgetResourceAsStream(resourcePath);
                    if (inputStream is null) {
                        resourcePath = String::substring(resource, index);
                        @inputStream = jgetResourceAsStream(resourcePath);
                        if (inputStream is null) {
                            string RES = "res";
                            resourcePath = stringMaker.append(RES).append(String::substring(resource, index)).toString();
                            @inputStream = jgetResourceAsStream(resourcePath);
                            if (inputStream is null) {
                                stringMaker.delete(0, stringMaker.length());
                                resourcePath = stringMaker.append("/").append(RES).append(String::substring(resource, index)).toString();
                                @inputStream = jgetResourceAsStream(resourcePath);
                                string COLON = CommonSeps::getInstance().COLON;
                                if (inputStream is null) {
                                    stringMaker.delete(0, stringMaker.length());
                                    resourcePath = stringMaker.append(RES).append(COLON).append(String::substring(resource, index)).toString();
                                    @inputStream = jgetResourceAsStream(resourcePath);
                                    if (inputStream is null) {
                                        stringMaker.delete(0, stringMaker.length());
                                        resourcePath = stringMaker.append(RES).append(COLON).append(String::substring(resource, index + 1)).toString();
                                        @inputStream = jgetResourceAsStream(resourcePath);
                                        if (inputStream is null) {
                                            string RESOURCE_STRING = "resource";
                                            stringMaker.delete(0, stringMaker.length());
                                            resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(String::substring(resource, index)).toString();
                                            @inputStream = jgetResourceAsStream(resourcePath);
                                            if (inputStream is null) {
                                                stringMaker.delete(0, stringMaker.length());
                                                resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(String::substring(resource, index + 1)).toString();
                                                @inputStream = jgetResourceAsStream(resourcePath);
                                                if (inputStream is null) {
                                                    stringMaker.delete(0, stringMaker.length());
                                                    jthrow(Exception().jinit_Exception(stringMaker.append("Unable to obtain: ").append(resource).toString()));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return inputStream;
    }
    

    InputStream@ getResourceAsStreamAtStart(string resource, int startIndex)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        int index = String::indexOf(resource, CommonSeps::getInstance().COLON);
        string resourcePath = String::substring(resource, index + startIndex);
        InputStream@ inputStream = jgetResourceAsStream(resourcePath);
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

