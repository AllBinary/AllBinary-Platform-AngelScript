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
// package org.allbinary.game.layer.special

class SpecialGameInputFactory : JObjectBase
{

    SpecialGameInputFactory@ jinit_SpecialGameInputFactory()
    {
        return this;
    }
}

namespace SpecialGameInputFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NO_SPECIAL_GAME_INPUT = SpecialGameInput().jinit_SpecialGameInput();
    }

    SpecialGameInput@ jcell_NO_SPECIAL_GAME_INPUT;
    SpecialGameInput@ get_NO_SPECIAL_GAME_INPUT() property { jclinit(); return jcell_NO_SPECIAL_GAME_INPUT; }
    void set_NO_SPECIAL_GAME_INPUT(SpecialGameInput@ value) property { jclinit(); @jcell_NO_SPECIAL_GAME_INPUT = value; }
}

