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

class CollidableDestroyableDamageableLayer : CollidableCompositeLayer, DestroyableInterface, DamageableInterface, PickupCompositeInterface, SpecialGameInputInterface
{
    Group@[]@ groupInterface_CollidableDestroyableDamageableLayer;
    bool readyForExplosion_CollidableDestroyableDamageableLayer;
    int initWidth_CollidableDestroyableDamageableLayer;
    int initHeight_CollidableDestroyableDamageableLayer;
    int initX_CollidableDestroyableDamageableLayer;
    int initY_CollidableDestroyableDamageableLayer;
    int initZ_CollidableDestroyableDamageableLayer;
    PartInterface@[]@ partInterfaceArrayP;
    PickupBehavior@ pickupBehavior_CollidableDestroyableDamageableLayer;
    AllBinaryGameLayerManager@ allBinaryGameLayerManagerP;
    bool isDraggable;
    bool isDragged;
    bool isDropped;

    // Java field initializers run after the super constructor
    void jfields_CollidableDestroyableDamageableLayer()
    {
    
    
    
    
    
    
    
    @this.partInterfaceArrayP = PartInterfaceUtil::getZeroArray();
    
    @this.allBinaryGameLayerManagerP = AllBinaryGameLayerManager::getNullInstance();
    this.isDraggable = false;
    this.isDragged = false;
    this.isDropped = false;
    }
    

    CollidableDestroyableDamageableLayer@ jinit_CollidableDestroyableDamageableLayer(Group@[]@ groupInterface, string name, Rectangle@ layerInfo, ViewPositionBase@ viewPosition)
    {
        this.jinit_CollidableCompositeLayer(name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory::getInstance());
        this.jfields_CollidableDestroyableDamageableLayer();
        this.initWidth_CollidableDestroyableDamageableLayer = layerInfo.getWidth();
        this.initHeight_CollidableDestroyableDamageableLayer = layerInfo.getHeight();
        @this.groupInterface_CollidableDestroyableDamageableLayer = groupInterface;
        @this.pickupBehavior_CollidableDestroyableDamageableLayer = PickupBehavior::getNullInstance();
        return this;
    }
    

    void initPosition()
    {
        this.setPosition(this.initX_CollidableDestroyableDamageableLayer, this.initY_CollidableDestroyableDamageableLayer, this.initZ_CollidableDestroyableDamageableLayer);
    }
    

    void initPositionXYZ(int x, int y, int z)
    {
        this.initX_CollidableDestroyableDamageableLayer = x;
        this.initY_CollidableDestroyableDamageableLayer = y;
        this.initZ_CollidableDestroyableDamageableLayer = z;
    }
    

    void paint(Graphics@ graphics)
    {
        CollidableCompositeLayer::paint(graphics);
    }
    

