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
// package org.allbinary.logic.java.bool

class BooleanFactory : JObjectBase
{
    JBoolean@ TRUE;
    JBoolean@ FALSE;
    string TRUE_STRING;
    string FALSE_STRING;
    string YES;
    string NO;

    // Java field initializers run after the super constructor
    void jfields_BooleanFactory()
    {
    @this.TRUE = JBoolean().jinit_JBoolean(true);
    @this.FALSE = JBoolean().jinit_JBoolean(false);
    this.TRUE_STRING = this.TRUE.toString();
    this.FALSE_STRING = this.FALSE.toString();
    this.YES = "yes";
    this.NO = "no";
    }

    BooleanFactory@ jinit_BooleanFactory()
    {
        this.jfields_BooleanFactory();
        return this;
    }
    

    string toStringb(bool bool_)
    {
        if (bool_) {
            return this.TRUE_STRING;
        } else {
            return this.FALSE_STRING;
        }
        return "";
    }
}

namespace BooleanFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BooleanFactory().jinit_BooleanFactory();
    }

    BooleanFactory@ jcell_instance;
    BooleanFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BooleanFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    BooleanFactory@ getInstance()
    {
        return BooleanFactory::instance;
    }
}

