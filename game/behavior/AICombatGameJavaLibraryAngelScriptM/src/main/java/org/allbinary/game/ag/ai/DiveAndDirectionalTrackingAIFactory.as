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

class DiveAndDirectionalTrackingAIFactory : JObjectBase, ArtificialIntelligenceInterfaceFactoryInterface
{

    DiveAndDirectionalTrackingAIFactory@ jinit_DiveAndDirectionalTrackingAIFactory()
    {
        return this;
    }
    

    ArtificialIntelligenceInterface@ getInstance(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        JObject@ visitorCanBeNull = hashtable.get(BasicAI::AI_VISITOR);
        if (visitorCanBeNull is null) {
            @visitorCanBeNull = ThrustAIVisitorFactory::getInstance();
        }
        ABHashtable@ hashtable2 = BasicProbabilityAIDataFactory().jinit_BasicProbabilityAIDataFactory().getInstance();
        hashtable2.put(BasicAI::AI_VISITOR, LastKeyAIVisitorFactory::getInstance());
        ArtificialIntelligenceInterface@ artificialIntelligenceInterface = BasicRandomAIFactory().jinit_BasicRandomAIFactory().getInstance(hashtable2, ownerLayerInterface, gameInput);
        return DiveAndDirectionalTrackingAI().jinit_DiveAndDirectionalTrackingAI(ownerLayerInterface, artificialIntelligenceInterface, gameInput, cast<Visitor>(visitorCanBeNull));
    }
}

