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
// package org.allbinary.game.physics.velocity

class DragVelocityBehavior : VelocityBehaviorBase
{

    DragVelocityBehavior@ jinit_DragVelocityBehavior()
    {
        this.jinit_VelocityBehaviorBase();
        return this;
    }
    

    void reduce(BasicVelocityProperties@ velocityProperties, int nominator, int denominator)
    {
        if (velocityProperties.getVelocityXBasicDecimalP().getUnscaled() != int64(0)) {
            BasicDecimal@ basicDecimal = velocityProperties.getVelocityXBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != int64(0)) {
            BasicDecimal@ basicDecimal = velocityProperties.getVelocityYBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
    

    void reduceX(BasicVelocityProperties@ velocityProperties, int nominator, int denominator)
    {
        BasicDecimal@ basicDecimal = velocityProperties.getVelocityXBasicDecimalP();
        if (basicDecimal.getUnscaled() != int64(0)) {
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
    

    void reduceY(BasicVelocityProperties@ velocityProperties, int nominator, int denominator)
    {
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != int64(0)) {
            BasicDecimal@ basicDecimal = velocityProperties.getVelocityYBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
}

namespace DragVelocityBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DragVelocityBehavior().jinit_DragVelocityBehavior();
    }

    DragVelocityBehavior@ jcell_instance;
    DragVelocityBehavior@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DragVelocityBehavior@ value) property { jclinit(); @jcell_instance = value; }
}

