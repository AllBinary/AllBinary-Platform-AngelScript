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
// package org.allbinary.game.ag.ai.sequence

class SequenceAI : ArrayAI
{
    int index_SequenceAI;
    

    SequenceAI@ jinit_SequenceAI(ArtificialIntelligenceInterface@[]@ artificialIntelligenceInterfaceArray, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_ArrayAI(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput);
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        this.getArtificialIntelligenceInterface()[this.index_SequenceAI].processAI(allBinaryLayerManager);
    }
    

    void next()
    {
        this.index_SequenceAI++;
        ArtificialIntelligenceInterface@ artificialIntelligenceInterface = this.getSelectedArtificialIntelligenceInterface();
        if (artificialIntelligenceInterface.getId() == ArtificialIntelligence::AI_ID) {
            ArtificialIntelligenceTransitionInterface@ artificialIntelligenceTransitionInterface = cast<ArtificialIntelligenceTransitionInterface>(artificialIntelligenceInterface);
            artificialIntelligenceTransitionInterface.transition();
        }
    }
    

    int getIndex()
    {
        return this.index_SequenceAI;
    }
    

    void setIndex(int index)
    {
        this.index_SequenceAI = index;
    }
    

    ArtificialIntelligenceInterface@ getSelectedArtificialIntelligenceInterface()
    {
        return this.getArtificialIntelligenceInterface()[this.index_SequenceAI];
    }
    

    string getName()
    {
        return SequenceAI::SEQUENCE_AI;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(ArrayAI::toString());
        stringBuffer.append(" Selected AI: ");
        stringBuffer.append(StringUtil::getInstance().toString(this.getSelectedArtificialIntelligenceInterface()));
        return stringBuffer.toString();
    }
}

namespace SequenceAI
{
    const string SEQUENCE_AI = "Sequence AI";
}

