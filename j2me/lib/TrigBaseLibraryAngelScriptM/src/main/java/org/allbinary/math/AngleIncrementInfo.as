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
// package org.allbinary.math

class AngleIncrementInfo : JObjectBase
{
    int16 angleIncrement;
    JInteger@ DOWN_FRAME;
    JInteger@ UP_FRAME;
    JInteger@ LEFT_FRAME;
    JInteger@ RIGHT_FRAME;
    FrameUtil@ frameUtil;

    // Java field initializers run after the super constructor
    void jfields_AngleIncrementInfo()
    {
    
    
    
    
    
    @this.frameUtil = FrameUtil::getInstance();
    }
    

    AngleIncrementInfo@ jinit_AngleIncrementInfo(int16 angleIncrement)
    {
        this.jfields_AngleIncrementInfo();
        this.angleIncrement = angleIncrement;
        AngleFactory@ angleFactory = AngleFactory::getInstance();
        SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
        @this.DOWN_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.DOWN.getValue() / this.angleIncrement);
        @this.UP_FRAME = smallIntegerSingletonFactory.getAt(int(angleFactory.UP.getValue()));
        @this.LEFT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.LEFT.getValue() / this.angleIncrement);
        @this.RIGHT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.RIGHT.getValue() / this.angleIncrement);
        return this;
    }
    

    int getFrameAngle(int frame)
    {
        return this.frameUtil.getFrameAngle(frame, int(this.angleIncrement));
    }
    

    int16 getAngleIncrement()
    {
        return this.angleIncrement;
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append(AngleIncrementInfo::INCREMENT).appendshort(this.angleIncrement).toString();
    }
    

    int getClosestGeneralDirection(int16 angle)
    {
        JInteger@ closestDirection = SmallIntegerSingletonFactory::getInstance().getAt(360);
        if (this.UP_FRAME.intValue() - angle < closestDirection.intValue() - angle) {
            @closestDirection = this.UP_FRAME;
        }
        if (this.DOWN_FRAME.intValue() - angle < closestDirection.intValue() - angle) {
            @closestDirection = this.DOWN_FRAME;
        }
        if (this.LEFT_FRAME.intValue() - angle < closestDirection.intValue() - angle) {
            @closestDirection = this.LEFT_FRAME;
        }
        if (this.RIGHT_FRAME.intValue() - angle < closestDirection.intValue() - angle) {
            @closestDirection = this.RIGHT_FRAME;
        }
        return closestDirection.intValue();
    }
}

namespace AngleIncrementInfo
{
    const string INCREMENT = "Inc: ";
}

