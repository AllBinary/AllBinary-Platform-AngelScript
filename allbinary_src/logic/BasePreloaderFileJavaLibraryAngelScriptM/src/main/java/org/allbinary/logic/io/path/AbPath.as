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
// package org.allbinary.logic.io.path

class AbPath : JObjectBase
{
    CommonSeps@ commonSeps_AbPath;
    AbPathData@ abPathData_AbPath;
    PathUtil@ abPathUtil_AbPath;
    string EMPTY_STRING_AbPath;
    string schema;
    string path_AbPath;
    string nameP;
    bool hasSchemaP_AbPath;
    int numberOfSeps_AbPath;

    // Java field initializers run after the super constructor
    void jfields_AbPath()
    {
    @this.commonSeps_AbPath = CommonSeps::getInstance();
    @this.abPathData_AbPath = AbPathData::getInstance();
    @this.abPathUtil_AbPath = PathUtil::getInstance();
    this.EMPTY_STRING_AbPath = StringUtil::getInstance().EMPTY_STRING;
    this.schema = this.EMPTY_STRING_AbPath;
    this.path_AbPath = this.EMPTY_STRING_AbPath;
    this.nameP = this.EMPTY_STRING_AbPath;
    this.hasSchemaP_AbPath = false;
    this.numberOfSeps_AbPath = 0;
    }
    

    AbPath@ jinit_AbPath(string aPath, string name)
    {
        this.jfields_AbPath();
        StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
        if (!stringValidationUtil.isEmpty(aPath)) {
            this.schema = this.getSchema(aPath);
            this.nameP = name;
            this.path_AbPath = this.abPathUtil_AbPath.adjustEnd(this.abPathUtil_AbPath.adjust(this.getPathFromPath(aPath)));
        } else {
            this.init();
            if (!stringValidationUtil.isEmpty(name)) {
                this.nameP = name;
            }
        }
        return this;
    }
    

    void init()
    {
        this.schema = this.EMPTY_STRING_AbPath;
        this.setPath(this.abPathData_AbPath.SEPARATOR);
        this.nameP = this.EMPTY_STRING_AbPath;
    }
    

    string getSchema(string aPath)
    {
        int beginIndex = String::indexOf(aPath, this.commonSeps_AbPath.COLON);
        if (beginIndex >= 0) {
            this.hasSchemaP_AbPath = true;
            return String::substring(aPath, 0, beginIndex);
        }
        this.hasSchemaP_AbPath = false;
        return this.EMPTY_STRING_AbPath;
    }
    

    bool hasSchema()
    {
        return this.hasSchemaP_AbPath;
    }
    

    string getPathFromPath(string aPath)
    {
        FilePathData@ filePathData = FilePathData::getInstance();
        string tempPath = aPath;
        if (!this.hasSchema()) {
            tempPath = this.abPathUtil_AbPath.adjustStart(tempPath);
        } else {
            int beginIndex = String::indexOf(tempPath, this.commonSeps_AbPath.COLON);
            if (beginIndex >= 0) {
                beginIndex++;
                while (String::charAt(tempPath, beginIndex) == this.abPathData_AbPath.SEPARATORCHAR || String::charAt(tempPath, beginIndex) == filePathData.SEPARATORCHAR) {
                    beginIndex++;
                    this.numberOfSeps_AbPath++;
                    if (this.numberOfSeps_AbPath > 2) {
                        jthrow(Exception().jinit_Exception("Should Not Have More Than Two Seps"));
                    }
                }
                tempPath = String::substring(tempPath, beginIndex, int(tempPath.length()));
            }
        }
        return tempPath;
    }
    

    void setName(string name)
    {
        this.nameP = name;
    }
    

    string getName()
    {
        return this.nameP;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        if (this.hasSchema()) {
            stringBuffer.append(this.schema);
            stringBuffer.append(AbPath::NETWORK_SEP);
        }
        stringBuffer.append(this.getPath());
        stringBuffer.append(this.nameP);
        return stringBuffer.toString();
    }
    

    string toFileSystemString()
    {
        if (this.hasSchema()) {
            FilePathData@ filePathData = FilePathData::getInstance();
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(this.schema);
            stringBuffer.append(this.commonSeps_AbPath.COLON);
            stringBuffer.append(filePathData.PATH_START);
            stringBuffer.append(FilePathUtil::adjust(this.getPath()));
            stringBuffer.append(this.nameP);
            return stringBuffer.toString();
        } else {
            return FilePathUtil::adjust(this.getPath()) + this.nameP;
        }
        return "";
    }
    

    string getPath()
    {
        return this.path_AbPath;
    }
    

    void setPath(string path)
    {
        this.path_AbPath = path;
    }
}

namespace AbPath
{
    const string NETWORK_SEP = ":/";
    

    AbPath@ createAbPath()
    {
        try {
            string EMPTY_STRING = StringUtil::getInstance().EMPTY_STRING;
            return AbPath().jinit_AbPath(EMPTY_STRING, EMPTY_STRING);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ ex = cast<Exception>(jex0);
            jthrow(RuntimeException().jinit_RuntimeException());
            }
            else { jthrow(jex0); }
        }
        return null;
    }
}

