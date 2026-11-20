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

class AngleFactory : JObjectBase
{
    LogUtil@ logUtil;
    int16 TOTAL_ANGLE;
    int16 QUARTER_TOTAL_ANGLE;
    Angle@[]@ angleArray_AngleFactory;
    int16 NEGATIVE_ONE_AngleFactory;
    NamedAngle@ NOT_ANGLE;
    NamedAngle@ DOWN;
    NamedAngle@ UP;
    NamedAngle@ LEFT;
    NamedAngle@ RIGHT;
    FrameUtil@ frameUtil_AngleFactory;

    // Java field initializers run after the super constructor
    void jfields_AngleFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    this.TOTAL_ANGLE = 360;
    this.QUARTER_TOTAL_ANGLE = 90;
    @this.angleArray_AngleFactory = array<Angle@>(int(this.TOTAL_ANGLE));
    this.NEGATIVE_ONE_AngleFactory = int16(-1);
    @this.NOT_ANGLE = NamedAngle().jinit_NamedAngle(this.NEGATIVE_ONE_AngleFactory, CommonStrings::getInstance().EMPTY);
    
    
    
    
    @this.frameUtil_AngleFactory = FrameUtil::getInstance();
    }
    

    AngleFactory@ jinit_AngleFactory()
    {
        this.jfields_AngleFactory();
        CommonPhoneStrings@ commonPhoneStrings = CommonPhoneStrings::getInstance();
        int16 total = int16(int(this.angleArray_AngleFactory.length()));
        @this.UP = NamedAngle().jinit_NamedAngle(int16(0), commonPhoneStrings.UP);
        @this.angleArray_AngleFactory[0] = this.UP;
        for (int index = 1; index < 90; index++) {
            @this.angleArray_AngleFactory[index] = Angle().jinit_Angle(int16(index));
        }
        @this.RIGHT = NamedAngle().jinit_NamedAngle(int16(90), commonPhoneStrings.RIGHT);
        @this.angleArray_AngleFactory[90] = this.RIGHT;
        for (int index = 91; index < 180; index++) {
            @this.angleArray_AngleFactory[index] = Angle().jinit_Angle(int16(index));
        }
        @this.DOWN = NamedAngle().jinit_NamedAngle(int16(180), commonPhoneStrings.DOWN);
        @this.angleArray_AngleFactory[180] = this.DOWN;
        for (int index = 181; index < 270; index++) {
            @this.angleArray_AngleFactory[index] = Angle().jinit_Angle(int16(index));
        }
        @this.LEFT = NamedAngle().jinit_NamedAngle(int16(270), commonPhoneStrings.LEFT);
        @this.angleArray_AngleFactory[270] = this.LEFT;
        for (int index = 271; index < int(total); index++) {
            @this.angleArray_AngleFactory[index] = Angle().jinit_Angle(int16(index));
        }
        return this;
    }
    

    Angle@ getAt(int index)
    {
        int adjustedIndex = this.frameUtil_AngleFactory.adjustAngleToFrameAngle(index);
        return this.angleArray_AngleFactory[adjustedIndex];
    }
    

    Angle@ getClosestDirection(int angle)
    {
        if ((angle >= 315 && angle < 360) || (angle >= 0 && angle < 45)) {
            return this.UP;
        } else if (angle >= 45 && angle < 135) {
            return this.RIGHT;
        } else if (angle >= 135 && angle < 225) {
            return this.DOWN;
        } else if (angle >= 225 && angle < 315) {
            return this.LEFT;
        }
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    Angle@ getGeneralDirection()
    {
        return this.NOT_ANGLE;
    }
}

namespace AngleFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AngleFactory().jinit_AngleFactory();
    }

    AngleFactory@ jcell_instance;
    AngleFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AngleFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    AngleFactory@ getInstance()
    {
        return AngleFactory::instance;
    }
    

    void main(string[]@ args)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        AngleFactory@ angleFactory = AngleFactory::getInstance();
        for (int index = 0; index < 360; index++) {
            stringMaker.appendint(index).append(CommonSeps::getInstance().FORWARD_SLASH).appendshort(angleFactory.getClosestDirection(index).getValue()).append(CommonSeps::getInstance().NEW_LINE);
        }
        LogUtil::getInstance().putF(stringMaker.toString(), jbox("main"), "main");
    }
}

