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

class SpinnerAIFactory : JObjectBase, ArtificialIntelligenceInterfaceFactoryInterface
{

    SpinnerAIFactory@ jinit_SpinnerAIFactory()
    {
        return this;
    }
    

    ArtificialIntelligenceInterface@ getInstance(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        int[]@ direction = array<int> = {Canvas::LEFT};
        return SpinnerAI().jinit_SpinnerAI(direction, ownerLayerInterface, gameInput);
    }
}

