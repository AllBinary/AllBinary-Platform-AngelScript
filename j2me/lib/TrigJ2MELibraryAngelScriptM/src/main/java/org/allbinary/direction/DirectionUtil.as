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
// package org.allbinary.direction

class DirectionUtil : JObjectBase
{
    Angle@[]@ directionArray_DirectionUtil;
    Angle@[]@ directionArray2_DirectionUtil;

    // Java field initializers run after the super constructor
    void jfields_DirectionUtil()
    {
    @this.directionArray_DirectionUtil = array<Angle@>(10);
    @this.directionArray2_DirectionUtil = array<Angle@>(10);
    }
    

    DirectionUtil@ jinit_DirectionUtil()
    {
        this.jfields_DirectionUtil();
        AngleFactory@ angleFactory = AngleFactory::getInstance();
        DirectionFactory@ directionFactory = DirectionFactory::getInstance();
        @this.directionArray_DirectionUtil[directionFactory.LEFT.getValue()] = angleFactory.LEFT;
        @this.directionArray_DirectionUtil[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT;
        @this.directionArray_DirectionUtil[directionFactory.UP.getValue()] = angleFactory.UP;
        @this.directionArray_DirectionUtil[directionFactory.DOWN.getValue()] = angleFactory.DOWN;
        @this.directionArray2_DirectionUtil[directionFactory.LEFT.getValue()] = angleFactory.LEFT;
        @this.directionArray2_DirectionUtil[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT;
        @this.directionArray2_DirectionUtil[directionFactory.UP.getValue()] = angleFactory.UP;
        @this.directionArray2_DirectionUtil[directionFactory.DOWN.getValue()] = angleFactory.DOWN;
        return this;
    }
    

    Angle@ getAngle(Direction@ direction)
    {
        return this.directionArray2_DirectionUtil[direction.getValue()];
    }
    

    Angle@ getFrameAngle(Direction@ direction)
    {
        return this.directionArray_DirectionUtil[direction.getValue()];
    }
}

namespace DirectionUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DirectionUtil().jinit_DirectionUtil();
    }

    DirectionUtil@ jcell_instance;
    DirectionUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DirectionUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    DirectionUtil@ getInstance()
    {
        return DirectionUtil::instance;
    }
}

