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

class SmallIntegerSingletonFactory : JObjectBase
{
    int NEGATIVE_MAX;
    int POSITIVE_MAX;
    JInteger@[]@ INTEGER_ARRAY_SmallIntegerSingletonFactory;
    string[]@ STRING_ARRAY_SmallIntegerSingletonFactory;
    int MIN_SmallIntegerSingletonFactory;
    int lastMin_SmallIntegerSingletonFactory;
    int lastNegativeMin_SmallIntegerSingletonFactory;

    // Java field initializers run after the super constructor
    void jfields_SmallIntegerSingletonFactory()
    {
    this.NEGATIVE_MAX = 500;
    this.POSITIVE_MAX = 0x2D1;
    @this.INTEGER_ARRAY_SmallIntegerSingletonFactory = array<JInteger@>(this.NEGATIVE_MAX + this.POSITIVE_MAX);
    @this.STRING_ARRAY_SmallIntegerSingletonFactory = array<string>(this.NEGATIVE_MAX + this.POSITIVE_MAX);
    this.MIN_SmallIntegerSingletonFactory = 0;
    this.lastMin_SmallIntegerSingletonFactory = 0;
    this.lastNegativeMin_SmallIntegerSingletonFactory = 0;
    }
    

    int getMin()
    {
        int minAllowed = this.getMinAllowed();
        if (this.MIN_SmallIntegerSingletonFactory <= minAllowed) {
            if (J2MEUtil::isJ2ME()) {
            } else if (AndroidUtil::isAndroid()) {
                LogUtil@ logUtil = LogUtil::getInstance();
                logUtil.putF(StringMaker().jinit_StringMaker().append("Android InputFactory was initialized before GameMidlet: ").appendint(this.MIN_SmallIntegerSingletonFactory).toString(), this, "getMin");
                this.initWithRange(0x291, 6);
            } else {
                LogUtil@ logUtil = LogUtil::getInstance();
                logUtil.putF(StringMaker().jinit_StringMaker().append("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ").appendint(this.MIN_SmallIntegerSingletonFactory).toString(), this, "getMin");
                this.initWithRange(0x2D0, 6);
            }
        }
        if (this.MIN_SmallIntegerSingletonFactory <= minAllowed) {
            LogUtil@ logUtil = LogUtil::getInstance();
            logUtil.put("This means you loaded the InputFactory before determining the platform input size requirements.", this, "getMin", Exception().jinit_Exception());
        }
        return this.MIN_SmallIntegerSingletonFactory;
    }
    

    int getMinAllowed()
    {
        if (J2MEUtil::isJ2ME()) {
            return 0;
        } else {
            if (AndroidUtil::isAndroid()) {
                return 0x101;
            } else {
                return 23;
            }
        }
        return 0;
    }
    

    void initWithRange(int value, int negativeValue)
    {
        for (int index = value - 1; index >= this.lastMin_SmallIntegerSingletonFactory; index--) {
            @this.INTEGER_ARRAY_SmallIntegerSingletonFactory[index + this.NEGATIVE_MAX] = JInteger().jinit_JInteger(index);
        }
        for (int index = negativeValue - 1; index >= this.lastNegativeMin_SmallIntegerSingletonFactory; index--) {
            @this.INTEGER_ARRAY_SmallIntegerSingletonFactory[index] = JInteger().jinit_JInteger(-index);
        }
        if (this.lastMin_SmallIntegerSingletonFactory < value) {
            this.lastMin_SmallIntegerSingletonFactory = value;
            this.MIN_SmallIntegerSingletonFactory = value;
        }
        if (this.lastNegativeMin_SmallIntegerSingletonFactory < negativeValue) {
            this.lastNegativeMin_SmallIntegerSingletonFactory = negativeValue;
        }
    }
    

    void init()
    {
        if (this.lastMin_SmallIntegerSingletonFactory < this.POSITIVE_MAX || this.lastNegativeMin_SmallIntegerSingletonFactory < this.NEGATIVE_MAX) {
            for (int index = this.POSITIVE_MAX - 1; index >= this.lastMin_SmallIntegerSingletonFactory; index--) {
                @this.INTEGER_ARRAY_SmallIntegerSingletonFactory[index + this.NEGATIVE_MAX] = JInteger().jinit_JInteger(index);
            }
            for (int index = this.NEGATIVE_MAX - 1; index >= this.lastNegativeMin_SmallIntegerSingletonFactory; index--) {
                @this.INTEGER_ARRAY_SmallIntegerSingletonFactory[index] = JInteger().jinit_JInteger(-index);
            }
            this.lastMin_SmallIntegerSingletonFactory = this.POSITIVE_MAX;
            this.MIN_SmallIntegerSingletonFactory = this.lastMin_SmallIntegerSingletonFactory;
            this.lastNegativeMin_SmallIntegerSingletonFactory = this.NEGATIVE_MAX;
        }
    }
    

    SmallIntegerSingletonFactory@ jinit_SmallIntegerSingletonFactory()
    {
        this.jfields_SmallIntegerSingletonFactory();
        this.initWithRange(23, 0);
        return this;
    }
    

    JInteger@ getAt(int index)
    {
        return this.INTEGER_ARRAY_SmallIntegerSingletonFactory[index + this.NEGATIVE_MAX];
    }
    

    JInteger@ getAtNoThrow(int index)
    {
        if (index + this.NEGATIVE_MAX > int(this.INTEGER_ARRAY_SmallIntegerSingletonFactory.length()) - 1) {
            return this.INTEGER_ARRAY_SmallIntegerSingletonFactory[-1 + this.NEGATIVE_MAX];
        }
        return this.INTEGER_ARRAY_SmallIntegerSingletonFactory[index + this.NEGATIVE_MAX];
    }
    

    JInteger@ createInstance(int index)
    {
        JInteger@ integer = this.getAt(index);
        if (integer is null) {
            @integer = JInteger().jinit_JInteger(index);
        }
        return integer;
    }
    

    string getString(int index)
    {
        int i = index + this.NEGATIVE_MAX;
        if (this.STRING_ARRAY_SmallIntegerSingletonFactory[i].isEmpty()) {
            this.STRING_ARRAY_SmallIntegerSingletonFactory[i] = this.INTEGER_ARRAY_SmallIntegerSingletonFactory[i].toString();
        }
        return this.STRING_ARRAY_SmallIntegerSingletonFactory[i];
    }
}

namespace SmallIntegerSingletonFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SmallIntegerSingletonFactory().jinit_SmallIntegerSingletonFactory();
    }

    SmallIntegerSingletonFactory@ jcell_instance;
    SmallIntegerSingletonFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SmallIntegerSingletonFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    SmallIntegerSingletonFactory@ getInstance()
    {
        return SmallIntegerSingletonFactory::instance;
    }
}

