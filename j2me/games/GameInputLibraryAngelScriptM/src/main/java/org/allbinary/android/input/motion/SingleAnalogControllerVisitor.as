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
// package org.allbinary.android.input.motion

class SingleAnalogControllerVisitor : AnalogControllerVisitor
{
    int playerInputId_SingleAnalogControllerVisitor;
    

    SingleAnalogControllerVisitor@ jinit_SingleAnalogControllerVisitor(int playerInputId)
    {
        this.jinit_AnalogControllerVisitor();
        this.playerInputId_SingleAnalogControllerVisitor = playerInputId;
        return this;
    }
    

    void process(AllBinaryLayerManager@ allbinaryLayerManager, AnalogLocationInputProcessor@ analogLocationInputProcessor)
    {
        AnalogLocationInput@ analogLocationInput = AnalogLocationInputFactory::getInstance().getInstanceForPlayer(this.playerInputId_SingleAnalogControllerVisitor);
        analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput);
    }
}

