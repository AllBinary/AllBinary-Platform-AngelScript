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
// package org.allbinary.android.input.motion

class AnalogControllerConfigurationFactory : JObjectBase
{
    int SCALE_FACTOR;
    int SCALE_VALUE;
    bool available_AnalogControllerConfigurationFactory;
    AnalogControllerConfigurationEvent@ analogControllerConfigurationEvent_AnalogControllerConfigurationFactory;

    // Java field initializers run after the super constructor
    void jfields_AnalogControllerConfigurationFactory()
    {
    this.SCALE_FACTOR = ScaleFactorFactory::getInstance().DEFAULT_SCALE_FACTOR;
    this.SCALE_VALUE = ScaleFactorFactory::getInstance().DEFAULT_SCALE_VALUE;
    
    @this.analogControllerConfigurationEvent_AnalogControllerConfigurationFactory = AnalogControllerConfigurationEvent().jinit_AnalogControllerConfigurationEvent(this);
    }
    

    AnalogControllerConfigurationFactory@ jinit_AnalogControllerConfigurationFactory()
    {
        this.jfields_AnalogControllerConfigurationFactory();
        return this;
    }
    

    bool isAvailable()
    {
        return this.available_AnalogControllerConfigurationFactory;
    }
    

    void setAvailable(bool available)
    {
        this.available_AnalogControllerConfigurationFactory = available;
        AnalogControllerConfigurationEventHandler::getInstance().fireEvent(this.analogControllerConfigurationEvent_AnalogControllerConfigurationFactory);
    }
}

namespace AnalogControllerConfigurationFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AnalogControllerConfigurationFactory().jinit_AnalogControllerConfigurationFactory();
    }

    AnalogControllerConfigurationFactory@ jcell_instance;
    AnalogControllerConfigurationFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AnalogControllerConfigurationFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    AnalogControllerConfigurationFactory@ getInstance()
    {
        return AnalogControllerConfigurationFactory::instance;
    }
}

