// Generated Code Do Not Modify
// package org.allbinary.game.input.analog

class AnalogLocationInput : JObjectBase
{
    int playerId;
    CustomGPoint@ customGPoint;
    int rz;
    int rightTrigger;
    int leftTrigger;
    

    AnalogLocationInput@ jinit_AnalogLocationInput(int playerId)
    {
        this.playerId = playerId;
        @this.customGPoint = CustomGPoint().jinit_CustomGPoint(0, 0, 0);
        return this;
    }
    

    int getPlayerId()
    {
        return this.playerId;
    }
    

    CustomGPoint@ getCustomGPoint()
    {
        return this.customGPoint;
    }
    

    int getRz()
    {
        return this.rz;
    }
    

    void setRz(int rz)
    {
        this.rz = rz;
    }
    

    int getRightTrigger()
    {
        return this.rightTrigger;
    }
    

    void setRightTrigger(int rightTrigger)
    {
        this.rightTrigger = rightTrigger;
    }
    

    int getLeftTrigger()
    {
        return this.leftTrigger;
    }
    

    void setLeftTrigger(int leftTrigger)
    {
        this.leftTrigger = leftTrigger;
    }
}

namespace AnalogLocationInput
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_ANALOG_LOCATION_INPUT = AnalogLocationInput().jinit_AnalogLocationInput(-1);
    }

    AnalogLocationInput@ jcell_NULL_ANALOG_LOCATION_INPUT;
    AnalogLocationInput@ get_NULL_ANALOG_LOCATION_INPUT() property { jclinit(); return jcell_NULL_ANALOG_LOCATION_INPUT; }
    void set_NULL_ANALOG_LOCATION_INPUT(AnalogLocationInput@ value) property { jclinit(); @jcell_NULL_ANALOG_LOCATION_INPUT = value; }
}

