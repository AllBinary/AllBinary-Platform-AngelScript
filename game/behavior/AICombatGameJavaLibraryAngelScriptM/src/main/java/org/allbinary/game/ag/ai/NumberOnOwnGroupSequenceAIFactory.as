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

class NumberOnOwnGroupSequenceAIFactory : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_NumberOnOwnGroupSequenceAIFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    NumberOnOwnGroupSequenceAIFactory@ jinit_NumberOnOwnGroupSequenceAIFactory()
    {
        this.jfields_NumberOnOwnGroupSequenceAIFactory();
        return this;
    }
    

    ArtificialIntelligenceInterface@ getInstance(ABHashtable@ hashtable, ArtificialIntelligenceInterface@[]@ artificialIntelligenceInterface, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        JInteger@[]@ integerArray = NumberInSameGroupSequence::getInstance().NUMBER_ON_SAME_TEAM_SEQUENCE;
        BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
        for (int index = 0; index < int(integerArray.length()); index++) {
            JObject@ integerCanBeNull = hashtable.get(integerArray[index]);
            if (integerCanBeNull is null) {
                break;
            }
            list.add(integerCanBeNull);
        }
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Total AI Properties: ");
        stringBuffer.appendint(list.size());
        stringBuffer.append(" == Total AI: ");
        stringBuffer.appendint(int(artificialIntelligenceInterface.length()));
        stringBuffer.append(" + 1");
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE);
        if (int(artificialIntelligenceInterface.length()) - 1 > list.size()) {
            jthrow(Exception().jinit_Exception("Not enough AI properties."));
        }
        if (int(artificialIntelligenceInterface.length()) - 1 < list.size()) {
            jthrow(Exception().jinit_Exception("Too Many AI properties."));
        }
        JInteger@[]@ numberOnSameTeam = array<JInteger@>(list.size());
        for (int index = 0; index < int(numberOnSameTeam.length()); index++) {
            @numberOnSameTeam[index] = cast<JInteger>(list.objectArray[index]);
        }
        return NumberOnOwnGroupSequenceAI().jinit_NumberOnOwnGroupSequenceAI(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput);
    }
}

