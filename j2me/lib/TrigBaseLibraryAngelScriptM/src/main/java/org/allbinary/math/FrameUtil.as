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

class FrameUtil : JObjectBase
{
    

    FrameUtil@ jinit_FrameUtil()
    {
        return this;
    }
    

    int getFrameForAngle(int16 angle, int angleIncrement)
    {
        return this.adjustAngleToFrameAngle(int(angle)) / angleIncrement;
    }
    

    int getFrameAngle(int frame, int angleIncrement)
    {
        int frameAngle = angleIncrement * frame - 90;
        return this.adjustAngleToFrameAngle(frameAngle);
    }
    

    int adjustAngleToFrameAngle(int currentAngle)
    {
        AngleFactory@ angleFactory = AngleFactory::getInstance();
        if (currentAngle > 359) {
            currentAngle = (currentAngle - int(angleFactory.TOTAL_ANGLE));
            while (currentAngle > 359) {
                currentAngle = (currentAngle - int(angleFactory.TOTAL_ANGLE));
            }
        }
        if (currentAngle < 0) {
            currentAngle = (currentAngle + int(angleFactory.TOTAL_ANGLE));
            while (currentAngle < 0) {
                currentAngle = (currentAngle + int(angleFactory.TOTAL_ANGLE));
            }
        }
        return currentAngle;
    }
}

namespace FrameUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = FrameUtil().jinit_FrameUtil();
    }

    FrameUtil@ jcell_instance;
    FrameUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(FrameUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    FrameUtil@ getInstance()
    {
        return FrameUtil::instance;
    }
}

