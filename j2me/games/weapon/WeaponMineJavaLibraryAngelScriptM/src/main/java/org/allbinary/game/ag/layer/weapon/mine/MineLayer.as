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
// package org.allbinary.game.ag.layer.weapon.mine

class MineLayer : SimpleWeaponLayer
{
    ViewPositionEventHandler@ viewPositionEventHandler_MineLayer;

    // Java field initializers run after the super constructor
    void jfields_MineLayer()
    {
    @this.viewPositionEventHandler_MineLayer = ViewPositionEventHandler::getInstance();
    }
    

    MineLayer@ jinit_MineLayer(ViewPositionBase@ viewPosition)
    {
        this.jinit_SimpleWeaponLayer(MineLayer::NAME, RemoteInfo::REMOTE_INFO, -1, NoMovementFactory::getInstance().getMovmentInstance(), FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(MineWeaponResources::getInstance().RESOURCE).getInstance(0), SimpleWeaponLayer::createDestroyed(), Rectangle().jinit_Rectangle(PointFactory::getInstance().ZERO_ZERO, 10, 10), viewPosition);
        this.jfields_MineLayer();
        return this;
    }
    

    void initXYZ(int x, int y, int z)
    {
        this.setPosition(x + 5, y + 5, z);
        this.viewPositionEventHandler_MineLayer.addListener(cast<AllBinaryLayer>(this));
        SecondaryPlayerQueueFactory::getInstance().add(DropWeaponSound::getInstance());
    }
    

    void damage(int damage, int damageType)
    {
        this.totalDamage = this.getInitDamage() + 1;
    }
    

    int getDamage(int damageType)
    {
        SimpleWeaponLayer::getDamage(damageType);
        return this.getInitDamage();
    }
    

    void setDestroyed(bool destroyed)
    {
        SimpleWeaponLayer::setDestroyed(destroyed);
        if (this.isDestroyed()) {
            this.viewPositionEventHandler_MineLayer.removeListener(this);
        }
    }
}

namespace MineLayer
{
    const string NAME = "MineLayer";
}

