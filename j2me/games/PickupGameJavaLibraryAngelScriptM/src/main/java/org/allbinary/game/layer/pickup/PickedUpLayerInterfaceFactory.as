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

class PickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactoryBase
{
    PickedUpLayerType@ pickedUpLayerType_PickedUpLayerInterfaceFactory;
    IconLayer@ iconLayer_PickedUpLayerInterfaceFactory;
    Animation@ animationInterface_PickedUpLayerInterfaceFactory;
    

    PickedUpLayerInterfaceFactory@ jinit_PickedUpLayerInterfaceFactory(PickedUpLayerType@ pickeUpLayerType, IconLayer@ iconLayer, Animation@ animationInterface)
    {
        this.jinit_PickedUpLayerInterfaceFactoryBase();
        @this.pickedUpLayerType_PickedUpLayerInterfaceFactory = pickeUpLayerType;
        @this.animationInterface_PickedUpLayerInterfaceFactory = animationInterface;
        @this.iconLayer_PickedUpLayerInterfaceFactory = iconLayer;
        return this;
    }
    

    AllBinaryLayer@ getIconLayer()
    {
        return this.iconLayer_PickedUpLayerInterfaceFactory;
    }
    

    Animation@ getAnimationInterface()
    {
        return this.animationInterface_PickedUpLayerInterfaceFactory;
    }
    

    PickedUpLayerType@ getPickedUpLayerType()
    {
        return this.pickedUpLayerType_PickedUpLayerInterfaceFactory;
    }
}

