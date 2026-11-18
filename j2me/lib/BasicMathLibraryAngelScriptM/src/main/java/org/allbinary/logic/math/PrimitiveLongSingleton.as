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
// package org.allbinary.logic.math

class PrimitiveLongSingleton : JObjectBase
{
    uint16[]@ UNK;
    int8[]@ NUMBER_ARRAY;
    uint16[]@ NUMBER_CHAR_ARRAY;
    uint16[]@[]@ NUMBER_CHAR_ARRAYS;
    uint16[]@ ZERO;

    // Java field initializers run after the super constructor
    void jfields_PrimitiveLongSingleton()
    {
    @this.UNK = array<uint16> = {uint16('U'), uint16('n'), uint16('k')};
    @this.NUMBER_ARRAY = array<int8> = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    @this.NUMBER_CHAR_ARRAY = array<uint16> = {uint16('0'), uint16('1'), uint16('2'), uint16('3'), uint16('4'), uint16('5'), uint16('6'), uint16('7'), uint16('8'), uint16('9')};
    @this.NUMBER_CHAR_ARRAYS = array<uint16[]@> = {array<uint16> = {uint16('0')}, array<uint16> = {uint16('1')}, array<uint16> = {uint16('2')}, array<uint16> = {uint16('3')}, array<uint16> = {uint16('4')}, array<uint16> = {uint16('5')}, array<uint16> = {uint16('6')}, array<uint16> = {uint16('7')}, array<uint16> = {uint16('8')}, array<uint16> = {uint16('9')}};
    @this.ZERO = array<uint16> = {this.NUMBER_CHAR_ARRAY[0]};
    }

    PrimitiveLongSingleton@ jinit_PrimitiveLongSingleton()
    {
        this.jfields_PrimitiveLongSingleton();
        return this;
    }
    

    int8 getNumberFromChar(uint16 numberAsChar)
    {
        int size = int(this.NUMBER_CHAR_ARRAY.length());
        for (int index = 0; index < size; index++) {
            if (this.NUMBER_CHAR_ARRAY[index] == numberAsChar) {
                return this.NUMBER_ARRAY[index];
            }
        }
        jthrow(Exception().jinit_Exception(StringMaker().jinit_StringMaker().append("numberAsChar was not in array: ").appendchar(numberAsChar).toString()));
        return 0;
    }
}

namespace PrimitiveLongSingleton
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PrimitiveLongSingleton().jinit_PrimitiveLongSingleton();
    }

    PrimitiveLongSingleton@ jcell_instance;
    PrimitiveLongSingleton@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PrimitiveLongSingleton@ value) property { jclinit(); @jcell_instance = value; }
    

    PrimitiveLongSingleton@ getInstance()
    {
        return PrimitiveLongSingleton::instance;
    }
}

