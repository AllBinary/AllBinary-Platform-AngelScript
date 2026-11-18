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
// package org.allbinary.game.ag.ai.tactical

class BasicRandomAIFactory : JObjectBase, ArtificialIntelligenceInterfaceFactoryInterface
{

    BasicRandomAIFactory@ jinit_BasicRandomAIFactory()
    {
        return this;
    }
    

    ArtificialIntelligenceInterface@ getInstance(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        Visitor@ visitor = cast<Visitor>(hashtable.get(BasicAI::AI_VISITOR));
        if (visitor is null) {
            jthrow(Exception().jinit_Exception("No Visitor Provided"));
        }
        InputProbability@ inputProbability = cast<InputProbability>(hashtable.get(InputProbability::INPUT_PROBABILITY));
        return BasicRandomAI().jinit_BasicRandomAI(ownerLayerInterface, gameInput, inputProbability, visitor);
    }
}

