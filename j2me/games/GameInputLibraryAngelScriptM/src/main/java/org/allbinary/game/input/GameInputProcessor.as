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
// package org.allbinary.game.input

class GameInputProcessor : JObjectBase
{
    

    GameInputProcessor@ jinit_GameInputProcessor()
    {
        return this;
    }
    

    void processEvent(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void processReleasedEvent(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void processAnalog(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent, int analogValue)
    {
    }
    

    void process(AllBinaryLayerManager@ allbinaryLayerManager, JInteger@ keyAsInteger)
    {
    }
    

    void processReleased(AllBinaryLayerManager@ allbinaryLayerManager, JInteger@ keyAsInteger)
    {
    }
}

namespace GameInputProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameInputProcessor().jinit_GameInputProcessor();
    }

    GameInputProcessor@ jcell_instance;
    GameInputProcessor@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameInputProcessor@ value) property { jclinit(); @jcell_instance = value; }
    

    GameInputProcessor@ getInstance()
    {
        return GameInputProcessor::instance;
    }
}

