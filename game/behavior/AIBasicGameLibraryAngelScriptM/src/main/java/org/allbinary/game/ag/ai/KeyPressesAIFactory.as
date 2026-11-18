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

class KeyPressesAIFactory : JObjectBase, ArtificialIntelligenceInterfaceFactoryInterface
{

    KeyPressesAIFactory@ jinit_KeyPressesAIFactory()
    {
        return this;
    }
    

    ArtificialIntelligenceInterface@ getInstance(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        bool isSingleKeyProcessing = InputFeatureFactory::getInstance().isSingleKeyProcessing();
        if (isSingleKeyProcessing) {
            return KeyPressesAI().jinit_KeyPressesAI(hashtable, ownerLayerInterface, gameInput);
        } else {
            return MultiKeyPressesAI().jinit_MultiKeyPressesAI(hashtable, ownerLayerInterface, gameInput);
        }
        return null;
    }
}