    void damage(int damage, int damageType)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    int getDamage(int damageType)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return 0;
    }
    

    bool isDestroyed()
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return false;
    }
    

    Group@[]@ getGroupInterface()
    {
        return this.groupInterface_CollidableDestroyableDamageableLayer;
    }
    

    void setGroupInterface(Group@[]@ teamInterface)
    {
        @this.groupInterface_CollidableDestroyableDamageableLayer = teamInterface;
    }
    

    void setAllBinaryGameLayerManager(AllBinaryGameLayerManager@ allBinaryGameLayerManager)
    {
        @this.allBinaryGameLayerManagerP = allBinaryGameLayerManager;
        if (this.allBinaryGameLayerManagerP is null) {
            jthrow(RuntimeException().jinit_RuntimeException());
        }
    }
    

    bool isReadyForExplosion()
    {
        return this.readyForExplosion_CollidableDestroyableDamageableLayer;
    }
    

    void setReadyForExplosion(bool isReadyForExplosion)
    {
        this.readyForExplosion_CollidableDestroyableDamageableLayer = isReadyForExplosion;
    }
    

    int getInitWidth()
    {
        return this.initWidth_CollidableDestroyableDamageableLayer;
    }
    

    int getInitHeight()
    {
        return this.initHeight_CollidableDestroyableDamageableLayer;
    }
    

    int getInitX()
    {
        return this.initX_CollidableDestroyableDamageableLayer;
    }
    

    int getInitY()
    {
        return this.initY_CollidableDestroyableDamageableLayer;
    }
    

    void up()
    {
    }
    

    void down()
    {
    }
    

    void right()
    {
    }
    

    void left()
    {
    }
    

    void strafeLeft()
    {
    }
    

    void strafeRight()
    {
    }
    

    void fire(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void special1(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void special2(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void special3(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void special4(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void special5(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void upAnalog(int yAnalogValue)
    {
    }
    

    void downAnalog(int yAnalogValue)
    {
    }
    

    void rightAnalog(int xAnalogValue)
    {
    }
    

    void leftAnalog(int xAnalogValue)
    {
    }
    

    void rightTrigger(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent, int xAnalogValue)
    {
    }
    

    void leftTrigger(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent, int xAnalogValue)
    {
    }
    

    void onDestroyed(DestroyedEvent@ destroyedEvent)
    {
    }
    

    PickupBehavior@ getPickupBehavior()
    {
        return this.pickupBehavior_CollidableDestroyableDamageableLayer;
    }
    

    void setPickupBehavior(PickupBehavior@ pickupBehavior)
    {
        @this.pickupBehavior_CollidableDestroyableDamageableLayer = pickupBehavior;
    }
    

    void addPart(PickedUpLayerInterfaceFactoryInterface@ pickedUpLayerInterfaceFactoryInterface)
    {
    }
    

    void setPartInterfaceArray(PartInterface@[]@ partInterfaceArray)
    {
        @this.partInterfaceArrayP = partInterfaceArray;
    }
    

    PartInterface@[]@ getPartInterfaceArray()
    {
        return this.partInterfaceArrayP;
    }
    

    void toStringAppend(StringMaker@ stringBuffer)
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        PositionStrings@ positionStrings = PositionStrings::getInstance();
        CollidableCompositeLayer::toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps.NEW_LINE);
        Group@[]@ groupInterfaceArray = this.getGroupInterface();
        int size = int(groupInterfaceArray.length());
        for (int index = 0; index < size; index++) {
            stringBuffer.append(groupInterfaceArray[index].toString());
            stringBuffer.append(commonSeps.COMMA);
        }
        PickupBehavior@ pickupBehavior = this.getPickupBehavior();
        if (pickupBehavior !is null) {
            stringBuffer.append(commonSeps.NEW_LINE);
            stringBuffer.append(pickupBehavior.toString());
        }
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(CollidableDestroyableDamageableLayer::READYFOREXPLOSION);
        stringBuffer.appendboolean(this.readyForExplosion_CollidableDestroyableDamageableLayer);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(this.commonStrings.INIT);
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(this.initX_CollidableDestroyableDamageableLayer);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(this.initX_CollidableDestroyableDamageableLayer);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(this.initZ_CollidableDestroyableDamageableLayer);
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
}

namespace CollidableDestroyableDamageableLayer
{
    const string READYFOREXPLOSION = "ReadyForExplosion: ";

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = NullUtil::getInstance().NULL_OBJECT;
        
    }

    JObject@ jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER;
    JObject@ get_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER() property { jclinit(); return jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER; }
    void set_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(JObject@ value) property { jclinit(); @jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = value; }
    

    CollidableDestroyableDamageableLayer@ getNullInstance()
    {
        if (CollidableDestroyableDamageableLayer::NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER is NullUtil::getInstance().NULL_OBJECT) {
            @CollidableDestroyableDamageableLayer::NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = CollidableDestroyableDamageableLayer().jinit_CollidableDestroyableDamageableLayer(BasicGroupFactory::getInstance().NONE_ARRAY, StringUtil::getInstance().EMPTY_STRING, RectangleFactory::SINGLETON, ViewPositionBase::NULL_VIEW_POSITION);
        }
        return cast<CollidableDestroyableDamageableLayer>(CollidableDestroyableDamageableLayer::NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER);
    }
}

