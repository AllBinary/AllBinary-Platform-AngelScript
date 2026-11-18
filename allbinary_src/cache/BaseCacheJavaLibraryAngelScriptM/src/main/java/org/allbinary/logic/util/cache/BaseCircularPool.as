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

class BaseCircularPool : JObjectBase
{
    CircularIndexUtil@ circularIndexUtil;
    JObject@[]@ OBJECT_ARRAY;

    // Java field initializers run after the super constructor
    void jfields_BaseCircularPool()
    {
    @this.circularIndexUtil = CircularIndexUtil::NULL_CIRCULAR_INDEX_UTIL;
    @this.OBJECT_ARRAY = NullUtil::getInstance().NULL_OBJECT_ARRAY;
    }

    BaseCircularPool@ jinit_BaseCircularPool()
    {
        this.jfields_BaseCircularPool();
        return this;
    }
    

    JObject@ getNextInstance()
    {
        JObject@ anyType = this.OBJECT_ARRAY[this.circularIndexUtil.getIndex()];
        this.circularIndexUtil.next();
        return anyType;
    }
    

    void init(AllBinaryObjectFactoryInterface@ allBinaryObjectFactoryInterface)
    {
        this.circularIndexUtil.setIndex(0);
        int size = this.circularIndexUtil.getSize();
        for (int index = 0; index < size; index++) {
            @this.OBJECT_ARRAY[index] = allBinaryObjectFactoryInterface.getInstance();
        }
    }
    

    JObject@ getInstance(int index)
    {
        return this.OBJECT_ARRAY[index];
    }
}

