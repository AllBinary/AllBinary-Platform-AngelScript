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
// package org.allbinary.game.init

class BasicBuildGameInitializerFactory : JObjectBase, GameInitializationInterfaceFactoryInterface
{

    BasicBuildGameInitializerFactory@ jinit_BasicBuildGameInitializerFactory()
    {
        return this;
    }
    

    GameInitializationInterface@ getInstance()
    {
        return BaseGameInitialization::NULL_BASE_GAME_INITIALIZATION;
    }
}

namespace BasicBuildGameInitializerFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = BasicBuildGameInitializerFactory().jinit_BasicBuildGameInitializerFactory();
    }

    BasicBuildGameInitializerFactory@ jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;
    BasicBuildGameInitializerFactory@ get_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY() property { jclinit(); return jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY; }
    void set_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY(BasicBuildGameInitializerFactory@ value) property { jclinit(); @jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = value; }
}

