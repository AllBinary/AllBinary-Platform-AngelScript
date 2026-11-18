// Generated Code Do Not Modify
// package org.allbinary.game.input.analog

class AnalogLocationInputFactory : JObjectBase
{
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_AnalogLocationInputFactory()
    {
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    AnalogLocationInputFactory@ jinit_AnalogLocationInputFactory()
    {
        this.jfields_AnalogLocationInputFactory();
        return this;
    }
    

    void addPlayer(int playerInputId)
    {
        AnalogLocationInput@ analogLocationInput = AnalogLocationInput::NULL_ANALOG_LOCATION_INPUT;
        if (playerInputId < this.list.size()) {
            @analogLocationInput = cast<AnalogLocationInput>(this.list.get(playerInputId));
        }
        if (analogLocationInput is AnalogLocationInput::NULL_ANALOG_LOCATION_INPUT) {
            @analogLocationInput = AnalogLocationInput().jinit_AnalogLocationInput(playerInputId);
            this.list.add(analogLocationInput);
        }
    }
    

    AnalogLocationInput@ getInstanceForPlayer(int playerInputId)
    {
        return cast<AnalogLocationInput>(this.list.get(playerInputId));
    }
    

    BasicArrayList@ getList()
    {
        return this.list;
    }
}

namespace AnalogLocationInputFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AnalogLocationInputFactory().jinit_AnalogLocationInputFactory();
    }

    AnalogLocationInputFactory@ jcell_instance;
    AnalogLocationInputFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AnalogLocationInputFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    AnalogLocationInputFactory@ getInstance()
    {
        return AnalogLocationInputFactory::instance;
    }
}

