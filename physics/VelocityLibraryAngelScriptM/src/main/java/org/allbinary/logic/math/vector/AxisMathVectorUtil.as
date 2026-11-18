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
// package org.allbinary.logic.math.vector

class AxisMathVectorUtil : JObjectBase
{
    NoDecimalTrigTable@ noDecimalTrigTable;

    // Java field initializers run after the super constructor
    void jfields_AxisMathVectorUtil()
    {
    @this.noDecimalTrigTable = NoDecimalTrigTable::getInstance();
    }

    AxisMathVectorUtil@ jinit_AxisMathVectorUtil()
    {
        this.jfields_AxisMathVectorUtil();
        return this;
    }
    

    int64 calculateX(int64 magnitude, int angle)
    {
        return magnitude * this.noDecimalTrigTable.cos(angle) / 10;
    }
    

    int64 calculateY(int64 magnitude, int angle)
    {
        return magnitude * this.noDecimalTrigTable.sin(angle) / 10;
    }
    

    int64 calculateZ(int64 magnitude, int otherAngle)
    {
        return magnitude * this.noDecimalTrigTable.sin(otherAngle) / 10;
    }
}

namespace AxisMathVectorUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AxisMathVectorUtil().jinit_AxisMathVectorUtil();
    }

    AxisMathVectorUtil@ jcell_instance;
    AxisMathVectorUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AxisMathVectorUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    AxisMathVectorUtil@ getInstance()
    {
        return AxisMathVectorUtil::instance;
    }
}

