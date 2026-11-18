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
// package org.allbinary.game.input

class PCGameInputMapping : PersistentInputMapping
{
    

    PCGameInputMapping@ jinit_PCGameInputMapping()
    {
        this.jinit_PersistentInputMapping(GamePersistanceStrings::getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID);
        return this;
    }
    

    void init(AbeClientInformationInterface@ abeClientInformation)
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        PCKeyFactory::getInstance();
        TouchMotionGestureFactory::getInstance();
        TrackballMotionGestureFactory::getInstance();
        BasicTouchInputFactory::getInstance();
        PersistentInputMapping::init(abeClientInformation);
        if (this.getTotalMapped() == 0 || this.isDefaultNew()) {
            this.getInputMapping().addMapping(this.getDefault());
            this.save(abeClientInformation);
        }
    }
    

    bool isDelete(Input@ input)
    {
        if (input is PCKeyFactory::getInstance().DEL) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    bool isSystemInput(Input@ input)
    {
        return false;
    }
}

