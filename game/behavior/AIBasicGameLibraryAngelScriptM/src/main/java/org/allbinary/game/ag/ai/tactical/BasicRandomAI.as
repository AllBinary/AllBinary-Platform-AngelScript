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
// package org.allbinary.game.ag.ai.tactical

class BasicRandomAI : BasicAI
{
    int i_random_BasicRandomAI;
    InputProbability@ inputProbability_BasicRandomAI;
    Visitor@ visitor_BasicRandomAI;
    int[]@ keyArray_BasicRandomAI;
    MyRandomFactory@ myRandomFactory_BasicRandomAI;

    // Java field initializers run after the super constructor
    void jfields_BasicRandomAI()
    {
    this.i_random_BasicRandomAI = 0;
    
    
    @this.keyArray_BasicRandomAI = array<int> = {Canvas::UP, Canvas::DOWN, Canvas::LEFT, Canvas::RIGHT, Canvas::KEY_NUM1, Canvas::KEY_NUM7, Canvas::KEY_NUM9};
    @this.myRandomFactory_BasicRandomAI = MyRandomFactory::getInstance();
    }
    

    BasicRandomAI@ jinit_BasicRandomAI(AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput, InputProbability@ inputProbability, Visitor@ visitor)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_BasicRandomAI();
        @this.inputProbability_BasicRandomAI = inputProbability;
        @this.visitor_BasicRandomAI = visitor;
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        if (this.inputProbability_BasicRandomAI.getTimeDelayHelper().isTime(GameTickTimeDelayHelperFactory::getInstance().startTime)) {
            this.i_random_BasicRandomAI = this.myRandomFactory_BasicRandomAI.getAbsoluteNextInt(this.inputProbability_BasicRandomAI.getMax());
            bool repeat = false;
            JInteger@[]@ repeatLikelyhoodIntegerArray = this.inputProbability_BasicRandomAI.getRepeatLikelyhoodIntegerArray();
            if (this.getLastKey() != -1 && repeatLikelyhoodIntegerArray[this.getLastKey()].intValue() >= this.i_random_BasicRandomAI) {
                repeat = true;
            }
            if (!repeat) {
                JInteger@[]@[]@ likelyhoodIntegerArray = this.inputProbability_BasicRandomAI.getLikelyhoodIntegerArray();
                this.i_random_BasicRandomAI = this.myRandomFactory_BasicRandomAI.getAbsoluteNextInt(this.inputProbability_BasicRandomAI.getMax());
                int size = int(this.keyArray_BasicRandomAI.length());
                JInteger@[]@ likelyhoodIntegerKeyArray;
                for (int index = 0; index < size; index++) {
                    int key = this.keyArray_BasicRandomAI[index];
                    @likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key];
                    if (int(likelyhoodIntegerArray.length()) >= key && likelyhoodIntegerKeyArray[0] !is null) {
                        if (this.i_random_BasicRandomAI >= likelyhoodIntegerKeyArray[0].intValue() && this.i_random_BasicRandomAI < likelyhoodIntegerKeyArray[1].intValue()) {
                            this.setLastKey(key);
                            break;
                        }
                    }
                }
            }
            this.visitor_BasicRandomAI.visit(this);
        }
    }
}

