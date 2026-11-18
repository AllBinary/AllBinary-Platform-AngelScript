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
// package org.allbinary.game.physics.acceleration

class GravityUtil : JObjectBase
{
    int GAME_GRAVITY_VELOCITY;
    int MAX_GAME_VELOCITY;

    // Java field initializers run after the super constructor
    void jfields_GravityUtil()
    {
    this.GAME_GRAVITY_VELOCITY = 1800;
    this.MAX_GAME_VELOCITY = 18000;
    }

    GravityUtil@ jinit_GravityUtil()
    {
        this.jfields_GravityUtil();
        return this;
    }
    

    void process(BasicVelocityProperties@ velocityProperties, int customGravity)
    {
        velocityProperties.getVelocityYBasicDecimalP().addint(customGravity);
    }
}

namespace GravityUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GravityUtil().jinit_GravityUtil();
    }

    GravityUtil@ jcell_instance;
    GravityUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GravityUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    GravityUtil@ getInstance()
    {
        return GravityUtil::instance;
    }
}

