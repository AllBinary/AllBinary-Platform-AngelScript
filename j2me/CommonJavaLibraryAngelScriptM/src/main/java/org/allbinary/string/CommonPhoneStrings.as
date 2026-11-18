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
// package org.allbinary.string

class CommonPhoneStrings : JObjectBase
{
    string UP;
    string DOWN;
    string LEFT;
    string RIGHT;
    string ZERO;
    string ONE;
    string TWO;
    string THREE;
    string FOUR;
    string FIVE;
    string SIX;
    string SEVEN;
    string EIGHT;
    string NINE;
    string POUND;
    string STAR;
    string FIRE;

    // Java field initializers run after the super constructor
    void jfields_CommonPhoneStrings()
    {
    this.UP = "UP";
    this.DOWN = "DOWN";
    this.LEFT = "LEFT";
    this.RIGHT = "RIGHT";
    this.ZERO = "0";
    this.ONE = "1";
    this.TWO = "2";
    this.THREE = "3";
    this.FOUR = "4";
    this.FIVE = "5";
    this.SIX = "6";
    this.SEVEN = "7";
    this.EIGHT = "8";
    this.NINE = "9";
    this.POUND = "#";
    this.STAR = "*";
    this.FIRE = "FIRE";
    }

    CommonPhoneStrings@ jinit_CommonPhoneStrings()
    {
        this.jfields_CommonPhoneStrings();
        return this;
    }
}

namespace CommonPhoneStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CommonPhoneStrings().jinit_CommonPhoneStrings();
    }

    CommonPhoneStrings@ jcell_instance;
    CommonPhoneStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CommonPhoneStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    CommonPhoneStrings@ getInstance()
    {
        return CommonPhoneStrings::instance;
    }
}

