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

//Used to correct user input for paths
class PathUtil : JObjectBase
{
    AbPathData@ abPathData;
    FilePathData@ filePathData;

    // Java field initializers run after the super constructor
    void jfields_PathUtil()
    {
    @this.abPathData = AbPathData::getInstance();
    @this.filePathData = FilePathData::getInstance();
    }
    

    PathUtil@ jinit_PathUtil()
    {
        this.jfields_PathUtil();
        return this;
    }
    

    string getExtensionWithAbFilePath(AbFilePath@ abFilePath)
    {
        return this.abPathData.getExtension(abFilePath.toString());
    }
    

    string getExtensionWithAbPath(AbPath@ abPath)
    {
        return this.abPathData.getExtension(abPath.toString());
    }
    

    string getWithoutExtensionWithAbFilePath(AbFilePath@ abFilePath)
    {
        return this.getWithoutExtension(abFilePath.toString());
    }
    

    string getWithoutExtensionWithAbPath(AbPath@ abPath)
    {
        return this.getWithoutExtension(abPath.toString());
    }
    

    string getWithoutExtension(string filePath)
    {
        int indexOfFileExtensionDelmiter = this.abPathData.getExtensionIndex(filePath);
        string pathWithoutExtension = filePath;
        if (indexOfFileExtensionDelmiter >= 0) {
            pathWithoutExtension = String::substring(filePath, 0, indexOfFileExtensionDelmiter);
        }
        return pathWithoutExtension;
    }
    

    bool isValid(string path)
    {
        if (this.isValidStart(path)) {
            if (this.isValidEnd(path)) {
                return true;
            }
        }
        return false;
    }
    

    bool isValidStart(string path)
    {
        if (String::charAt(path, 0) == this.abPathData.SEPARATORCHAR || String::charAt(path, 0) == uint16('.')) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    bool isValidEnd(string path)
    {
        StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
        if (stringValidationUtil.isEmpty(path)) {
            return false;
        }
        if (String::charAt(path, int(path.length()) - 1) == this.abPathData.SEPARATORCHAR) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    string adjustStart(string path)
    {
        if (!this.isValidStart(path)) {
            path = this.abPathData.SEPARATOR + path;
        }
        return path;
    }
    

    string adjustEnd(string path)
    {
        if (!this.isValidEnd(path)) {
            path = path + this.abPathData.SEPARATOR;
        }
        return path;
    }
    

    string adjust(string path)
    {
        StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
        if (stringValidationUtil.isEmpty(path)) {
            return this.abPathData.SEPARATOR;
        }
        if (String::indexOf(path, "\\") >= 0) {
            path = String::replace(path, uint16('\\'), this.abPathData.SEPARATORCHAR);
        }
        return path;
    }
    

    AbPath@ removeNameFromPath(string path)
    {
        int endIndex = String::lastIndexOf(path, this.abPathData.SEPARATOR);
        if (endIndex < 0) {
            endIndex = String::lastIndexOf(path, this.filePathData.SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return AbPath::createAbPath();
        }
        if (int(path.length()) == endIndex + 1) {
            return this.removeNameFromPath(String::substring(path, 0, endIndex - 1));
        } else {
            string pathWithoutName = String::substring(path, 0, endIndex);
            return AbPath().jinit_AbPath(pathWithoutName, StringUtil::getInstance().EMPTY_STRING);
        }
        return null;
    }
}

namespace PathUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PathUtil().jinit_PathUtil();
    }

    PathUtil@ jcell_instance;
    PathUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PathUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    PathUtil@ getInstance()
    {
        return PathUtil::instance;
    }
}

