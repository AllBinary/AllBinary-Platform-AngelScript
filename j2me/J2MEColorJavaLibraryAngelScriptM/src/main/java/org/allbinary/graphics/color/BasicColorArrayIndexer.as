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
// package org.allbinary.graphics.color

class BasicColorArrayIndexer : JObjectBase
{
    BasicColor@[]@ basicColorArray;
    CircularIndexUtil@ circularIndexUtil;
    

    BasicColorArrayIndexer@ jinit_BasicColorArrayIndexer(BasicColor@[]@ basicColorArray)
    {
        @this.basicColorArray = basicColorArray;
        @this.circularIndexUtil = CircularIndexUtil::createInstance(int(this.basicColorArray.length()));
        return this;
    }
    

    void next()
    {
        this.circularIndexUtil.next();
    }
    

    BasicColor@ get()
    {
        return this.basicColorArray[this.circularIndexUtil.getIndex()];
    }
    

    BasicColor@[]@ getBasicColorArray()
    {
        return this.basicColorArray;
    }
}

