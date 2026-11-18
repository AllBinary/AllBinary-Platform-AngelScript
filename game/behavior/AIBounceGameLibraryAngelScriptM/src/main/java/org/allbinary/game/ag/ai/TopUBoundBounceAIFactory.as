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
// package org.allbinary.game.ag.ai

class TopUBoundBounceAIFactory : JObjectBase, ArtificialIntelligenceInterfaceFactoryInterface
{

    TopUBoundBounceAIFactory@ jinit_TopUBoundBounceAIFactory()
    {
        return this;
    }
    

    ArtificialIntelligenceInterface@ getInstance(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        VelocityInterfaceCompositeInterface@ velocityInterfaceCompositeInterface = cast<VelocityInterfaceCompositeInterface>(ownerLayerInterface);
        VelocityInterface@ velocityInterface = cast<VelocityInterface>(velocityInterfaceCompositeInterface.getVelocityProperties());
        int maxDistancePerTick = (velocityInterface.getMaxForwardVelocity() >>> velocityInterface.getVelocityXBasicDecimalP().getScaledFactor());
        int halfWidth = ownerLayerInterface.getWidth() * 2 + maxDistancePerTick + 1;
        int halfHeight = ownerLayerInterface.getHeight() * 2 + maxDistancePerTick + 1;
        GPoint@ point = PointFactory::getInstance().createXY(halfWidth, halfHeight + 60);
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        Rectangle@ rectangle = Rectangle().jinit_Rectangle(point, (displayInfo.getLastWidth() - halfWidth - point.getX()), (displayInfo.getLastHeight() - halfHeight - point.getY()));
        return BoundBounceAI().jinit_BoundBounceAI(ownerLayerInterface, gameInput, TopULayerBounds().jinit_TopULayerBounds(rectangle), ReverseVelocityBoundsVisitor().jinit_ReverseVelocityBoundsVisitor(ownerLayerInterface));
    }
}

