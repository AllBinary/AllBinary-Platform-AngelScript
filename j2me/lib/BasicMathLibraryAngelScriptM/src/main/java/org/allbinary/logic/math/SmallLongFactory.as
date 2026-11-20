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

class SmallLongFactory : JObjectBase
{
    int NEGATIVE_MAX;
    int POSITIVE_MAX;
    JLong@[]@ INTEGER_ARRAY_SmallLongFactory;
    string[]@ STRING_ARRAY_SmallLongFactory;
    int MIN;
    int lastMin;
    int lastNegativeMin;

    // Java field initializers run after the super constructor
    void jfields_SmallLongFactory()
    {
    this.NEGATIVE_MAX = 500;
    this.POSITIVE_MAX = 0x2D1;
    @this.INTEGER_ARRAY_SmallLongFactory = array<JLong@>(this.NEGATIVE_MAX + this.POSITIVE_MAX);
    @this.STRING_ARRAY_SmallLongFactory = array<string>(this.NEGATIVE_MAX + this.POSITIVE_MAX);
    this.MIN = 0;
    this.lastMin = 0;
    this.lastNegativeMin = 0;
    }
    

    void initWithRange(int value, int negativeValue)
    {
        for (int index = value - 1; index >= this.lastMin; index--) {
            @this.INTEGER_ARRAY_SmallLongFactory[index + this.NEGATIVE_MAX] = JLong().jinit_JLong(index);
        }
        for (int index = negativeValue - 1; index >= this.lastNegativeMin; index--) {
            @this.INTEGER_ARRAY_SmallLongFactory[index] = JLong().jinit_JLong(-index);
        }
        if (this.lastMin < value) {
            this.lastMin = value;
            this.MIN = value;
        }
        if (this.lastNegativeMin < negativeValue) {
            this.lastNegativeMin = negativeValue;
        }
    }
    

    void init()
    {
        if (this.INTEGER_ARRAY_SmallLongFactory[0] is null) {
            if (this.lastMin < this.POSITIVE_MAX || this.lastNegativeMin < this.NEGATIVE_MAX) {
                for (int index = this.POSITIVE_MAX - 1; index >= this.lastMin; index--) {
                    @this.INTEGER_ARRAY_SmallLongFactory[index + this.NEGATIVE_MAX] = JLong().jinit_JLong(index);
                }
                for (int index = this.NEGATIVE_MAX - 1; index >= this.lastNegativeMin; index--) {
                    @this.INTEGER_ARRAY_SmallLongFactory[index] = JLong().jinit_JLong(-index);
                }
                this.lastMin = this.POSITIVE_MAX;
                this.lastNegativeMin = this.NEGATIVE_MAX;
            }
        }
    }
    

    SmallLongFactory@ jinit_SmallLongFactory()
    {
        this.jfields_SmallLongFactory();
        return this;
    }
    

    JLong@ getInstanceNoThrow(int64 index)
    {
        if (index + int64(this.NEGATIVE_MAX) > int64(int(this.INTEGER_ARRAY_SmallLongFactory.length()) - 1)) {
            return this.INTEGER_ARRAY_SmallLongFactory[-1 + this.NEGATIVE_MAX];
        }
        return this.INTEGER_ARRAY_SmallLongFactory[(int(index)) + this.NEGATIVE_MAX];
    }
    

    string getString(int index)
    {
        int i = index + this.NEGATIVE_MAX;
        if (this.STRING_ARRAY_SmallLongFactory[i].isEmpty()) {
            this.STRING_ARRAY_SmallLongFactory[i] = this.INTEGER_ARRAY_SmallLongFactory[i].toString();
        }
        return this.STRING_ARRAY_SmallLongFactory[i];
    }
}

namespace SmallLongFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SmallLongFactory().jinit_SmallLongFactory();
    }

    SmallLongFactory@ jcell_instance;
    SmallLongFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SmallLongFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    SmallLongFactory@ getInstance()
    {
        return SmallLongFactory::instance;
    }
}

