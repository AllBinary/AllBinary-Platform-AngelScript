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
// package org.allbinary.physics.movement

class NoMovementFactory : JObjectBase
{
    Movement@ movement_NoMovementFactory;

    // Java field initializers run after the super constructor
    void jfields_NoMovementFactory()
    {
    @this.movement_NoMovementFactory = Movement().jinit_Movement();
    }

    NoMovementFactory@ jinit_NoMovementFactory()
    {
        this.jfields_NoMovementFactory();
        return this;
    }
    

    Movement@ getMovmentInstance()
    {
        return this.movement_NoMovementFactory;
    }
}

namespace NoMovementFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NoMovementFactory().jinit_NoMovementFactory();
    }

    NoMovementFactory@ jcell_instance;
    NoMovementFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(NoMovementFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    NoMovementFactory@ getInstance()
    {
        return NoMovementFactory::instance;
    }
}

