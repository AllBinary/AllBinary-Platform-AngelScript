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

class AbFileInputStream : FileInputStream
{
    

    AbFileInputStream@ jinit_AbFileInputStream(string name)
    {
        this.jinit_FileInputStream(name);
        return this;
    }
}

namespace AbFileInputStream
{
    

    AbFileInputStream@ createFromAbFile(AbFile@ file)
    {
        return AbFileInputStream().jinit_AbFileInputStream(AbFileNativeUtil::get(file).getPath());
    }
    

    AbFileInputStream@ createFromFile(File@ file)
    {
        return AbFileInputStream().jinit_AbFileInputStream(file.getPath());
    }
}

