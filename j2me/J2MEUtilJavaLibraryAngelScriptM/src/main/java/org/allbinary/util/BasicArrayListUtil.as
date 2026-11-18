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
// package org.allbinary.util

class BasicArrayListUtil : JObjectBase
{
    BasicArrayList@[]@[]@ NULL_ARRAY_OF_ARRAY;
    MyRandomFactory@ myRandomFactory;
    BasicArrayList@ immutableInstance;

    // Java field initializers run after the super constructor
    void jfields_BasicArrayListUtil()
    {
    @this.NULL_ARRAY_OF_ARRAY = BasicArrayListUtil::jnewArray2_BasicArrayList(0, 0);
    @this.myRandomFactory = MyRandomFactory::getInstance();
    @this.immutableInstance = ImmutableBasicArrayList().jinit_ImmutableBasicArrayList("Immutable", 0);
    }

    BasicArrayListUtil@ jinit_BasicArrayListUtil()
    {
        this.jfields_BasicArrayListUtil();
        return this;
    }
    

    JObject@ getRandom(BasicArrayList@ list)
    {
        int i_random = this.getRandomIndex(list);
        return list.objectArray[i_random];
    }
    

    int getRandomIndex(BasicArrayList@ list)
    {
        return this.myRandomFactory.getAbsoluteNextInt(list.size());
    }
    

    void reverse(BasicArrayList@ list)
    {
        int lastMinusOneIndex = list.size() - 2;
        JObject@ temp;
        int size = lastMinusOneIndex / 2;
        int secondSwapIndex = 0;
        for (int index = 0; index <= size; index++) {
            secondSwapIndex = lastMinusOneIndex - index;
            @temp = list.removeAt(index);
            list.addAt(index, list.removeAt(secondSwapIndex));
            list.addAt(secondSwapIndex + 1, temp);
        }
    }
    

    string log(BasicArrayList@ list)
    {
        string S_LABEL = " s: ";
        int size = list.size();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(CommonLabels::getInstance().TOTAL_LABEL);
        stringBuffer.appendint(size);
        for (int index = size - 1; index >= 0; index--) {
            BasicArrayList@ usedList = cast<BasicArrayList>(list.objectArray[index]);
            stringBuffer.append(S_LABEL);
            stringBuffer.appendint(usedList.size());
        }
        return stringBuffer.toString();
    }
    

    BasicArrayList@ getImmutableInstance()
    {
        return this.immutableInstance;
    }
}

namespace BasicArrayListUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BasicArrayListUtil().jinit_BasicArrayListUtil();
    }

    BasicArrayListUtil@ jcell_instance;
    BasicArrayListUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BasicArrayListUtil@ value) property { jclinit(); @jcell_instance = value; }

    BasicArrayList@[]@[]@ jnewArray2_BasicArrayList(int a, int b)
    {
        BasicArrayList@[]@[]@ result = array<BasicArrayList@[]@>(a);
        for (int i = 0; i < a; i++) { @result[i] = array<BasicArrayList@>(b); }
        return result;
    }
    

    BasicArrayListUtil@ getInstance()
    {
        return BasicArrayListUtil::instance;
    }
    

    void main(string[]@ args)
    {
        CommonPhoneStrings@ commonPhoneStrings = CommonPhoneStrings::getInstance();
        BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
        list.add(jbox(commonPhoneStrings.ONE));
        list.add(jbox(commonPhoneStrings.TWO));
        list.add(jbox(commonPhoneStrings.THREE));
        list.add(jbox(commonPhoneStrings.FOUR));
        list.add(jbox(commonPhoneStrings.FIVE));
        list.add(jbox(commonPhoneStrings.SIX));
        list.add(jbox(commonPhoneStrings.SEVEN));
        list.add(jbox(commonPhoneStrings.EIGHT));
        list.add(jbox(commonPhoneStrings.NINE));
        BasicArrayListUtil::getInstance().reverse(list);
        System::out_println(list.toString());
    }
}

