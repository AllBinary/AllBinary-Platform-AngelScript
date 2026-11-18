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
// package org.allbinary.logic.math.permutations

class OrderedObjectArrayPermutationUtil : JObjectBase
{
    string TOTAL_ITERATIONS_TABLE;
    string FINISHED;

    // Java field initializers run after the super constructor
    void jfields_OrderedObjectArrayPermutationUtil()
    {
    this.TOTAL_ITERATIONS_TABLE = "Total Iterations: ";
    this.FINISHED = "\nFINISHED";
    }
    

    OrderedObjectArrayPermutationUtil@ jinit_OrderedObjectArrayPermutationUtil()
    {
        this.jfields_OrderedObjectArrayPermutationUtil();
        return this;
    }
    

    void getNext(JObject@[]@ data)
    {
        int length = int(data.length());
        int i = length - 1;
        TsUtil@ tsUtil = TsUtil::getInstance();
        while (tsUtil.hashCode(data[i - 1]) >= tsUtil.hashCode(data[i])) {
            i = i - 1;
        }
        int j = length;
        while (tsUtil.hashCode(data[j - 1]) <= tsUtil.hashCode(data[i - 1])) {
            j = j - 1;
        }
        this.swap(data, i - 1, j - 1);
        i++;
        j = length;
        while (i < j) {
            this.swap(data, i - 1, j - 1);
            i++;
            j--;
        }
    }
    

    void swap(JObject@[]@ data, int a, int b)
    {
        JObject@ temp = data[a];
        @data[a] = data[b];
        @data[b] = temp;
    }
    

    int64 factorial(int dataLength)
    {
        int64 temp = 1;
        if (dataLength > 1) {
            for (int i = 1; i <= dataLength; i++) {
                temp *= int64(i);
            }
        }
        return temp;
    }
    

    void generate(JObject@[]@ data, Visitor@ visitor)
    {
        int64 iterations = this.factorial(int(data.length()));
        System::out_print(this.TOTAL_ITERATIONS_TABLE);
        System::out_println(jstr(iterations));
        for (int64 count = 0; count < iterations - 1; count++) {
            this.getNext(data);
            visitor.visit(this);
        }
        System::out_println(this.FINISHED);
    }
}

namespace OrderedObjectArrayPermutationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OrderedObjectArrayPermutationUtil().jinit_OrderedObjectArrayPermutationUtil();
    }

    OrderedObjectArrayPermutationUtil@ jcell_instance;
    OrderedObjectArrayPermutationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OrderedObjectArrayPermutationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    OrderedObjectArrayPermutationUtil@ getInstance()
    {
        return OrderedObjectArrayPermutationUtil::instance;
    }
    

    void main(string[]@ args)
    {
        int TOTAL = 7;
        JObject@[]@ data = array<JObject@>(TOTAL);
        for (int i = 0; i < TOTAL; i++) {
            @data[i] = ComparableObject().jinit_ComparableObject();
        }
        Arrays::sort(data);
        ObjectPermutationVisitor@ permutationVisitor = ObjectPermutationVisitor().jinit_ObjectPermutationVisitor(data);
        string ORIGINAL_DATA_LABEL = "Original Data: ";
        System::out_print(ORIGINAL_DATA_LABEL);
        permutationVisitor.visit(jbox(data));
        OrderedObjectArrayPermutationUtil::getInstance().generate(data, permutationVisitor);
    }
}

