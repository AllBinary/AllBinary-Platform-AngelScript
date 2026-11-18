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
// package org.allbinary.game.layer.weapon

class DamageWeaponLayer : WeaponLayer
{
    

    DamageWeaponLayer@ jinit_DamageWeaponLayer(string name, RemoteInfo@ remoteInfo, Movement@ movement, Animation@ animationInterface, Animation@ destroyedAnimationInterface, Rectangle@ rectangle, ViewPositionBase@ viewPosition, string username, int actorSessionId, int id, int multiPlayerType)
    {
        this.jinit_WeaponLayer(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
        this.setCollidableInferface(CollidableDamageWeaponBehavior().jinit_CollidableDamageWeaponBehavior(true));
        return this;
    }
}

