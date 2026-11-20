// Generated Code Do Not Modify
// package org.allbinary.game.midlet

class GameMidletStateFactory : JObjectBase
{
    LogUtil@ logUtil;
    GameState@ currentGameState_GameMidletStateFactory;

    // Java field initializers run after the super constructor
    void jfields_GameMidletStateFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.currentGameState_GameMidletStateFactory = GameStateFactory::getInstance().NO_GAME_STATE;
    }
    

    GameMidletStateFactory@ jinit_GameMidletStateFactory()
    {
        this.jfields_GameMidletStateFactory();
        return this;
    }
    

    GameState@ getCurrentGameState()
    {
        return this.currentGameState_GameMidletStateFactory;
    }
    

    void setCurrentGameState(GameState@ currentGameState)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().CURRENT).append(" GameState: ").append(StringUtil::getInstance().toString(currentGameState)).toString(), this, "setCurrentGameState");
        @this.currentGameState_GameMidletStateFactory = currentGameState;
    }
}

namespace GameMidletStateFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_INSTANCE = GameMidletStateFactory().jinit_GameMidletStateFactory();
    }

    GameMidletStateFactory@ jcell_INSTANCE;
    GameMidletStateFactory@ get_INSTANCE() property { jclinit(); return jcell_INSTANCE; }
    void set_INSTANCE(GameMidletStateFactory@ value) property { jclinit(); @jcell_INSTANCE = value; }
    

    GameMidletStateFactory@ getInstance()
    {
        return GameMidletStateFactory::INSTANCE;
    }
}

