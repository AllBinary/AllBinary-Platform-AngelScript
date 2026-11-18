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
// package org.allbinary.logic.util.event

class AllBinaryEventCircularPool : BaseCircularPool
{
    

    AllBinaryEventCircularPool@ jinit_AllBinaryEventCircularPool(int max)
    {
        this.jinit_BaseCircularPool();
        @this.OBJECT_ARRAY = array<JObject@>(max);
        @this.circularIndexUtil = CircularIndexUtil::createInstance(max);
        return this;
    }
    

    void initAllBinaryEventCircularPool(AllBinaryEventObjectFactoryInterface@ allBinaryEventObjectFactoryInterface)
    {
        this.circularIndexUtil.setIndex(0);
        int size = this.circularIndexUtil.getSize();
        for (int index = 0; index < size; index++) {
            @this.OBJECT_ARRAY[index] = allBinaryEventObjectFactoryInterface.getInstance();
        }
    }
}

