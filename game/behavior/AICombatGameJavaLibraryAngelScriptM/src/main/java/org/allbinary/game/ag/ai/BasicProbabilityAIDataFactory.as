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

class BasicProbabilityAIDataFactory : JObjectBase
{

    BasicProbabilityAIDataFactory@ jinit_BasicProbabilityAIDataFactory()
    {
        return this;
    }
    

    ABHashtable@ getInstance()
    {
        JInteger@[]@[]@ likelyhoodIntegerArray = BasicProbabilityAIDataFactory::jnewArray2_JInteger(Canvas::KEY_NUM9 + 1, 2);
        SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
        @likelyhoodIntegerArray[Canvas::UP][0] = smallIntegerSingletonFactory.getAt(0);
        @likelyhoodIntegerArray[Canvas::UP][1] = smallIntegerSingletonFactory.getAt(10);
        @likelyhoodIntegerArray[Canvas::DOWN][0] = smallIntegerSingletonFactory.getAt(10);
        @likelyhoodIntegerArray[Canvas::DOWN][1] = smallIntegerSingletonFactory.getAt(14);
        @likelyhoodIntegerArray[Canvas::LEFT][0] = smallIntegerSingletonFactory.getAt(14);
        @likelyhoodIntegerArray[Canvas::LEFT][1] = smallIntegerSingletonFactory.getAt(18);
        @likelyhoodIntegerArray[Canvas::RIGHT][0] = smallIntegerSingletonFactory.getAt(18);
        @likelyhoodIntegerArray[Canvas::RIGHT][1] = smallIntegerSingletonFactory.getAt(22);
        @likelyhoodIntegerArray[Canvas::KEY_NUM7][0] = smallIntegerSingletonFactory.getAt(22);
        @likelyhoodIntegerArray[Canvas::KEY_NUM7][1] = smallIntegerSingletonFactory.getAt(26);
        @likelyhoodIntegerArray[Canvas::KEY_NUM9][0] = smallIntegerSingletonFactory.getAt(26);
        @likelyhoodIntegerArray[Canvas::KEY_NUM9][1] = smallIntegerSingletonFactory.getAt(30);
        @likelyhoodIntegerArray[Canvas::KEY_NUM1][0] = smallIntegerSingletonFactory.getAt(30);
        @likelyhoodIntegerArray[Canvas::KEY_NUM1][1] = smallIntegerSingletonFactory.getAt(40);
        JInteger@[]@ repeatLikelyhoodIntegerArray = array<JInteger@>(Canvas::KEY_NUM9 + 1);
        @repeatLikelyhoodIntegerArray[Canvas::UP] = smallIntegerSingletonFactory.getAt(0);
        @repeatLikelyhoodIntegerArray[Canvas::DOWN] = smallIntegerSingletonFactory.getAt(0);
        @repeatLikelyhoodIntegerArray[Canvas::LEFT] = smallIntegerSingletonFactory.getAt(0);
        @repeatLikelyhoodIntegerArray[Canvas::RIGHT] = smallIntegerSingletonFactory.getAt(0);
        @repeatLikelyhoodIntegerArray[Canvas::KEY_NUM7] = smallIntegerSingletonFactory.getAt(0);
        @repeatLikelyhoodIntegerArray[Canvas::KEY_NUM9] = smallIntegerSingletonFactory.getAt(0);
        @repeatLikelyhoodIntegerArray[Canvas::KEY_NUM1] = smallIntegerSingletonFactory.getAt(10);
        InputProbability@ inputProbability = InputProbability().jinit_InputProbability(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, 42, NoTimeDelayHelper::SINGLETON);
        return inputProbability.toHashtable();
    }
}

namespace BasicProbabilityAIDataFactory
{

    JInteger@[]@[]@ jnewArray2_JInteger(int a, int b)
    {
        JInteger@[]@[]@ result = array<JInteger@[]@>(a);
        for (int i = 0; i < a; i++) { @result[i] = array<JInteger@>(b); }
        return result;
    }
}

