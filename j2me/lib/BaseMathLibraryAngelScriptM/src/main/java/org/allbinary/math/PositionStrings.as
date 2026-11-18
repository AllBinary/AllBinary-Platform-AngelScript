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
// package org.allbinary.math

class PositionStrings : JObjectBase
{
    string X;
    string Y;
    string X_LABEL;
    string Y_LABEL;
    string Z_LABEL;
    string DX_LABEL;
    string DY_LABEL;
    string DZ_LABEL;

    // Java field initializers run after the super constructor
    void jfields_PositionStrings()
    {
    this.X = "x";
    this.Y = "y";
    this.X_LABEL = "x: ";
    this.Y_LABEL = "y: ";
    this.Z_LABEL = "z: ";
    this.DX_LABEL = "dx: ";
    this.DY_LABEL = "dy: ";
    this.DZ_LABEL = "dz: ";
    }

    PositionStrings@ jinit_PositionStrings()
    {
        this.jfields_PositionStrings();
        return this;
    }
}

namespace PositionStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PositionStrings().jinit_PositionStrings();
    }

    PositionStrings@ jcell_instance;
    PositionStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PositionStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    PositionStrings@ getInstance()
    {
        return PositionStrings::instance;
    }
}

