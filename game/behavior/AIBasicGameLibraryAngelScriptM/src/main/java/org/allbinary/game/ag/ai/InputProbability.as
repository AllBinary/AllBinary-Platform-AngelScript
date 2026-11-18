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

class InputProbability : JObjectBase
{
    JInteger@[]@[]@ likelyhoodIntegerArray;
    JInteger@[]@ repeatLikelyhoodIntegerArray;
    int max;
    TimeDelayHelper@ timeDelayHelper;
    

    InputProbability@ jinit_InputProbability(JInteger@[]@[]@ likelyhoodIntegerArray, JInteger@[]@ repeatLikelyhoodIntegerArray, int max, TimeDelayHelper@ timeDelayHelper)
    {
        @this.likelyhoodIntegerArray = likelyhoodIntegerArray;
        @this.repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray;
        this.max = max;
        @this.timeDelayHelper = timeDelayHelper;
        return this;
    }
    

    JInteger@[]@[]@ getLikelyhoodIntegerArray()
    {
        return this.likelyhoodIntegerArray;
    }
    

    JInteger@[]@ getRepeatLikelyhoodIntegerArray()
    {
        return this.repeatLikelyhoodIntegerArray;
    }
    

    int getMax()
    {
        return this.max;
    }
    

    TimeDelayHelper@ getTimeDelayHelper()
    {
        return this.timeDelayHelper;
    }
    

    ABHashtable@ toHashtable()
    {
        ABHashtable@ hashtable = StdUtil::getInstance().createHashtable();
        hashtable.put(InputProbability::INPUT_PROBABILITY, this);
        return hashtable;
    }
}

namespace InputProbability
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_INPUT_PROBABILITY = SmallIntegerSingletonFactory::getInstance().getAt(0);
    }

    JInteger@ jcell_INPUT_PROBABILITY;
    JInteger@ get_INPUT_PROBABILITY() property { jclinit(); return jcell_INPUT_PROBABILITY; }
    void set_INPUT_PROBABILITY(JInteger@ value) property { jclinit(); @jcell_INPUT_PROBABILITY = value; }
}

