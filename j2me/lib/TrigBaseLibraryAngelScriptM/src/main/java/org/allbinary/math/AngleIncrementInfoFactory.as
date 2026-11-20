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

class AngleIncrementInfoFactory : JObjectBase
{
    AngleIncrementInfo@[]@ angleIncrementInfo_AngleIncrementInfoFactory;

    // Java field initializers run after the super constructor
    void jfields_AngleIncrementInfoFactory()
    {
    @this.angleIncrementInfo_AngleIncrementInfoFactory = array<AngleIncrementInfo@>(int(AngleFactory::getInstance().TOTAL_ANGLE));
    }

    AngleIncrementInfoFactory@ jinit_AngleIncrementInfoFactory()
    {
        this.jfields_AngleIncrementInfoFactory();
        return this;
    }
    

    AngleIncrementInfo@ getAt(int16 angleIncrement)
    {
        int halfAngleIncrement = (int(angleIncrement) >>> 1);
        AngleIncrementInfo@ angleIncrementInfo;
        AngleIncrementInfo@ angleIncrementInfoCanBeNull = this.angleIncrementInfo_AngleIncrementInfoFactory[halfAngleIncrement];
        if (angleIncrementInfoCanBeNull is null) {
            @angleIncrementInfo = AngleIncrementInfo().jinit_AngleIncrementInfo(angleIncrement);
            @this.angleIncrementInfo_AngleIncrementInfoFactory[halfAngleIncrement] = angleIncrementInfo;
            return angleIncrementInfo;
        } else {
            @angleIncrementInfo = angleIncrementInfoCanBeNull;
        }
        return angleIncrementInfo;
    }
}

namespace AngleIncrementInfoFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AngleIncrementInfoFactory().jinit_AngleIncrementInfoFactory();
    }

    AngleIncrementInfoFactory@ jcell_instance;
    AngleIncrementInfoFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AngleIncrementInfoFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    AngleIncrementInfoFactory@ getInstance()
    {
        return AngleIncrementInfoFactory::instance;
    }
}

