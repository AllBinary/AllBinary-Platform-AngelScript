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

class AngleInfo : JObjectBase
{
    AngleIncrementInfo@ angleIncrementInfo;
    int16 angle;
    FrameUtil@ frameUtil;

    // Java field initializers run after the super constructor
    void jfields_AngleInfo()
    {
    
    this.angle = 0;
    @this.frameUtil = FrameUtil::getInstance();
    }
    

    AngleInfo@ jinit_AngleInfo(AngleIncrementInfo@ angleIncrementInfo)
    {
        this.jfields_AngleInfo();
        @this.angleIncrementInfo = angleIncrementInfo;
        return this;
    }
    

    void adjustAngle(int frame)
    {
        int newAngle = int(this.angleIncrementInfo.getAngleIncrement()) * frame - 90;
        this.setAngle(int16(this.frameUtil.adjustAngleToFrameAngle(newAngle)));
    }
    

    int16 getAngle()
    {
        return this.angle;
    }
    

    void setAngle(int16 angle)
    {
        this.angle = angle;
    }
    

    AngleIncrementInfo@ getAngleIncrementInfo()
    {
        return this.angleIncrementInfo;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(AngleInfo::ANGLE);
        stringBuffer.appendshort(this.angle);
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(StringUtil::getInstance().toString(this.getAngleIncrementInfo()));
        return stringBuffer.toString();
    }
}

namespace AngleInfo
{
    const string ANGLE = "Angle: ";
    

    AngleInfo@ getInstance(int16 angleIncrement)
    {
        return AngleInfo().jinit_AngleInfo(AngleIncrementInfoFactory::getInstance().getAt(angleIncrement));
    }
}

