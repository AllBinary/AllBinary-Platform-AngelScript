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
// package org.allbinary.logic.control.validate

class ValidatorBase : JObjectBase, ValidatorBaseInterface
{
    

    ValidatorBase@ jinit_ValidatorBase()
    {
        return this;
    }
    

    JBoolean@ isValid()
    {
        return BooleanFactory::getInstance().TRUE;
    }
    

    string validationInfo()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    ABHashtable@ toHashtable()
    {
        return StdUtil::getInstance().NULL_TABLE;
    }
    

    BasicArrayList@ toList()
    {
        return BasicArrayListUtil::getInstance().getImmutableInstance();
    }
}

namespace ValidatorBase
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ValidatorBase().jinit_ValidatorBase();
    }

    ValidatorBase@ jcell_instance;
    ValidatorBase@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ValidatorBase@ value) property { jclinit(); @jcell_instance = value; }
    

    ValidatorBase@ getInstance()
    {
        return ValidatorBase::instance;
    }
}

