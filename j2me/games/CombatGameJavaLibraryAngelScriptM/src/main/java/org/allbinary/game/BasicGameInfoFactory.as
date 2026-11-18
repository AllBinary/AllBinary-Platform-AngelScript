// Generated Code Do Not Modify
// package org.allbinary.game

class BasicGameInfoFactory : JObjectBase
{
    int currentReleaseIndex;
    int currentDestroyIndex;
    int total;
    

    BasicGameInfoFactory@ jinit_BasicGameInfoFactory()
    {
        return this;
    }
    

    void init(int total)
    {
        this.currentReleaseIndex = 0;
        this.currentDestroyIndex = 0;
        this.total = total;
    }
    

    bool isPeaked()
    {
        if (this.currentDestroyIndex >= this.total) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    int howManyLeft()
    {
        return this.total - this.currentDestroyIndex;
    }
}

namespace BasicGameInfoFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = BasicGameInfoFactory().jinit_BasicGameInfoFactory();
    }

    BasicGameInfoFactory@ jcell_SINGLETON;
    BasicGameInfoFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(BasicGameInfoFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    BasicGameInfoFactory@ getInstance()
    {
        return BasicGameInfoFactory::SINGLETON;
    }
}

