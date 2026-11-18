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
// package org.allbinary.logic.io.file

//Used to correct user input for paths
class FilePathUtil : JObjectBase
{
    

    FilePathUtil@ jinit_FilePathUtil()
    {
        return this;
    }
}

namespace FilePathUtil
{
    

    string adjust(string path)
    {
        AbPathData@ abPathData = AbPathData::getInstance();
        StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
        FilePathData@ filePathData = FilePathData::getInstance();
        if (stringValidationUtil.isEmpty(path)) {
            return filePathData.PATH_START;
        }
        path = String::replace(path, abPathData.SEPARATORCHAR, filePathData.SEPARATORCHAR);
        return path;
    }
}

