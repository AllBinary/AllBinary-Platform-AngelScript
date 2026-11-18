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

class WeaponLayer : MultiPlayerGameLayer, TickableInterface
{
    Animation@ animationInterface_WeaponLayer;
    Animation@ initAnimationInterface;
    Animation@ destroyedAnimationInterface_WeaponLayer;
    AllBinaryLayer@ sourceLayerInterface_WeaponLayer;
    int totalDamage;
    int initDamage_WeaponLayer;
    bool destroyed_WeaponLayer;
    ScoreableInterface@ scoreableInterface;
    Movement@ movement_WeaponLayer;
    WeaponProperties@ weaponProperties_WeaponLayer;
    int multiPlayerType_WeaponLayer;
    CollidableWeaponBehavior@ collidableWeaponBehavior_WeaponLayer;

    // Java field initializers run after the super constructor
    void jfields_WeaponLayer()
    {
    @this.animationInterface_WeaponLayer = NullAnimationFactory::getFactoryInstance().getInstance(0);
    
    
    @this.sourceLayerInterface_WeaponLayer = AllBinaryLayer::NULL_ALLBINARY_LAYER;
    
    
    this.destroyed_WeaponLayer = true;
    @this.scoreableInterface = NoScoreable::getInstance();
    
    @this.weaponProperties_WeaponLayer = WeaponProperties::NULL_WEAPON_PROPERTIES;
    
    @this.collidableWeaponBehavior_WeaponLayer = CollidableWeaponBehavior::getNullInstance();
    }
    

    WeaponLayer@ jinit_WeaponLayer(string name, RemoteInfo@ remoteInfo, int multiPlayerType, Movement@ movement, Animation@ animationInterface, Animation@ destroyedAnimationInterface, Rectangle@ rectangle, ViewPositionBase@ viewPosition)
    {
        this.jinit_MultiPlayerGameLayer(remoteInfo, BasicGroupFactory::getInstance().NONE_ARRAY, name, rectangle, viewPosition);
        this.jfields_WeaponLayer();
        @this.initAnimationInterface = animationInterface;
        this.setAnimationInterface(animationInterface);
        @this.destroyedAnimationInterface_WeaponLayer = destroyedAnimationInterface;
        @this.movement_WeaponLayer = movement;
        this.multiPlayerType_WeaponLayer = multiPlayerType;
        return this;
    }
    

    void setCollidableInferface(CollidableBaseBehavior@ collidableInferface)
    {
        MultiPlayerGameLayer::setCollidableInferface(collidableInferface);
        @this.collidableWeaponBehavior_WeaponLayer = cast<CollidableWeaponBehavior>(this.getCollidableInferface());
    }
    

