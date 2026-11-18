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

class HorizontalScreenPatrolFiringAIFactory : JObjectBase, ArtificialIntelligenceInterfaceFactoryInterface
{

    HorizontalScreenPatrolFiringAIFactory@ jinit_HorizontalScreenPatrolFiringAIFactory()
    {
        return this;
    }
    

    ArtificialIntelligenceInterface@ getInstance(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        return HorizontalScreenPatrolAI().jinit_HorizontalScreenPatrolAI(hashtable, ownerLayerInterface, gameInput);
    }
}

