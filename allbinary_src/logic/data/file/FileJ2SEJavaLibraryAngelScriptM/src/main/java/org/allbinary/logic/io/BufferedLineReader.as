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

class BufferedLineReader : JObjectBase
{
    BufferedReader@ tmpIn;
    

    BufferedLineReader@ jinit_BufferedLineReader(AbFile@ file)
    {
        @this.tmpIn = BufferedReader().jinit_BufferedReader(FileReader().jinit_FileReader(AbFileNativeUtil::get(file)));
        return this;
    }
    

    void readUpToLines(int64 readAheadIndex)
    {
    }
    

    string readLine()
    {
        return this.tmpIn.readLine();
    }
    

    bool ready()
    {
        return this.tmpIn.ready();
    }
    

    int64 getSize()
    {
        return 0;
    }
    

    int getCurrent()
    {
        return 0;
    }
}