    void initXYZ(int x, int y, int z)
    {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    void init(AllBinaryLayer@ sourceLayerInterface, int angle, int otherAngle, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreable)
    {
        this.setWeaponPropertiesP(weaponProperties);
        this.setReadyForExplosion(false);
        this.setAnimationInterface(this.getInitAnimationInterfaceP());
        this.setOwnerLayerInterface(sourceLayerInterface);
        this.collidableWeaponBehavior_WeaponLayer.init(sourceLayerInterface);
        this.setGroupInterfaces();
        if (scoreable !is null) {
            @this.scoreableInterface = scoreable;
        }
        this.totalDamage = 0;
        this.initDamage_WeaponLayer = weaponProperties.getDamage();
        this.setDestroyed(false);
        this.movement_WeaponLayer.init(weaponProperties.getSpeed(), angle, otherAngle);
    }
    

    void setGroupInterfaces()
    {
        BasicGroupFactory@ basicGroupFactory = BasicGroupFactory::getInstance();
        if (this.sourceLayerInterface_WeaponLayer.getGroupInterface()[0] is basicGroupFactory.ENEMY) {
            this.setGroupInterface(basicGroupFactory.ENEMY_ARRAY);
        } else {
            this.setGroupInterface(this.sourceLayerInterface_WeaponLayer.getGroupInterface());
        }
    }
    

    void processTick(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        if (this.isExhausted() && !this.isDestroyed()) {
            if (this.isReadyForExplosion()) {
                IndexedAnimation@ indexedAnimationInterface = cast<IndexedAnimation>(this.getAnimationInterface());
                int currentFrame = indexedAnimationInterface.getFrame();
                if (currentFrame < indexedAnimationInterface.getAnimationSize() - 1) {
                    indexedAnimationInterface.nextFrame();
                } else {
                    this.setDestroyed(true);
                }
            } else {
                CollidableWeaponBehavior@ collidableWeaponBehavior = cast<CollidableWeaponBehavior>(this.getCollidableInferface());
                if (collidableWeaponBehavior.isCollided()) {
                    this.setAnimationInterface(this.destroyedAnimationInterface_WeaponLayer);
                    this.getMovement().stop();
                    this.setReadyForExplosion(true);
                } else {
                    this.setDestroyed(true);
                }
            }
        }
        this.movement_WeaponLayer.process(this);
        this.totalDamage += int(this.weaponProperties_WeaponLayer.getDissipation());
    }
    

    bool isDestroyed()
    {
        return this.destroyed_WeaponLayer;
    }
    

    void damage(int damage, int damageType)
    {
        this.totalDamage += damage * damage;
    }
    

    void givePoints(int total)
    {
        this.scoreableInterface.addPoints(GameConfigurationUtil::getInstance().getCompetitionValue() * total);
    }
    

    bool isExhausted()
    {
        if (this.totalDamage > this.getInitDamage() || this.totalDamage < 0) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    int getDamage(int damageType)
    {
        if (!this.isExhausted()) {
            int total = this.getInitDamage() - this.totalDamage;
            this.givePoints(total);
            return total;
        }
        return 0;
    }
    

    void setDestroyed(bool destroyed)
    {
        this.destroyed_WeaponLayer = destroyed;
        if (this.isDestroyed()) {
            @this.scoreableInterface = NoScoreable::getInstance();
            DestroyedLayerProcessor::getInstance().add(this);
        }
    }
    

    int getInitDamage()
    {
        return this.initDamage_WeaponLayer;
    }
    

    void setAnimationInterface(Animation@ animationInterface)
    {
        @this.animationInterface_WeaponLayer = animationInterface;
    }
    

    Animation@ getAnimationInterface()
    {
        return this.animationInterface_WeaponLayer;
    }
    

    Animation@ getInitAnimationInterfaceP()
    {
        return this.initAnimationInterface;
    }
    

    void setInitAnimationInterfaceP(Animation@ initAnimationInterface)
    {
        @this.initAnimationInterface = initAnimationInterface;
    }
    

    Animation@ getDestroyedAnimationInterface()
    {
        return this.destroyedAnimationInterface_WeaponLayer;
    }
    

    AllBinaryLayer@ getOwnerLayerInterface()
    {
        return this.sourceLayerInterface_WeaponLayer;
    }
    

    void setOwnerLayerInterface(AllBinaryLayer@ sourceLayerInterface)
    {
        @this.sourceLayerInterface_WeaponLayer = sourceLayerInterface;
    }
    

    void paint(Graphics@ graphics)
    {
        ViewPositionBase@ viewPosition = this.getViewPosition();
        this.animationInterface_WeaponLayer.paintXY(graphics, viewPosition.getX() - this.getHalfWidth(), viewPosition.getY() - this.getHalfHeight());
    }
    

    void paintThreed(Graphics@ graphics)
    {
        ViewPositionBase@ viewPosition = this.getViewPosition();
        this.animationInterface_WeaponLayer.paintThreedXYZ(graphics, viewPosition.getX() - this.getHalfWidth(), viewPosition.getY() - this.getHalfHeight(), viewPosition.getZ() - this.getHalfDepth());
    }
    

    Movement@ getMovement()
    {
        return this.movement_WeaponLayer;
    }
    

    void setMovement(Movement@ movement)
    {
        @this.movement_WeaponLayer = movement;
    }
    

    int getType()
    {
        return WeaponLayer::getStaticType();
    }
    

    int getMultiPlayerType()
    {
        return this.multiPlayerType_WeaponLayer;
    }
    

    void setWeaponPropertiesP(WeaponProperties@ weaponProperties)
    {
        @this.weaponProperties_WeaponLayer = weaponProperties;
    }
    

    WeaponProperties@ getWeaponPropertiesP()
    {
        return this.weaponProperties_WeaponLayer;
    }
    

    bool implmentsTickableInterface()
    {
        return true;
    }
    

    void set(GL@ gl)
    {
        this.initAnimationInterface.set(gl);
    }
}

namespace WeaponLayer
{
    

    int getStaticType()
    {
        return 0;
    }
}

