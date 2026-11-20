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
// package org.allbinary.logic.math

class PrimitiveLongUtil : JObjectBase
{
    LogUtil@ logUtil;
    int powerOfTen_PrimitiveLongUtil;
    int maxValue_PrimitiveLongUtil;
    int maxDigits_PrimitiveLongUtil;
    uint16[]@ charArray_PrimitiveLongUtil;
    int currentTotalDigits_PrimitiveLongUtil;
    PrimitiveLongSingleton@ primitiveLongSingleton_PrimitiveLongUtil;

    // Java field initializers run after the super constructor
    void jfields_PrimitiveLongUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    
    
    
    
    
    @this.primitiveLongSingleton_PrimitiveLongUtil = PrimitiveLongSingleton::getInstance();
    }
    

    PrimitiveLongUtil@ jinit_PrimitiveLongUtil(int powerOfTen, JObject@ unused)
    {
        this.jfields_PrimitiveLongUtil();
        this.maxDigits_PrimitiveLongUtil = MathUtil::getInstance().getTotalDigits(powerOfTen);
        this.powerOfTen_PrimitiveLongUtil = powerOfTen;
        this.maxValue_PrimitiveLongUtil = (powerOfTen * 10) - 1;
        @this.charArray_PrimitiveLongUtil = array<uint16>(this.maxDigits_PrimitiveLongUtil);
        return this;
    }
    

    uint16[]@ getCharArray(int value)
    {
        if (value < 10) {
            this.setCurrentTotalDigits(1);
            return this.primitiveLongSingleton_PrimitiveLongUtil.NUMBER_CHAR_ARRAYS[value];
        }
        if (value > this.maxValue_PrimitiveLongUtil) {
            this.setCurrentTotalDigits(3);
            return this.primitiveLongSingleton_PrimitiveLongUtil.UNK;
        }
        int index = 0;
        int div = this.powerOfTen_PrimitiveLongUtil;
        int lastValue = 0;
        while (div >= 1) {
            int digit = (value - lastValue) / div;
            if (digit >= 0 && digit < 10) {
                if (digit == 0 && index == 0) {
                } else {
                    this.charArray_PrimitiveLongUtil[index++] = this.primitiveLongSingleton_PrimitiveLongUtil.NUMBER_CHAR_ARRAY[digit];
                }
                lastValue += digit * div;
            }
            div = div / 10;
        }
        this.setCurrentTotalDigits(index);
        return this.charArray_PrimitiveLongUtil;
    }
    

    void setCurrentTotalDigits(int currentTotalDigits)
    {
        this.currentTotalDigits_PrimitiveLongUtil = currentTotalDigits;
    }
    

    int getCurrentTotalDigits()
    {
        return this.currentTotalDigits_PrimitiveLongUtil;
    }
    

    int getMaxDigits()
    {
        return this.maxDigits_PrimitiveLongUtil;
    }
}

namespace PrimitiveLongUtil
{
    

    PrimitiveLongUtil@ createPowerOfTen(int powerOfTen)
    {
        PrimitiveLongUtil@ primitiveLongUtil = PrimitiveLongUtil().jinit_PrimitiveLongUtil(powerOfTen, NullUtil::getInstance().NULL_OBJECT);
        if (powerOfTen % 10 != 0) {
            LogUtil@ logUtil = LogUtil::getInstance();
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            logUtil.put(commonStrings.EXCEPTION, primitiveLongUtil, commonStrings.CONSTRUCTOR, Exception().jinit_Exception("Max must be power of 10"));
        }
        return primitiveLongUtil;
    }
}

