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

class OrderedIntArrayPermutationUtil : JObjectBase
{
    string TOTAL_ITERATIONS_TABLE_OrderedIntArrayPermutationUtil;
    string FINISHED_OrderedIntArrayPermutationUtil;

    // Java field initializers run after the super constructor
    void jfields_OrderedIntArrayPermutationUtil()
    {
    this.TOTAL_ITERATIONS_TABLE_OrderedIntArrayPermutationUtil = "Total Iterations: ";
    this.FINISHED_OrderedIntArrayPermutationUtil = "\nFINISHED";
    }
    

    OrderedIntArrayPermutationUtil@ jinit_OrderedIntArrayPermutationUtil()
    {
        this.jfields_OrderedIntArrayPermutationUtil();
        return this;
    }
    

    void getNext(int[]@ data)
    {
        int length = int(data.length());
        int i = length - 1;
        while (data[i - 1] >= data[i]) {
            i = i - 1;
        }
        int j = length;
        while (data[j - 1] <= data[i - 1]) {
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
    

    void swap(int[]@ data, int a, int b)
    {
        int temp = data[a];
        data[a] = data[b];
        data[b] = temp;
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
    

    void generate(int[]@ data, Visitor@ visitor)
    {
        int64 iterations = this.factorial(int(data.length()));
        System::out_print(this.TOTAL_ITERATIONS_TABLE_OrderedIntArrayPermutationUtil);
        System::out_println(jstr(iterations));
        for (int64 count = 0; count < iterations - 1; count++) {
            this.getNext(data);
            visitor.visit(this);
        }
        System::out_println(this.FINISHED_OrderedIntArrayPermutationUtil);
    }
}

namespace OrderedIntArrayPermutationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = OrderedIntArrayPermutationUtil().jinit_OrderedIntArrayPermutationUtil();
    }

    OrderedIntArrayPermutationUtil@ jcell_instance;
    OrderedIntArrayPermutationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(OrderedIntArrayPermutationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    OrderedIntArrayPermutationUtil@ getInstance()
    {
        return OrderedIntArrayPermutationUtil::instance;
    }
    

    void main(string[]@ args)
    {
        int TOTAL = 3;
        int[]@ data = array<int>(TOTAL);
        for (int i = 0; i < TOTAL; i++) {
            data[i] = i;
        }
        IntPermutationVisitor@ permutationVisitor = IntPermutationVisitor().jinit_IntPermutationVisitor(data);
        string ORIGINAL_DATA_LABEL = "Original Data: ";
        System::out_print(ORIGINAL_DATA_LABEL);
        permutationVisitor.print(data, StringMaker().jinit_StringMaker());
        OrderedIntArrayPermutationUtil::getInstance().generate(data, permutationVisitor);
    }
}

