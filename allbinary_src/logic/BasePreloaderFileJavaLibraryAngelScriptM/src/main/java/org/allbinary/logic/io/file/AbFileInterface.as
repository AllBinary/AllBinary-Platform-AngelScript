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

interface AbFileInterface : JObject
{
    bool canRead();
    bool canWrite();
    bool createNewFile();
    bool delete();
    void deleteOnExit();
    bool exists();
    string getAbsolutePath();
    string getCanonicalPath();
    string getParent();
    string getPath();
    bool isAbsolute();
    bool isDirectory();
    bool isFile();
    bool isHidden();
    int64 lastModified();
    int64 length();
    string[]@ list();
    string[]@ listWithFilter(FilenameFilter@ filter);
    bool mkdir();
    bool mkdirs();
    bool setLastModified(int64 time);
    bool setReadOnly();
    string toString();
    URI@ toURI();
}

