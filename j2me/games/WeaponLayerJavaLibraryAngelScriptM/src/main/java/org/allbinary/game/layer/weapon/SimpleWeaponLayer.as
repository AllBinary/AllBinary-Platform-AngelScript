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

class SimpleWeaponLayer : WeaponLayer
{
    

    SimpleWeaponLayer@ jinit_SimpleWeaponLayer(string name, RemoteInfo@ remoteInfo, int multiPlayerType, Movement@ movement, Animation@ animationInterface, Animation@ destroyedAnimationInterface, Rectangle@ rectangle, ViewPositionBase@ viewPosition)
    {
        this.jinit_WeaponLayer(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
        this.setCollidableInferface(CollidableWeaponBehavior().jinit_CollidableWeaponBehavior(true));
        return this;
    }
}

namespace SimpleWeaponLayer
{
    

    Animation@ createDestroyed()
    {
        return FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().getProcedural(ExplosionResources::getInstance().THIRD_EXPLOSION_RESOURCE).getInstanceAnimation(NullIndexedAnimationFactory::getFactoryInstance().getInstance(0));
    }
}

