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

class Special4GameInputProcessor : SpecialGameInputProcessor
{
    

    Special4GameInputProcessor@ jinit_Special4GameInputProcessor(CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer)
    {
        this.jinit_SpecialGameInputProcessor(collidableDestroyableDamageableLayer);
        return this;
    }
    

    void processEvent(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent)
    {
        this.collidableDestroyableDamageableLayer.special4(allbinaryLayerManager, gameKeyEvent);
    }
}

