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

class DemoLimitedCommandTextItemArrayFactory : JObjectBase
{
    CommandTextItemArrayFactory@ commandTextItemArrayFactory_DemoLimitedCommandTextItemArrayFactory;

    // Java field initializers run after the super constructor
    void jfields_DemoLimitedCommandTextItemArrayFactory()
    {
    @this.commandTextItemArrayFactory_DemoLimitedCommandTextItemArrayFactory = CommandTextItemArrayFactory().jinit_CommandTextItemArrayFactory(LimitCommandsVisitor().jinit_LimitCommandsVisitor());
    }

    DemoLimitedCommandTextItemArrayFactory@ jinit_DemoLimitedCommandTextItemArrayFactory()
    {
        this.jfields_DemoLimitedCommandTextItemArrayFactory();
        return this;
    }
    

    CommandTextItemArrayFactory@ getCommandTextItemArrayFactory()
    {
        return this.commandTextItemArrayFactory_DemoLimitedCommandTextItemArrayFactory;
    }
}

namespace DemoLimitedCommandTextItemArrayFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DemoLimitedCommandTextItemArrayFactory().jinit_DemoLimitedCommandTextItemArrayFactory();
    }

    DemoLimitedCommandTextItemArrayFactory@ jcell_instance;
    DemoLimitedCommandTextItemArrayFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DemoLimitedCommandTextItemArrayFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    DemoLimitedCommandTextItemArrayFactory@ getInstance()
    {
        return DemoLimitedCommandTextItemArrayFactory::instance;
    }
}

