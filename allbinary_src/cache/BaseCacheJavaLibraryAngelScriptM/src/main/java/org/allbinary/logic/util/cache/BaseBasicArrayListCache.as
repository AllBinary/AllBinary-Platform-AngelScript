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
// package org.allbinary.logic.util.cache

class BaseBasicArrayListCache : JObjectBase
{
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_BaseBasicArrayListCache()
    {
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }

    BaseBasicArrayListCache@ jinit_BaseBasicArrayListCache()
    {
        this.jfields_BaseBasicArrayListCache();
        return this;
    }
    

    string log()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("S: ");
        stringBuffer.appendint(this.list.size());
        return stringBuffer.toString();
    }
}

