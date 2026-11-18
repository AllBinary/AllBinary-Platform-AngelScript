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
// package org.allbinary.game.ag.ai

class NullAIFactory : JObjectBase, ArtificialIntelligenceInterfaceFactoryInterface
{

    NullAIFactory@ jinit_NullAIFactory()
    {
        return this;
    }
    

    ArtificialIntelligenceInterface@ getInstance(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        return NullAIFactory::NULL_AI;
    }
}

namespace NullAIFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_AI = NullAI().jinit_NullAI();
    }

    NullAI@ jcell_NULL_AI;
    NullAI@ get_NULL_AI() property { jclinit(); return jcell_NULL_AI; }
    void set_NULL_AI(NullAI@ value) property { jclinit(); @jcell_NULL_AI = value; }
    

    ArtificialIntelligenceInterface@ getInstance_jstatic()
    {
        return NullAIFactory::NULL_AI;
    }
}

