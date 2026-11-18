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
// package org.allbinary.game.layer.pickup

class PickupLayer : MultiPlayerGameLayer, PickedUpLayerInterface, PickupableInterface
{
    PickedUpLayerInterfaceFactoryInterface@ pickedUpLayerInterfaceFactoryInterface_PickupLayer;
    bool destroyed_PickupLayer;
    Animation@ animationInterface_PickupLayer;

    // Java field initializers run after the super constructor
    void jfields_PickupLayer()
    {
    @this.pickedUpLayerInterfaceFactoryInterface_PickupLayer = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY;
    
    @this.animationInterface_PickupLayer = NullAnimationFactory::getFactoryInstance().getInstance(0);
    }
    

    PickupLayer@ jinit_PickupLayer(string name, RemoteInfo@ remoteInfo, int total, PickedUpLayerInterfaceFactoryInterface@ pickedUpLayerInterfaceFactoryInterface, Animation@ animationInterface, Rectangle@ rectangle, ViewPositionBase@ viewPosition)
    {
        this.jinit_MultiPlayerGameLayer(remoteInfo, BasicGroupFactory::getInstance().NONE_ARRAY, name, rectangle, viewPosition);
        this.jfields_PickupLayer();
        this.setCollidableInferface(CollidableAlwaysPickupNeverCollideBehaviorFactory::getInstance().createBehavior());
        this.setLayerWidth(10);
        this.setLayerHeight(10);
        this.init(pickedUpLayerInterfaceFactoryInterface, animationInterface);
        return this;
    }
    

    void init(PickedUpLayerInterfaceFactoryInterface@ pickedUpLayerInterfaceFactoryInterface, Animation@ animationInterface)
    {
        @this.pickedUpLayerInterfaceFactoryInterface_PickupLayer = pickedUpLayerInterfaceFactoryInterface;
        @this.animationInterface_PickupLayer = animationInterface;
        this.setDestroyed(false);
    }
    

    void initXYZ(int x, int y, int z)
    {
        this.setPosition(x, y, z);
    }
    

    void paint(Graphics@ graphics)
    {
        ViewPositionBase@ viewPosition = this.getViewPosition();
        int viewX = viewPosition.getX();
        int viewY = viewPosition.getY();
        this.animationInterface_PickupLayer.paintXY(graphics, viewX, viewY);
    }
    

    void paintThreed(Graphics@ graphics)
    {
        ViewPositionBase@ viewPosition = this.getViewPosition();
        int viewX = viewPosition.getX();
        int viewY = viewPosition.getY();
        this.animationInterface_PickupLayer.paintThreedXYZ(graphics, viewX, viewY, 3);
    }
    

    PickedUpLayerInterfaceFactoryInterface@ getPickedUpLayerInterfaceFactoryInterface()
    {
        return this.pickedUpLayerInterfaceFactoryInterface_PickupLayer;
    }
    

    void setPickedUp()
    {
        this.setDestroyed(true);
    }
    

    bool isDestroyed()
    {
        return this.destroyed_PickupLayer;
    }
    

    void setDestroyed(bool destroyed)
    {
        this.destroyed_PickupLayer = destroyed;
        if (this.isDestroyed()) {
            DestroyedLayerProcessor::getInstance().add(this);
        }
    }
    

    void damage(int damage, int damageType)
    {
    }
    

    int getDamage(int damageType)
    {
        return 0;
    }
    

    void set(GL@ gl)
    {
        OpenGLSurfaceChangedInterface@ openGLSurfaceChangedInterface = cast<OpenGLSurfaceChangedInterface>(this.animationInterface_PickupLayer);
        openGLSurfaceChangedInterface.set(gl);
    }
}

