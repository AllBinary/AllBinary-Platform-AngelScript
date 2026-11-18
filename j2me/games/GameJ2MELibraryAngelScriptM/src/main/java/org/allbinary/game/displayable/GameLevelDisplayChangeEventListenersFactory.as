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
// package org.allbinary.game.displayable

class GameLevelDisplayChangeEventListenersFactory : JObjectBase
{
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_GameLevelDisplayChangeEventListenersFactory()
    {
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }

    GameLevelDisplayChangeEventListenersFactory@ jinit_GameLevelDisplayChangeEventListenersFactory()
    {
        this.jfields_GameLevelDisplayChangeEventListenersFactory();
        return this;
    }
    

    void add(DisplayChangeEventListener@ displayChangeEventListener)
    {
        this.list.add(displayChangeEventListener);
        DisplayChangeEventHandler::getInstance().addListenerInterface(displayChangeEventListener);
    }
    

    void clear()
    {
        BasicEventHandler@ displayChangeEventHandler = DisplayChangeEventHandler::getInstance();
        DisplayChangeEventListener@ displayChangeEventListener;
        for (int index = this.list.size(); --index >= 0; ) {
            @displayChangeEventListener = cast<DisplayChangeEventListener>(this.list.objectArray[index]);
            displayChangeEventHandler.removeListener(displayChangeEventListener);
        }
        this.list.clear();
    }
}

namespace GameLevelDisplayChangeEventListenersFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameLevelDisplayChangeEventListenersFactory().jinit_GameLevelDisplayChangeEventListenersFactory();
    }

    GameLevelDisplayChangeEventListenersFactory@ jcell_instance;
    GameLevelDisplayChangeEventListenersFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameLevelDisplayChangeEventListenersFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GameLevelDisplayChangeEventListenersFactory@ getInstance()
    {
        return GameLevelDisplayChangeEventListenersFactory::instance;
    }
}

