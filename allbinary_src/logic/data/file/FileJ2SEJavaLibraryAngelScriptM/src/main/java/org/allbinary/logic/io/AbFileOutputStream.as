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
// package org.allbinary.logic.io

class AbFileOutputStream : FileOutputStream
{
    

    AbFileOutputStream@ jinit_AbFileOutputStream(string name, bool append)
    {
        this.jinit_FileOutputStream(name, append);
        return this;
    }
}

namespace AbFileOutputStream
{
    

    AbFileOutputStream@ createFromAbFile(AbFile@ file)
    {
        return AbFileOutputStream().jinit_AbFileOutputStream(file.getPath(), false);
    }
    

    AbFileOutputStream@ createFromAbFileAppend(AbFile@ file, bool append)
    {
        return AbFileOutputStream().jinit_AbFileOutputStream(file.getPath(), append);
    }
    

    AbFileOutputStream@ createFromFilePath(string name)
    {
        return AbFileOutputStream().jinit_AbFileOutputStream(name, false);
    }
    

    AbFileOutputStream@ createFromFilePathAppend(string name, bool append)
    {
        return AbFileOutputStream().jinit_AbFileOutputStream(name, append);
    }
}

