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

class CollidableNeverCollideBehaviorFactory : CollidableBaseBehaviorFactory
{
    CollidableNeverCollideBehavior@ instance_CollidableNeverCollideBehaviorFactory;

    // Java field initializers run after the super constructor
    void jfields_CollidableNeverCollideBehaviorFactory()
    {
    @this.instance_CollidableNeverCollideBehaviorFactory = CollidableNeverCollideBehavior().jinit_CollidableNeverCollideBehavior(false);
    }

    CollidableNeverCollideBehaviorFactory@ jinit_CollidableNeverCollideBehaviorFactory()
    {
        this.jinit_CollidableBaseBehaviorFactory();
        this.jfields_CollidableNeverCollideBehaviorFactory();
        return this;
    }
    

    CollidableBaseBehavior@ createBehavior()
    {
        return this.instance_CollidableNeverCollideBehaviorFactory;
    }
}

namespace CollidableNeverCollideBehaviorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceC = CollidableNeverCollideBehaviorFactory().jinit_CollidableNeverCollideBehaviorFactory();
    }

    CollidableNeverCollideBehaviorFactory@ jcell_instanceC;
    CollidableNeverCollideBehaviorFactory@ get_instanceC() property { jclinit(); return jcell_instanceC; }
    void set_instanceC(CollidableNeverCollideBehaviorFactory@ value) property { jclinit(); @jcell_instanceC = value; }
    

    CollidableNeverCollideBehaviorFactory@ getInstance()
    {
        return CollidableNeverCollideBehaviorFactory::instanceC;
    }
}

