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
// package org.allbinary.util

class BasicArrayListS : BasicArrayList
{
    

    BasicArrayListS@ jinit_BasicArrayListS(int size)
    {
        this.jinit_BasicArrayList(NullUtil::getInstance().NULL_OBJECT_ARRAY);
        if (size < 0) {
            jthrow(IllegalArgumentException().jinit_IllegalArgumentException(StringMaker().jinit_StringMaker().append("Init Size Exception: ").appendint(size).toString()));
        }
        @this.objectArray = array<JObject@>(size);
        return this;
    }
}

