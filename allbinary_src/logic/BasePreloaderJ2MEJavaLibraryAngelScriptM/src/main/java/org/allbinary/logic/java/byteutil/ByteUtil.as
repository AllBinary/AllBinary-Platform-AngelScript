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
// package org.allbinary.logic.java.byteutil

class ByteUtil : JObjectBase
{
    

    ByteUtil@ jinit_ByteUtil()
    {
        return this;
    }
    

    int8[]@ xor_(int8[]@ array_, int8 mask)
    {
        int8[]@ bytes = array<int8>(int(array_.length()));
        int size = int(array_.length());
        int index = 0;
        int8 currentByte = 0;
        while (index < size) {
            currentByte = array_[index];
            bytes[index] = int8((currentByte ^ mask));
            index++;
        }
        return bytes;
    }
    

    int8[]@ not_(int8[]@ array_)
    {
        int8[]@ bytes = array<int8>(int(array_.length()));
        int size = int(array_.length());
        int index = 0;
        while (index < size) {
            bytes[index] = int8(~array_[index]);
            index++;
        }
        return bytes;
    }
    

    int8[]@ xorByte(int8[]@ array_, int index)
    {
        int8 mask = 0;
        if (index == 0) {
            mask = 1;
        }
        if (index == 1) {
            mask = 2;
        }
        if (index == 2) {
            mask = 4;
        }
        if (index == 3) {
            mask = 8;
        }
        if (index == 4) {
            mask = 16;
        }
        if (index == 5) {
            mask = 32;
        }
        if (index == 6) {
            mask = 64;
        }
        if (index == 7) {
            mask = int8(-127);
        }
        return this.xor_(array_, mask);
    }
    

    bool compare(int8[]@ newByteArray, int8[]@ oldByteArray)
    {
        if (int(newByteArray.length()) != int(oldByteArray.length())) {
            return false;
        } else {
        }
        int size = int(newByteArray.length());
        for (int index = 0; index < size; index++) {
            if (newByteArray[index] != oldByteArray[index]) {
                return false;
            }
        }
        return true;
    }
    

    bool compareWithStats(int8[]@ newByteArray, int newSize, int8[]@ oldByteArray, int[]@ stats)
    {
        if (newSize != int(oldByteArray.length())) {
            stats[0] = -1;
            stats[2] = newSize;
            stats[3] = int(oldByteArray.length());
            return false;
        } else {
            stats[0] = newSize;
        }
        stats[1] = 0;
        int size = newSize;
        for (int index = 0; index < size; index++) {
            if (newByteArray[index] != oldByteArray[index]) {
                return false;
            }
            stats[1]++;
        }
        return true;
    }
}

namespace ByteUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ByteUtil().jinit_ByteUtil();
    }

    ByteUtil@ jcell_instance;
    ByteUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ByteUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ByteUtil@ getInstance()
    {
        return ByteUtil::instance;
    }
}

