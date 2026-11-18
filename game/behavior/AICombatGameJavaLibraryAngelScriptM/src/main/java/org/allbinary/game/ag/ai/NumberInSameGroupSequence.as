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

class NumberInSameGroupSequence : JObjectBase
{
    JInteger@ NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO;
    JInteger@ NUMBER_ON_SAME_TEAM_SEQUENCE_ONE;
    JInteger@ NUMBER_ON_SAME_TEAM_SEQUENCE_TWO;
    JInteger@ NUMBER_ON_SAME_TEAM_SEQUENCE_THREE;
    JInteger@ NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR;
    JInteger@ NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE;
    JInteger@ NUMBER_ON_SAME_TEAM_SEQUENCE_SIX;
    JInteger@ NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN;
    JInteger@ NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT;
    JInteger@ NUMBER_ON_SAME_TEAM_SEQUENCE_NINE;
    JInteger@[]@ NUMBER_ON_SAME_TEAM_SEQUENCE;
    

    NumberInSameGroupSequence@ jinit_NumberInSameGroupSequence()
    {
        SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = smallIntegerSingletonFactory.getAt(100);
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = smallIntegerSingletonFactory.getAt(101);
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = smallIntegerSingletonFactory.getAt(102);
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = smallIntegerSingletonFactory.getAt(103);
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = smallIntegerSingletonFactory.getAt(104);
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = smallIntegerSingletonFactory.getAt(105);
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = smallIntegerSingletonFactory.getAt(106);
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = smallIntegerSingletonFactory.getAt(107);
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = smallIntegerSingletonFactory.getAt(108);
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = smallIntegerSingletonFactory.getAt(109);
        @this.NUMBER_ON_SAME_TEAM_SEQUENCE = array<JInteger@> = {this.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, this.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, this.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, this.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, this.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, this.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE};
        return this;
    }
}

namespace NumberInSameGroupSequence
{
    

    NumberInSameGroupSequence@ getInstance()
    {
        return NumberInSameGroupSequence().jinit_NumberInSameGroupSequence();
    }
}

