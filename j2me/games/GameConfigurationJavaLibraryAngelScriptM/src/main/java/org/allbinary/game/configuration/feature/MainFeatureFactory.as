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

class MainFeatureFactory : JObjectBase
{
    Feature@ FULL_SCREEN;
    Feature@ TITLE_BAR;
    Feature@ STATIC;
    Feature@ LOAD_ONDEMAND;
    Feature@ LOAD_ALL;

    // Java field initializers run after the super constructor
    void jfields_MainFeatureFactory()
    {
    @this.FULL_SCREEN = Feature().jinit_Feature("Full Screen");
    @this.TITLE_BAR = Feature().jinit_Feature("Title Bar");
    @this.STATIC = Feature().jinit_Feature("Static Dependent Feature");
    @this.LOAD_ONDEMAND = Feature().jinit_Feature("Load OnDemand");
    @this.LOAD_ALL = Feature().jinit_Feature("Load All");
    }

    MainFeatureFactory@ jinit_MainFeatureFactory()
    {
        this.jfields_MainFeatureFactory();
        return this;
    }
}

namespace MainFeatureFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MainFeatureFactory().jinit_MainFeatureFactory();
    }

    MainFeatureFactory@ jcell_instance;
    MainFeatureFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MainFeatureFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    MainFeatureFactory@ getInstance()
    {
        return MainFeatureFactory::instance;
    }
}

