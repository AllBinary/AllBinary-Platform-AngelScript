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

class CollisionTypeFactory : JObjectBase
{
    CollisionType@ NONE;
    CollisionType@ DAMAGE;
    CollisionType@ PICKUP;
    CollisionType@ COLLISION;

    // Java field initializers run after the super constructor
    void jfields_CollisionTypeFactory()
    {
    @this.NONE = CollisionType().jinit_CollisionType("None");
    @this.DAMAGE = CollisionType().jinit_CollisionType("Damage");
    @this.PICKUP = CollisionType().jinit_CollisionType("Pickup");
    @this.COLLISION = CollisionType().jinit_CollisionType("Collision");
    }

    CollisionTypeFactory@ jinit_CollisionTypeFactory()
    {
        this.jfields_CollisionTypeFactory();
        return this;
    }
}

namespace CollisionTypeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = CollisionTypeFactory().jinit_CollisionTypeFactory();
    }

    CollisionTypeFactory@ jcell_SINGLETON;
    CollisionTypeFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(CollisionTypeFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    CollisionTypeFactory@ getInstance()
    {
        return CollisionTypeFactory::SINGLETON;
    }
}

