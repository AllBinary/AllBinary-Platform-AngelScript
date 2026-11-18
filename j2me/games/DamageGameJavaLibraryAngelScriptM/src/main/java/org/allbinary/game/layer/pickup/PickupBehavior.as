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

class PickupBehavior : JObjectBase, PickupBehaviorInterface
{
    LogUtil@ logUtil;
    int countedIndex;
    CollidableCompositeLayer@ ownerLayerInterface;

    // Java field initializers run after the super constructor
    void jfields_PickupBehavior()
    {
    @this.logUtil = LogUtil::getInstance();
    
    
    }
    

    PickupBehavior@ jinit_PickupBehavior(CollidableCompositeLayer@ ownerLayerInterface, int countedIndex)
    {
        this.jfields_PickupBehavior();
        @this.ownerLayerInterface = ownerLayerInterface;
        this.countedIndex = countedIndex;
        return this;
    }
    

    void doPickup(PickupProcessorInterface@ pickupProcessorInterface)
    {
        try {
            HealthInterfaceCompositeInterface@ healthInterfaceCompositeInterface = cast<HealthInterfaceCompositeInterface>(this.ownerLayerInterface);
            if (healthInterfaceCompositeInterface.getHealthInterface().isAlive()) {
                pickupProcessorInterface.process(this.ownerLayerInterface);
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "doPickup", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void doPickupLayer(PickedUpLayerInterface@ pickupLayerInterface)
    {
        try {
            PickedUpLayerInterfaceFactoryInterface@ pickedUpLayerInterfaceFactoryInterface = pickupLayerInterface.getPickedUpLayerInterfaceFactoryInterface();
            PickedUpLayerType@ pickedUpLayerType = pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType();
            PickedUpLayerTypeFactory@ pickedUpLayerTypeFactory = PickedUpLayerTypeFactory::getInstance();
            if (pickedUpLayerType is pickedUpLayerTypeFactory.BEAM || pickedUpLayerType is pickedUpLayerTypeFactory.MINE || pickedUpLayerType is pickedUpLayerTypeFactory.PROJECTILE || pickedUpLayerType is pickedUpLayerTypeFactory.ENHANCEMENT) {
                this.add(cast<CountedPickedUpLayerInterfaceFactoryInterface>(pickedUpLayerInterfaceFactoryInterface));
            } else if (pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType() is pickedUpLayerTypeFactory.PART) {
                CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer = cast<CollidableDestroyableDamageableLayer>(this.ownerLayerInterface);
                collidableDestroyableDamageableLayer.addPart(pickedUpLayerInterfaceFactoryInterface);
            } else if (pickedUpLayerType is pickedUpLayerTypeFactory.NONE) {
            } else {
                PickupProcessorInterface@ pickupProcessorInterface = cast<PickupProcessorInterface>(pickedUpLayerInterfaceFactoryInterface);
                this.doPickup(pickupProcessorInterface);
            }
            pickupLayerInterface.setPickedUp();
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            PreLogUtil::putOE(commonStrings.EXCEPTION, this, "doPickup", e);
            }
            else { jthrow(jex1); }
        }
    }
    

    void add(CountedPickedUpLayerInterfaceFactoryInterface@ countedPickedUpLayerInterfaceFactoryInterface)
    {
        int partIndex = countedPickedUpLayerInterfaceFactoryInterface.getId() + this.countedIndex;
        this.addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex);
    }
    

    void addAt(CountedPickedUpLayerInterfaceFactoryInterface@ countedPickedUpLayerInterfaceFactoryInterface, int partIndex)
    {
        CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer = cast<CollidableDestroyableDamageableLayer>(this.ownerLayerInterface);
        CountedLayerInterfaceFactoryPart@ countedLayerInterfaceFactory = cast<CountedLayerInterfaceFactoryPart>(collidableDestroyableDamageableLayer.getPartInterfaceArray()[partIndex]);
        countedLayerInterfaceFactory.setTotal(countedLayerInterfaceFactory.getTotal() + countedPickedUpLayerInterfaceFactoryInterface.getTotal());
    }
    

    CountedLayerInterfaceFactoryPart@ getFirstAvailableCountedLayerInterfaceFactory(PickedUpLayerType@[]@ pickedUpLayerTypeArray)
    {
        CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer = cast<CollidableDestroyableDamageableLayer>(this.ownerLayerInterface);
        PartInterface@[]@ partInterfaceArray = collidableDestroyableDamageableLayer.getPartInterfaceArray();
        int size = int(partInterfaceArray.length());
        CountedLayerInterfaceFactoryPart@ nextCountedLayerInterfaceFactory;
        CountedPickedUpLayerInterfaceFactory@ countedPickedUpLayerInterfaceFactory;
        for (int index = this.countedIndex; index < size; index++) {
            @nextCountedLayerInterfaceFactory = cast<CountedLayerInterfaceFactoryPart>(collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]);
            @countedPickedUpLayerInterfaceFactory = nextCountedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
            for (int index2 = int(pickedUpLayerTypeArray.length()); --index2 >= 0; ) {
                if (countedPickedUpLayerInterfaceFactory.getPickedUpLayerType() is pickedUpLayerTypeArray[index2]) {
                    if (nextCountedLayerInterfaceFactory.getTotal() > 0) {
                        return nextCountedLayerInterfaceFactory;
                    }
                }
            }
        }
        return CountedLayerInterfaceFactoryPart::NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    }
    

    CountedLayerInterfaceFactoryPart@ getCountedLayerInterfaceFactoryForSlot(int slotIndex)
    {
        int currentSlot = 0;
        CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer = cast<CollidableDestroyableDamageableLayer>(this.ownerLayerInterface);
        PartInterface@[]@ partInterfaceArray = collidableDestroyableDamageableLayer.getPartInterfaceArray();
        int size = int(partInterfaceArray.length());
        CountedLayerInterfaceFactoryPart@ nextCountedLayerInterfaceFactory;
        for (int index = this.countedIndex; index < size; index++) {
            @nextCountedLayerInterfaceFactory = cast<CountedLayerInterfaceFactoryPart>(collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]);
            if (nextCountedLayerInterfaceFactory.getTotal() > 0) {
                if (currentSlot == slotIndex) {
                    return nextCountedLayerInterfaceFactory;
                } else {
                    currentSlot++;
                }
            }
        }
        return CountedLayerInterfaceFactoryPart::NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    }
    

    int getCountedIndex()
    {
        return this.countedIndex;
    }
}

namespace PickupBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_PICKUP_BEHAVIOR = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_NULL_PICKUP_BEHAVIOR;
    JObject@ get_NULL_PICKUP_BEHAVIOR() property { jclinit(); return jcell_NULL_PICKUP_BEHAVIOR; }
    void set_NULL_PICKUP_BEHAVIOR(JObject@ value) property { jclinit(); @jcell_NULL_PICKUP_BEHAVIOR = value; }
    

    PickupBehavior@ getNullInstance()
    {
        if (PickupBehavior::NULL_PICKUP_BEHAVIOR is NullUtil::getInstance().NULL_OBJECT) {
            @PickupBehavior::NULL_PICKUP_BEHAVIOR = PickupBehavior().jinit_PickupBehavior(CollidableCompositeLayer::getNullInstance(), 0);
        }
        return cast<PickupBehavior>(PickupBehavior::NULL_PICKUP_BEHAVIOR);
    }
}

