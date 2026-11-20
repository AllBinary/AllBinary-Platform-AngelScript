// Generated Code Do Not Modify
// package org.allbinary.game.input.analog

class AnalogLocationInput : JObjectBase
{
    int playerId_AnalogLocationInput;
    CustomGPoint@ customGPoint_AnalogLocationInput;
    int rz_AnalogLocationInput;
    int rightTrigger_AnalogLocationInput;
    int leftTrigger_AnalogLocationInput;
    

    AnalogLocationInput@ jinit_AnalogLocationInput(int playerId)
    {
        this.playerId_AnalogLocationInput = playerId;
        @this.customGPoint_AnalogLocationInput = CustomGPoint().jinit_CustomGPoint(0, 0, 0);
        return this;
    }
    

    int getPlayerId()
    {
        return this.playerId_AnalogLocationInput;
    }
    

    CustomGPoint@ getCustomGPoint()
    {
        return this.customGPoint_AnalogLocationInput;
    }
    

    int getRz()
    {
        return this.rz_AnalogLocationInput;
    }
    

    void setRz(int rz)
    {
        this.rz_AnalogLocationInput = rz;
    }
    

    int getRightTrigger()
    {
        return this.rightTrigger_AnalogLocationInput;
    }
    

    void setRightTrigger(int rightTrigger)
    {
        this.rightTrigger_AnalogLocationInput = rightTrigger;
    }
    

    int getLeftTrigger()
    {
        return this.leftTrigger_AnalogLocationInput;
    }
    

    void setLeftTrigger(int leftTrigger)
    {
        this.leftTrigger_AnalogLocationInput = leftTrigger;
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

