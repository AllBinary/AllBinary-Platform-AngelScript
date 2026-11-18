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
// package org.allbinary.game.rand

//Do not use in client code for money related things.
class MyRandomFactory : JObjectBase
{
    MathUtil@ mathUtil;
    Random@ rand;

    // Java field initializers run after the super constructor
    void jfields_MyRandomFactory()
    {
    @this.mathUtil = MathUtil::getInstance();
    
    }
    

    MyRandomFactory@ jinit_MyRandomFactory()
    {
        this.jfields_MyRandomFactory();
        @this.rand = Random().jinit_Random(System::currentTimeMillis());
        return this;
    }
    

    void setSeed(int64 seed)
    {
        @this.rand = Random().jinit_Random(seed);
    }
    

    int getNextInt(int range)
    {
        int div = (Integer::MAX_VALUE / range) + 1;
        return (this.rand.nextInt() / div);
    }
    

    int getAbsoluteNextInt(int range)
    {
        return this.mathUtil.abs(this.getNextInt(range));
    }
    

    int getAbsoluteNextIntAllowZero(int range)
    {
        if (range == 0) {
            return 0;
        } else {
            return this.mathUtil.abs(this.getNextInt(range));
        }
        return 0;
    }
    

    void shuffle(int[]@ intArray)
    {
        this.shuffleTotal(intArray, int(intArray.length()) * 7);
    }
    

    void shuffleTotal(int[]@ intArray, int shuffleTotal)
    {
        int size = int(intArray.length());
        int randomIndex = 0;
        int randomIndex2 = 0;
        int value = 0;
        for (int index = 0; index < shuffleTotal; index++) {
            randomIndex = this.getAbsoluteNextIntAllowZero(size);
            randomIndex2 = this.getAbsoluteNextIntAllowZero(size);
            value = intArray[randomIndex];
            intArray[randomIndex] = intArray[randomIndex2];
            intArray[randomIndex2] = value;
        }
    }
    

    void shuffle2(int[]@ intArray, int[]@ intArray2)
    {
        this.shuffle2Total(intArray, intArray2, int(intArray.length()) * 7);
    }
    

    void shuffle2Total(int[]@ intArray, int[]@ intArray2, int shuffleTotal)
    {
        int size = int(intArray.length());
        int randomIndex = 0;
        int randomIndex2 = 0;
        int value = 0;
        int value2 = 0;
        for (int index = 0; index < shuffleTotal; index++) {
            randomIndex = this.getAbsoluteNextIntAllowZero(size);
            randomIndex2 = this.getAbsoluteNextIntAllowZero(size);
            value = intArray[randomIndex];
            value2 = intArray2[randomIndex];
            intArray[randomIndex] = intArray[randomIndex2];
            intArray[randomIndex2] = value;
            intArray2[randomIndex] = intArray2[randomIndex2];
            intArray2[randomIndex2] = value2;
        }
    }
}

namespace MyRandomFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MyRandomFactory().jinit_MyRandomFactory();
    }

    MyRandomFactory@ jcell_instance;
    MyRandomFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MyRandomFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    MyRandomFactory@ getInstance()
    {
        return MyRandomFactory::instance;
    }
    

    void main(string[]@ args)
    {
        MyRandomFactory@ randomFactory = MyRandomFactory::getInstance();
        StringMaker@ stringBuilder = StringMaker().jinit_StringMaker();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        int size2 = 100;
        for (int index = 0; index < size2; index++) {
            stringBuilder.appendint(randomFactory.getAbsoluteNextInt(3)).append(commonSeps.COMMA);
        }
        System::out_println(stringBuilder.toString());
        stringBuilder.delete(0, stringBuilder.length());
        int[]@ intArray = array<int>(52);
        int[]@ intArray2 = array<int>(52);
        int size = int(intArray.length());
        for (int index = 0; index < size; index++) {
            intArray[index] = index;
            intArray2[index] = index;
        }
        randomFactory.shuffle2(intArray, intArray2);
        for (int index = 0; index < size; index++) {
            stringBuilder.appendint(intArray[index]).append(commonSeps.COMMA);
        }
        System::out_println(stringBuilder.toString());
        stringBuilder.delete(0, stringBuilder.length());
        for (int index = 0; index < size; index++) {
            stringBuilder.appendint(intArray2[index]).append(commonSeps.COMMA);
        }
        System::out_println(stringBuilder.toString());
        bool found = false;
        for (int index = 0; index < size; index++) {
            found = false;
            for (int index2 = 0; index2 < size; index2++) {
                if (intArray[index2] == index) {
                    found = true;
                }
            }
            if (!found) {
                jthrow(RuntimeException().jinit_RuntimeException());
            }
        }
    }
}

