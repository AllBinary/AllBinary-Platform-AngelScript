/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic

//ActualPlatform
class StdUtil : JObjectBase
{
    ABVector@ EMPTY_VECTOR;
    ABHashtable@ NULL_TABLE;
    ABHashMap@ NULL_MAP;

    // Java field initializers run after the super constructor
    void jfields_StdUtil()
    {
    @this.EMPTY_VECTOR = this.createVector();
    @this.NULL_TABLE = this.createHashtable();
    @this.NULL_MAP = this.createHashMap();
    }

    StdUtil@ jinit_StdUtil()
    {
        this.jfields_StdUtil();
        return this;
    }
    

    ABStack@ createStack()
    {
        return ABStack().jinit_ABStack();
    }
    

    ABVector@ createVector()
    {
        return ABVector().jinit_ABVector();
    }
    

    ABHashtable@ createHashtable()
    {
        return ABHashtable().jinit_ABHashtable();
    }
    

    ABHashMap@ createHashMap()
    {
        return ABHashMap().jinit_ABHashMap();
    }
}

namespace StdUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = StdUtil().jinit_StdUtil();
    }

    StdUtil@ jcell_instance;
    StdUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(StdUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    StdUtil@ getInstance()
    {
        return StdUtil::instance;
    }
}

