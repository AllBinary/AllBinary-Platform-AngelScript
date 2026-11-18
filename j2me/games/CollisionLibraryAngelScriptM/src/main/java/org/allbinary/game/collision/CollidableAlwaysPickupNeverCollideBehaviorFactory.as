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

class CollidableAlwaysPickupNeverCollideBehaviorFactory : CollidableBaseBehaviorFactory
{
    CollidableAlwaysPickupNeverCollideBehavior@ instance_CollidableAlwaysPickupNeverCollideBehaviorFactory;

    // Java field initializers run after the super constructor
    void jfields_CollidableAlwaysPickupNeverCollideBehaviorFactory()
    {
    @this.instance_CollidableAlwaysPickupNeverCollideBehaviorFactory = CollidableAlwaysPickupNeverCollideBehavior().jinit_CollidableAlwaysPickupNeverCollideBehavior();
    }

    CollidableAlwaysPickupNeverCollideBehaviorFactory@ jinit_CollidableAlwaysPickupNeverCollideBehaviorFactory()
    {
        this.jinit_CollidableBaseBehaviorFactory();
        this.jfields_CollidableAlwaysPickupNeverCollideBehaviorFactory();
        return this;
    }
    

    CollidableBaseBehavior@ createBehavior()
    {
        return this.instance_CollidableAlwaysPickupNeverCollideBehaviorFactory;
    }
}

namespace CollidableAlwaysPickupNeverCollideBehaviorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceC = CollidableAlwaysPickupNeverCollideBehaviorFactory().jinit_CollidableAlwaysPickupNeverCollideBehaviorFactory();
    }

    CollidableAlwaysPickupNeverCollideBehaviorFactory@ jcell_instanceC;
    CollidableAlwaysPickupNeverCollideBehaviorFactory@ get_instanceC() property { jclinit(); return jcell_instanceC; }
    void set_instanceC(CollidableAlwaysPickupNeverCollideBehaviorFactory@ value) property { jclinit(); @jcell_instanceC = value; }
    

    CollidableAlwaysPickupNeverCollideBehaviorFactory@ getInstance()
    {
        return CollidableAlwaysPickupNeverCollideBehaviorFactory::instanceC;
    }
}

