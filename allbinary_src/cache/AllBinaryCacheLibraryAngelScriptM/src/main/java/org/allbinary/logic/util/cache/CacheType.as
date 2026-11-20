/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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

class CacheType : JObjectBase
{
    string vendor_CacheType;
    string type_CacheType;
    

    CacheType@ jinit_CacheType(string vendor, string type)
    {
        this.vendor_CacheType = vendor;
        this.type_CacheType = type;
        return this;
    }
    

    string getVendor()
    {
        return this.vendor_CacheType;
    }
    

    string getType()
    {
        return this.type_CacheType;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("CacheType: Vendor: ");
        stringBuffer.append(this.getVendor());
        stringBuffer.append(" Type: ");
        stringBuffer.append(this.getType());
        return stringBuffer.toString();
    }
}

