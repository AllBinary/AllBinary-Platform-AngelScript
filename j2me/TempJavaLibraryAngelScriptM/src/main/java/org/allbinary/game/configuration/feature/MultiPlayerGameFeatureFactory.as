// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature

class MultiPlayerGameFeatureFactory : JObjectBase
{
    

    MultiPlayerGameFeatureFactory@ jinit_MultiPlayerGameFeatureFactory()
    {
        return this;
    }
    

    void addCommands(JObject@ anyType)
    {
    }
}

namespace MultiPlayerGameFeatureFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MultiPlayerGameFeatureFactory().jinit_MultiPlayerGameFeatureFactory();
    }

    MultiPlayerGameFeatureFactory@ jcell_instance;
    MultiPlayerGameFeatureFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MultiPlayerGameFeatureFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    MultiPlayerGameFeatureFactory@ getInstance()
    {
        return MultiPlayerGameFeatureFactory::instance;
    }
}

