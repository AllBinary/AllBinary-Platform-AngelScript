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
// package org.allbinary.game.part.weapon

class BasicWeaponPart : JObjectBase, PartInterface, SalvoInterface
{
    Animation@ animationInterface;
    AllBinaryLayer@ ownerLayerInterface;
    WeaponProperties@ weaponProperties;
    ScoreableInterface@ scoreableInterface;
    RelativeRelationship@ relativeRelationship;

    // Java field initializers run after the super constructor
    void jfields_BasicWeaponPart()
    {
    @this.animationInterface = NullAnimationFactory::getFactoryInstance().getInstance(0);
    @this.ownerLayerInterface = AllBinaryLayer::NULL_ALLBINARY_LAYER;
    @this.weaponProperties = WeaponProperties::NULL_WEAPON_PROPERTIES;
    @this.scoreableInterface = NoScoreable::getInstance();
    @this.relativeRelationship = RelativeRelationship::NULL_RELATIVE_RELATIONSHIP;
    }
    

    BasicWeaponPart@ jinit_BasicWeaponPart(Animation@ animationInterface, AllBinaryLayer@ sourceLayerInterface, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreableInterface, RelativeRelationship@ relativeRelationship)
    {
        this.jfields_BasicWeaponPart();
        this.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.setAnimationInterface(animationInterface);
        return this;
    }
    

    void init(AllBinaryLayer@ sourceLayerInterface, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreableInterface, RelativeRelationship@ relativeRelationship)
    {
        this.setOwnerLayerInterface(sourceLayerInterface);
        this.setWeaponProperties(weaponProperties);
        @this.scoreableInterface = scoreableInterface;
        @this.relativeRelationship = relativeRelationship;
    }
    

    void process(AllBinaryLayerManager@ allbinaryLayerManager, int16 angle, int16 otherAngle)
    {
        this.processScore(allbinaryLayerManager, angle, otherAngle, this.getWeaponProperties(), this.scoreableInterface);
    }
    

    void processScore(AllBinaryLayerManager@ allbinaryLayerManager, int16 angle, int16 otherAngle, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreableInterface)
    {
        jthrow(Exception().jinit_Exception(CommonStrings::getInstance().NOT_IMPLEMENTED));
    }
    

    AllBinaryLayer@ getOwnerLayerInterface()
    {
        return this.ownerLayerInterface;
    }
    

    void setOwnerLayerInterface(AllBinaryLayer@ ownerLayerInterface)
    {
        @this.ownerLayerInterface = ownerLayerInterface;
    }
    

    Animation@ getAnimationInterface()
    {
        return this.animationInterface;
    }
    

    void setAnimationInterface(Animation@ animationInterface)
    {
        @this.animationInterface = animationInterface;
    }
    

    void paint(Graphics@ graphics)
    {
        ViewPositionBase@ viewPosition = this.getOwnerLayerInterface().getViewPosition();
        int viewX = viewPosition.getX();
        int viewY = viewPosition.getY();
        this.animationInterface.paintXY(graphics, viewX, viewY);
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
    

    WeaponProperties@ getWeaponProperties()
    {
        return this.weaponProperties;
    }
    

    void setWeaponProperties(WeaponProperties@ weaponProperties)
    {
        @this.weaponProperties = weaponProperties;
    }
}

namespace BasicWeaponPart
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_BASIC_WEAPON_PART = BasicWeaponPart::createBasicWeaponPart(NullAnimationFactory::getFactoryInstance().getInstance(0));
    }

    BasicWeaponPart@ jcell_NULL_BASIC_WEAPON_PART;
    BasicWeaponPart@ get_NULL_BASIC_WEAPON_PART() property { jclinit(); return jcell_NULL_BASIC_WEAPON_PART; }
    void set_NULL_BASIC_WEAPON_PART(BasicWeaponPart@ value) property { jclinit(); @jcell_NULL_BASIC_WEAPON_PART = value; }
    

    BasicWeaponPart@ createBasicWeaponPart(Animation@ animationInterface)
    {
        return BasicWeaponPart().jinit_BasicWeaponPart(animationInterface, AllBinaryLayer::NULL_ALLBINARY_LAYER, WeaponProperties::NULL_WEAPON_PROPERTIES, NoScoreable::getInstance(), RelativeRelationship::NULL_RELATIVE_RELATIONSHIP);
    }
}

