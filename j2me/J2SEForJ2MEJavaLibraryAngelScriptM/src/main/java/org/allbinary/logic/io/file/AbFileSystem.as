/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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

//J2SEForJ2ME
class AbFileSystem : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;

    // Java field initializers run after the super constructor
    void jfields_AbFileSystem()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    }

    AbFileSystem@ jinit_AbFileSystem()
    {
        this.jfields_AbFileSystem();
        return this;
    }
    

    bool isDirectoryOrFile(string path)
    {
        File@ file = File().jinit_File(path);
        return file.isDirectory() || file.isFile();
    }
    

    bool isDirectory(string path)
    {
        return File().jinit_File(path).isDirectory();
    }
    

    string[]@ getFilesAsStringArrayForPath(string currentDirPath)
    {
        File@ file = File().jinit_File(currentDirPath);
        if (file.exists()) {
            return file.list();
        } else {
            return StringUtil::getInstance().getArrayInstance();
        }
        return null;
    }
    

    string readAsString(string fileName)
    {
        int8[]@ bytes = array<int8>(1000000);
        return this.readAsString(fileName, bytes);
    }
    

    string readAsString(string fileName, int8[]@ bytes)
    {
        JObject@ closeable = NullUtil::getInstance().NULL_OBJECT;
        {
            Throwable@ jfinally0;
            try {
                try {
            InputStream@ idFile = FileInputStream().jinit_FileInputStream(fileName);
            @closeable = idFile;
            int size = idFile.read(bytes);
            if (size > 0) {
                return String::newString(bytes, 0, size);
            }
                } catch {
                    Throwable@ jex0 = jcatch();
                    if (cast<Exception>(jex0) !is null) {
                        Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "readAsString", e);
                    }
                    else { jthrow(jex0); }
                }
            } catch {
                @jfinally0 = jcatch();
            }
            this.close(closeable);
            if (jfinally0 !is null) { jthrow(jfinally0); }
        }
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    bool close(JObject@ closeable)
    {
        try {
            if (closeable !is null) {
                InputStream@ inputStream = (cast<InputStream>(closeable));
                inputStream.close();
            }
            return true;
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e);
            return false;
            }
            else { jthrow(jex1); }
        }
        return false;
    }
}

namespace AbFileSystem
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AbFileSystem().jinit_AbFileSystem();
    }

    AbFileSystem@ jcell_instance;
    AbFileSystem@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AbFileSystem@ value) property { jclinit(); @jcell_instance = value; }
    

    AbFileSystem@ getInstance()
    {
        return AbFileSystem::instance;
    }
    

    void main(string[]@ args)
    {
        bool isDirectory = AbFileSystem::getInstance().isDirectory("c:");
        System::out_println("isDirectory: " + jstr(isDirectory));
    }
}

