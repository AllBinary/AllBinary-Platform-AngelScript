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
// package org.allbinary.game.configuration.feature

class InputFeatureFactory : JObjectBase
{
    InputFeature@ REMOVE_DUPLICATE_KEY_PRESSES;
    InputFeature@ INPUT_MAPPING;
    InputFeature@ MULTI_KEY_PRESS;
    InputFeature@ SINGLE_KEY_REPEAT_PRESS;
    InputFeature@ SINGLE_KEY_PRESS;

    // Java field initializers run after the super constructor
    void jfields_InputFeatureFactory()
    {
    @this.REMOVE_DUPLICATE_KEY_PRESSES = InputFeature().jinit_InputFeature("Remove Duplicate Key Presses");
    @this.INPUT_MAPPING = InputFeature().jinit_InputFeature("Input Mapping");
    @this.MULTI_KEY_PRESS = InputFeature().jinit_InputFeature("Multi Key Press");
    @this.SINGLE_KEY_REPEAT_PRESS = InputFeature().jinit_InputFeature("Single Key Repeat Press");
    @this.SINGLE_KEY_PRESS = InputFeature().jinit_InputFeature("Single Key Press");
    }
    

    InputFeatureFactory@ jinit_InputFeatureFactory()
    {
        this.jfields_InputFeatureFactory();
        return this;
    }
    

    bool isSingleKeyProcessing()
    {
        Features@ features = Features::getInstance();
        if (features.isFeature(this.SINGLE_KEY_REPEAT_PRESS) || features.isFeature(this.SINGLE_KEY_PRESS)) {
            return true;
        } else {
            return false;
        }
        return false;
    }
}

namespace InputFeatureFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = InputFeatureFactory().jinit_InputFeatureFactory();
    }

    InputFeatureFactory@ jcell_instance;
    InputFeatureFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(InputFeatureFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    InputFeatureFactory@ getInstance()
    {
        return InputFeatureFactory::instance;
    }
}

