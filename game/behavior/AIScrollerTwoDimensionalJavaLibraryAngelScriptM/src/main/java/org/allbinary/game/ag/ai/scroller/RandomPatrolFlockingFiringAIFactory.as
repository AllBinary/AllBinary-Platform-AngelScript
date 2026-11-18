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
// package org.allbinary.game.ag.ai.scroller

class RandomPatrolFlockingFiringAIFactory : JObjectBase, ArtificialIntelligenceInterfaceFactoryInterface
{

    RandomPatrolFlockingFiringAIFactory@ jinit_RandomPatrolFlockingFiringAIFactory()
    {
        return this;
    }
    

    ArtificialIntelligenceInterface@ getInstance(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        ArtificialIntelligenceInterface@[]@ artificialIntelligenceInterface = array<ArtificialIntelligenceInterface@>(2);
        @artificialIntelligenceInterface[0] = RandomPatrolAI().jinit_RandomPatrolAI(hashtable, ownerLayerInterface, gameInput);
        @artificialIntelligenceInterface[1] = TimedFireAI().jinit_TimedFireAI(1800, ownerLayerInterface, gameInput);
        return ArrayAI().jinit_ArrayAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput);
    }
}

