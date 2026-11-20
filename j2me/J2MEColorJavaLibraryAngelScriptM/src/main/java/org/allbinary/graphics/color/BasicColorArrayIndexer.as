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
    BasicColor@[]@ basicColorArray_BasicColorArrayIndexer;
    CircularIndexUtil@ circularIndexUtil_BasicColorArrayIndexer;
    

    BasicColorArrayIndexer@ jinit_BasicColorArrayIndexer(BasicColor@[]@ basicColorArray)
    {
        @this.basicColorArray_BasicColorArrayIndexer = basicColorArray;
        @this.circularIndexUtil_BasicColorArrayIndexer = CircularIndexUtil::createInstance(int(this.basicColorArray_BasicColorArrayIndexer.length()));
        return this;
    }
    

    void next()
    {
        this.circularIndexUtil_BasicColorArrayIndexer.next();
    }
    

    BasicColor@ get()
    {
        return this.basicColorArray_BasicColorArrayIndexer[this.circularIndexUtil_BasicColorArrayIndexer.getIndex()];
    }
    

    BasicColor@[]@ getBasicColorArray()
    {
        return this.basicColorArray_BasicColorArrayIndexer;
    }
}

