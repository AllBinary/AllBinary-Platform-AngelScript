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
// package org.allbinary.game.graphics.hud

class BasicHudFactory : JObjectBase
{
    string DIRECTION_EXCEPTION;
    int VERTICAL;
    int HORIZONTAL;
    int BOTTOMLEFT;
    int BOTTOMRIGHT;
    int TOPLEFT;
    int TOPRIGHT;
    int BOTTOMCENTER;
    int TOPCENTER;
    int ABSOLUTE;

    // Java field initializers run after the super constructor
    void jfields_BasicHudFactory()
    {
    this.DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently";
    this.VERTICAL = 0;
    this.HORIZONTAL = 1;
    this.BOTTOMLEFT = 0;
    this.BOTTOMRIGHT = 1;
    this.TOPLEFT = 2;
    this.TOPRIGHT = 3;
    this.BOTTOMCENTER = 4;
    this.TOPCENTER = 5;
    this.ABSOLUTE = 6;
    }
    

    BasicHudFactory@ jinit_BasicHudFactory()
    {
        this.jfields_BasicHudFactory();
        return this;
    }
}

namespace BasicHudFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BasicHudFactory().jinit_BasicHudFactory();
    }

    BasicHudFactory@ jcell_instance;
    BasicHudFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BasicHudFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    BasicHudFactory@ getInstance()
    {
        return BasicHudFactory::instance;
    }
}

