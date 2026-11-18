/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class NullPlayerGameInputComposite : JObjectBase, PlayerGameInputCompositeInterface
{

    NullPlayerGameInputComposite@ jinit_NullPlayerGameInputComposite()
    {
        return this;
    }
    

    string getName()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    void processInput(AllBinaryLayerManager@ layerManager)
    {
    }
    

    void initInputProcessors()
    {
    }
    

    PlayerGameInput@ getPlayerGameInput()
    {
        return NoPlayerGameInput::getInstance();
    }
}

namespace NullPlayerGameInputComposite
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE = NullPlayerGameInputComposite().jinit_NullPlayerGameInputComposite();
    }

    NullPlayerGameInputComposite@ jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE;
    NullPlayerGameInputComposite@ get_NULL_PLAYER_GAME_INPUT_COMPOSITE() property { jclinit(); return jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE; }
    void set_NULL_PLAYER_GAME_INPUT_COMPOSITE(NullPlayerGameInputComposite@ value) property { jclinit(); @jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE = value; }
}

