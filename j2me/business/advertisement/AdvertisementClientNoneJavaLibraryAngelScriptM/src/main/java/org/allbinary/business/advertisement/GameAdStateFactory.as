// Generated Code Do Not Modify
// package org.allbinary.business.advertisement

class GameAdStateFactory : JObjectBase, GameAdStateFactoryInterface
{
    GameAdState@[]@ gameAdStateArray_GameAdStateFactory;
    GameAdState@ gameAdState_GameAdStateFactory;

    // Java field initializers run after the super constructor
    void jfields_GameAdStateFactory()
    {
    @this.gameAdStateArray_GameAdStateFactory = array<GameAdState@> = {GameAdState().jinit_GameAdState(AppNameLicensingAdConfiguration().jinit_AppNameLicensingAdConfiguration())};
    @this.gameAdState_GameAdStateFactory = this.gameAdStateArray_GameAdStateFactory[0];
    }

    GameAdStateFactory@ jinit_GameAdStateFactory()
    {
        this.jfields_GameAdStateFactory();
        return this;
    }
    

    GameAdState@ getCurrentInstance()
    {
        return this.gameAdState_GameAdStateFactory;
    }
    

    GameAdStateBase@ getInstanceForApp(SoftwareInformation@ softwareInformation)
    {
        @this.gameAdState_GameAdStateFactory = this.gameAdStateArray_GameAdStateFactory[0];
        return this.gameAdStateArray_GameAdStateFactory[0];
    }
    

    bool isEnabled()
    {
        return false;
    }
}

namespace GameAdStateFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameAdStateFactory().jinit_GameAdStateFactory();
    }

    GameAdStateFactory@ jcell_instance;
    GameAdStateFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameAdStateFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GameAdStateFactory@ getInstance()
    {
        return GameAdStateFactory::instance;
    }
}

