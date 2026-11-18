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
// package org.allbinary.game.layer.special

class Special5GameInputInterfaceProcessor : SpecialGameInputInterfaceProcessor
{
    

    Special5GameInputInterfaceProcessor@ jinit_Special5GameInputInterfaceProcessor(SpecialGameInputInterface@ collidableDestroyableDamageableLayer)
    {
        this.jinit_SpecialGameInputInterfaceProcessor(collidableDestroyableDamageableLayer);
        return this;
    }
    

    void processEvent(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent)
    {
        this.specialGameInputInterface.special5(allbinaryLayerManager, gameKeyEvent);
    }
}

