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
// package org.allbinary.game.collision

class CollidableBaseBehavior : JObjectBase, CollidableInterface
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    LayerCollisionUtil@ layerCollisionUtil;
    bool collidable_CollidableBaseBehavior;

    // Java field initializers run after the super constructor
    void jfields_CollidableBaseBehavior()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.layerCollisionUtil = LayerCollisionUtil::getInstance();
    this.collidable_CollidableBaseBehavior = true;
    }
    

    CollidableBaseBehavior@ jinit_CollidableBaseBehavior(bool collidable)
    {
        this.jfields_CollidableBaseBehavior();
        this.collidable_CollidableBaseBehavior = collidable;
        return this;
    }
    

    void update()
    {
    }
    

    string getName()
    {
        return jClassName(this);
    }
    

    void setCollidable(bool collidable)
    {
        this.collidable_CollidableBaseBehavior = collidable;
    }
    

    bool isCollidable(CollidableCompositeLayer@ ownerLayer)
    {
        return this.collidable_CollidableBaseBehavior;
    }
    

    void collide(CollidableCompositeLayer@ ownerLayer, CollidableCompositeLayer@ allbinaryCollidableLayer)
    {
        jthrow(Exception().jinit_Exception(StringMaker().jinit_StringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(CommonLabels::getInstance().COLON_SEP).append(jClassName(this)).toString()));
    }
    

    bool isCollision(CollidableCompositeLayer@ ownerLayer, CollidableCompositeLayer@ collisionLayer)
    {
        return this.layerCollisionUtil.isCollision(ownerLayer, collisionLayer);
    }
    

    bool isCollisionInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
        return this.layerCollisionUtil.isCollision(ownerLayer, cast<AllBinaryLayer>(collidableInterfaceCompositeInterface));
    }
    

    void collideInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    void paint(CollidableCompositeLayer@ ownerLayer, Graphics@ graphics)
    {
    }
    

    CollisionType@ getCollisionTypeWith(AllBinaryLayer@ layerInterface)
    {
        return CollisionTypeFactory::getInstance().NONE;
    }
}

