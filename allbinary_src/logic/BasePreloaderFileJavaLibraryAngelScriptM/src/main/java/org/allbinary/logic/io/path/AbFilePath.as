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

class AbFilePath : AbPath
{
    

    AbFilePath@ jinit_AbFilePath(string aPath)
    {
        this.jinit_AbPath(StringUtil::getInstance().EMPTY_STRING, StringUtil::getInstance().EMPTY_STRING);
        AbPathData@ pathData = AbPathData::getInstance();
        PathUtil@ abPathUtil = PathUtil::getInstance();
        this.schema = this.getSchema(aPath);
        this.setName(pathData.getNameFromPath(aPath));
        this.setPath(abPathUtil.adjust(this.getPathFromPath(abPathUtil.removeNameFromPath(aPath).toString())));
        return this;
    }
}

