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
// package org.allbinary.logic.java

class PrimitiveArrayToString : JObjectBase
{

    PrimitiveArrayToString@ jinit_PrimitiveArrayToString()
    {
        return this;
    }
}

namespace PrimitiveArrayToString
{
    

    string toString(float[]@ floats)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        for (int index = 0; index < int(floats.length()); index++) {
            stringBuffer.appendfloat(floats[index]);
        }
        return stringBuffer.toString();
    }
}

