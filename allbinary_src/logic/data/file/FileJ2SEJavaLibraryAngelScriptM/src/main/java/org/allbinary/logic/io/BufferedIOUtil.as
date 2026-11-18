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

class BufferedIOUtil : JObjectBase
{

    BufferedIOUtil@ jinit_BufferedIOUtil()
    {
        return this;
    }
}

namespace BufferedIOUtil
{
    

    void copy(AbFile@ backupFile, AbFile@ backupFileBak)
    {
        string line = StringUtil::getInstance().EMPTY_STRING;
        BufferedWriter@ tmpOut = BufferedWriter().jinit_BufferedWriter(FileWriter().jinit_FileWriter(AbFileNativeUtil::get(backupFileBak)));
        BufferedReader@ tmpIn = BufferedReader().jinit_BufferedReader(FileReader().jinit_FileReader(AbFileNativeUtil::get(backupFile)));
        while (tmpIn.ready()) {
            line = tmpIn.readLine();
            tmpOut.write(line, 0, int(line.length()));
            tmpOut.newLine();
        }
        tmpOut.flush();
    }
}

