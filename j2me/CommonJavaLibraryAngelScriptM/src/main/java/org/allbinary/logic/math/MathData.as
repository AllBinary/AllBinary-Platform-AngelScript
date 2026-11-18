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

class MathData : JObjectBase
{
    string EQUALS;
    string PLUS;
    string GREATER_THAN;
    string MINUS;
    string DIVIDE;
    string MULTIPLY;

    // Java field initializers run after the super constructor
    void jfields_MathData()
    {
    
    this.PLUS = "+";
    this.GREATER_THAN = ">";
    
    
    
    }
    

    MathData@ jinit_MathData()
    {
        this.jfields_MathData();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        this.EQUALS = commonSeps.EQUALS;
        this.MINUS = commonSeps.DASH;
        this.DIVIDE = commonSeps.FORWARD_SLASH;
        this.MULTIPLY = CommonPhoneStrings::getInstance().STAR;
        return this;
    }
}

namespace MathData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MathData().jinit_MathData();
    }

    MathData@ jcell_instance;
    MathData@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MathData@ value) property { jclinit(); @jcell_instance = value; }
    

    MathData@ getInstance()
    {
        return MathData::instance;
    }
}

