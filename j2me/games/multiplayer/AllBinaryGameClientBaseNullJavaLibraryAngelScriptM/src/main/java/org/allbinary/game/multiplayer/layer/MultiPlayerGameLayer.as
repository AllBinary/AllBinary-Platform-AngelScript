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
// package org.allbinary.game.multiplayer.layer

class MultiPlayerGameLayer : CollidableDestroyableDamageableLayer, MultiPlayerGameLayerInterface
{
    

    MultiPlayerGameLayer@ jinit_MultiPlayerGameLayer(RemoteInfo@ remoteInfo, Group@[]@ groupInterface, string name, Rectangle@ layerInfo, ViewPositionBase@ viewPosition)
    {
        this.jinit_CollidableDestroyableDamageableLayer(groupInterface, name, layerInfo, viewPosition);
        return this;
    }
    

    MultiplayerBehavior@ getMultiplayerBehavior()
    {
        return MultiplayerBehavior::NULL_MULTIPLAYER_BEHAVIOR;
    }
    

    void setPingInfo(bool show)
    {
    }
    

    void setFiring(int16 firing)
    {
    }
    

    int16 getFiring()
    {
        return 0;
    }
}

