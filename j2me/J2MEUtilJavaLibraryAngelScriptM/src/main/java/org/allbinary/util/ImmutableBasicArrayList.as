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
// package org.allbinary.util

class ImmutableBasicArrayList : BasicArrayListS
{
    string name_ImmutableBasicArrayList;
    

    ImmutableBasicArrayList@ jinit_ImmutableBasicArrayList(string name, int size)
    {
        this.jinit_BasicArrayListS(size);
        this.name_ImmutableBasicArrayList = name;
        return this;
    }
    

    bool add(JObject@ e)
    {
        ForcedLogUtil::log(this.name_ImmutableBasicArrayList, this);
        return true;
    }
    

    void addAt(int index, JObject@ element)
    {
        ForcedLogUtil::log(this.name_ImmutableBasicArrayList, this);
    }
    

    string toString()
    {
        return this.name_ImmutableBasicArrayList;
    }
}

