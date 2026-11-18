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

class OscillateVelocityMovement : BasicConstantVelocityMovement
{
    int oscillateMin_OscillateVelocityMovement;
    int oscillateMax_OscillateVelocityMovement;
    int oscillate_OscillateVelocityMovement;
    bool oscillatePositive_OscillateVelocityMovement;
    

    OscillateVelocityMovement@ jinit_OscillateVelocityMovement(BasicDecimal@ speedBasicDecimal, int oscillateMin, int oscillateMax)
    {
        this.jinit_BasicConstantVelocityMovement(speedBasicDecimal, VelocityProperties().jinit_VelocityProperties(int(speedBasicDecimal.getUnscaled()), int(speedBasicDecimal.getUnscaled())));
        this.oscillateMin_OscillateVelocityMovement = oscillateMin;
        this.oscillateMax_OscillateVelocityMovement = oscillateMax;
        return this;
    }
    

    void process(AllBinaryGameLayer@ layer)
    {
        BasicConstantVelocityMovement::process(layer);
        if (this.oscillate_OscillateVelocityMovement < this.oscillateMin_OscillateVelocityMovement) {
            this.oscillatePositive_OscillateVelocityMovement = true;
        } else if (this.oscillate_OscillateVelocityMovement > this.oscillateMax_OscillateVelocityMovement) {
            this.oscillatePositive_OscillateVelocityMovement = false;
        }
        if (this.oscillatePositive_OscillateVelocityMovement) {
            this.oscillate_OscillateVelocityMovement++;
            this.getVelocityProperties().getVelocityXBasicDecimalP().addint(2000);
        } else {
            this.oscillate_OscillateVelocityMovement--;
            this.getVelocityProperties().getVelocityXBasicDecimalP().subtractint(2000);
        }
    }
}

