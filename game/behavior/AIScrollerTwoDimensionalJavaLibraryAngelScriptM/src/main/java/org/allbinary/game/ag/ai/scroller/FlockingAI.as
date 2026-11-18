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
// package org.allbinary.game.ag.ai.scroller

class FlockingAI : BasicAI
{
    int allowedDistance_FlockingAI;
    

    FlockingAI@ jinit_FlockingAI(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        JInteger@ allowedDistance = cast<JInteger>(hashtable.get(BasePatrolAI::MAX_DISTANCE));
        this.allowedDistance_FlockingAI = allowedDistance.intValue();
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        int maxDistance = 0;
        AllBinaryLayer@ farAllbinaryLayer = AllBinaryLayer::NULL_ALLBINARY_LAYER;
        GroupLayerManagerListener@ groupLayerManagerListener = GroupLayerManagerListener::getInstance();
        BasicArrayList@ list = groupLayerManagerListener.getList(BasicGroupFactory::getInstance().ENEMY);
        int size = list.size();
        AllBinaryLayer@ allBinaryLayer;
        AllBinaryLayer@ ownerLayerInterface;
        for (int index = 0; index < size; index++) {
            @allBinaryLayer = cast<AllBinaryLayer>(list.get(index));
            if (allBinaryLayer.getType() != WeaponLayer::getStaticType()) {
                int distance = this.getXYDistance(allBinaryLayer);
                if (distance > maxDistance) {
                    maxDistance = distance;
                    @farAllbinaryLayer = allBinaryLayer;
                    if (distance > this.allowedDistance_FlockingAI) {
                        break;
                    }
                }
            }
        }
        if (maxDistance > this.allowedDistance_FlockingAI) {
            if (farAllbinaryLayer !is AllBinaryLayer::NULL_ALLBINARY_LAYER) {
                @ownerLayerInterface = this.getOwnerLayerInterface();
                if (farAllbinaryLayer.getXP() < ownerLayerInterface.getXP()) {
                    this.processKeyAI(Canvas::LEFT);
                } else if (farAllbinaryLayer.getXP() > ownerLayerInterface.getXP()) {
                    this.processKeyAI(Canvas::RIGHT);
                } else if (farAllbinaryLayer.getYP() > ownerLayerInterface.getYP()) {
                    this.processKeyAI(Canvas::UP);
                } else if (farAllbinaryLayer.getYP() < ownerLayerInterface.getYP()) {
                    this.processKeyAI(Canvas::DOWN);
                }
            }
        }
    }
    

    int getXYDistance(AllBinaryLayer@ allBinaryLayer)
    {
        AllBinaryLayer@ ownerLayerInterface = this.getOwnerLayerInterface();
        int xTotalDistance = (allBinaryLayer.getXP() + allBinaryLayer.getHalfWidth()) - (ownerLayerInterface.getXP() + ownerLayerInterface.getHalfWidth());
        int yTotalDistance = (allBinaryLayer.getYP() + allBinaryLayer.getHalfHeight()) - (ownerLayerInterface.getYP() + ownerLayerInterface.getHalfHeight());
        MathUtil@ mathUtil = MathUtil::getInstance();
        int totalDistance = mathUtil.abs(xTotalDistance) + mathUtil.abs(yTotalDistance);
        return totalDistance;
    }
}

