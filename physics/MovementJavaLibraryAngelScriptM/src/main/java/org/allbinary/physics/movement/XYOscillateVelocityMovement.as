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
// package org.allbinary.physics.movement

class XYOscillateVelocityMovement : BasicConstantVelocityMovement
{
    int oscillateMin_XYOscillateVelocityMovement;
    int oscillateMax_XYOscillateVelocityMovement;
    int oscillate_XYOscillateVelocityMovement;
    bool oscillatePositive_XYOscillateVelocityMovement;
    

    XYOscillateVelocityMovement@ jinit_XYOscillateVelocityMovement(BasicDecimal@ speedBasicDecimal, int oscillateMin, int oscillateMax)
    {
        this.jinit_BasicConstantVelocityMovement(speedBasicDecimal, VelocityProperties().jinit_VelocityProperties(int(speedBasicDecimal.getUnscaled()), int(speedBasicDecimal.getUnscaled())));
        this.oscillateMin_XYOscillateVelocityMovement = oscillateMin;
        this.oscillateMax_XYOscillateVelocityMovement = oscillateMax;
        return this;
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
        BasicConstantVelocityMovement::process(layer);
        if (this.oscillate_XYOscillateVelocityMovement < this.oscillateMin_XYOscillateVelocityMovement) {
            this.oscillatePositive_XYOscillateVelocityMovement = true;
            this.getVelocityProperties().getVelocityYBasicDecimalP().addint(3000);
        } else if (this.oscillate_XYOscillateVelocityMovement > this.oscillateMax_XYOscillateVelocityMovement) {
            this.oscillatePositive_XYOscillateVelocityMovement = false;
            this.getVelocityProperties().getVelocityYBasicDecimalP().subtractint(3000);
        }
        if (this.oscillatePositive_XYOscillateVelocityMovement) {
            this.oscillate_XYOscillateVelocityMovement++;
            this.getVelocityProperties().getVelocityXBasicDecimalP().addint(5000);
        } else {
            this.oscillate_XYOscillateVelocityMovement--;
            this.getVelocityProperties().getVelocityXBasicDecimalP().subtractint(5000);
        }
    }
}

