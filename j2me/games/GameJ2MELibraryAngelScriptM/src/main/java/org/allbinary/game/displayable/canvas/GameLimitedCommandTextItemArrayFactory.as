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
// package org.allbinary.game.displayable.canvas

class GameLimitedCommandTextItemArrayFactory : JObjectBase
{
    CommandTextItemArrayFactory@ commandTextItemArrayFactory_GameLimitedCommandTextItemArrayFactory;

    // Java field initializers run after the super constructor
    void jfields_GameLimitedCommandTextItemArrayFactory()
    {
    @this.commandTextItemArrayFactory_GameLimitedCommandTextItemArrayFactory = CommandTextItemArrayFactory().jinit_CommandTextItemArrayFactory(LimitCommandsVisitor().jinit_LimitCommandsVisitor());
    }

    GameLimitedCommandTextItemArrayFactory@ jinit_GameLimitedCommandTextItemArrayFactory()
    {
        this.jfields_GameLimitedCommandTextItemArrayFactory();
        return this;
    }
    

    CommandTextItemArrayFactory@ getCommandTextItemArrayFactory()
    {
        return this.commandTextItemArrayFactory_GameLimitedCommandTextItemArrayFactory;
    }
}

namespace GameLimitedCommandTextItemArrayFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameLimitedCommandTextItemArrayFactory().jinit_GameLimitedCommandTextItemArrayFactory();
    }

    GameLimitedCommandTextItemArrayFactory@ jcell_instance;
    GameLimitedCommandTextItemArrayFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameLimitedCommandTextItemArrayFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GameLimitedCommandTextItemArrayFactory@ getInstance()
    {
        return GameLimitedCommandTextItemArrayFactory::instance;
    }
}

