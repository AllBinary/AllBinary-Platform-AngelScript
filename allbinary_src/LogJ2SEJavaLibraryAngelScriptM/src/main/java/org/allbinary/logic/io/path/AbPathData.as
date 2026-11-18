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

class AbPathData : JObjectBase
{
    string EXTENSION_SEP;
    uint16 SEPARATORCHAR;
    string SEPARATOR;

    // Java field initializers run after the super constructor
    void jfields_AbPathData()
    {
    this.EXTENSION_SEP = CommonSeps::getInstance().PERIOD;
    this.SEPARATORCHAR = uint16('/');
    this.SEPARATOR = CommonSeps::getInstance().FORWARD_SLASH;
    }
    

    AbPathData@ jinit_AbPathData()
    {
        this.jfields_AbPathData();
        return this;
    }
    

    int getExtensionIndex(string filePath)
    {
        int indexOfFileExtensionDelmiter = String::lastIndexOf(filePath, this.EXTENSION_SEP);
        int indexOfLatDelimiter = String::lastIndexOf(filePath, this.SEPARATORCHAR);
        if (indexOfFileExtensionDelmiter < 0) {
            return -1;
        }
        if (indexOfFileExtensionDelmiter < indexOfLatDelimiter) {
            return -1;
        }
        return indexOfFileExtensionDelmiter;
    }
    

    string getExtensionWithDot(string filePath)
    {
        int indexOfFileExtensionDelmiter = this.getExtensionIndex(filePath);
        string extension = StringUtil::getInstance().EMPTY_STRING;
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = String::substring(filePath, indexOfFileExtensionDelmiter);
        }
        return extension;
    }
    

    string getExtension(string filePath)
    {
        int indexOfFileExtensionDelmiter = this.getExtensionIndex(filePath);
        string extension = StringUtil::getInstance().EMPTY_STRING;
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = String::substring(filePath, indexOfFileExtensionDelmiter + 1);
        }
        return extension;
    }
    

    string getNameFromPath(string path)
    {
        int endIndex = String::lastIndexOf(path, this.SEPARATORCHAR);
        if (endIndex < 0) {
            endIndex = String::lastIndexOf(path, FilePathData::getInstance().SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return path;
        }
        if (int(path.length()) == endIndex + 1) {
            string categoryName = String::substring(path, 0, endIndex);
            return this.getNameFromPath(categoryName);
        } else {
            string categoryName = String::substring(path, endIndex + 1);
            return categoryName;
        }
        return "";
    }
    

    string removeNameFromPath(string path)
    {
        int endIndex = String::lastIndexOf(path, this.SEPARATORCHAR);
        if (endIndex < 0) {
            endIndex = String::lastIndexOf(path, FilePathData::getInstance().SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return StringUtil::getInstance().EMPTY_STRING;
        }
        if (int(path.length()) == endIndex + 1) {
            return this.removeNameFromPath(String::substring(path, 0, endIndex - 1));
        } else {
            string pathWithoutName = String::substring(path, 0, endIndex);
            return pathWithoutName;
        }
        return "";
    }
}

namespace AbPathData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AbPathData().jinit_AbPathData();
    }

    AbPathData@ jcell_instance;
    AbPathData@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AbPathData@ value) property { jclinit(); @jcell_instance = value; }
    

    AbPathData@ getInstance()
    {
        return AbPathData::instance;
    }
}

