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
// package org.allbinary.logic.math

class Orientation : JObjectBase
{
    BasicDecimal@ yaw;
    BasicDecimal@ pitch;
    BasicDecimal@ roll;

    // Java field initializers run after the super constructor
    void jfields_Orientation()
    {
    @this.yaw = BasicDecimal().jinit_BasicDecimal(0);
    @this.pitch = BasicDecimal().jinit_BasicDecimal(0);
    @this.roll = BasicDecimal().jinit_BasicDecimal(0);
    }
    

    Orientation@ jinit_Orientation(int yaw, int pitch, int roll)
    {
        this.jfields_Orientation();
        this.yaw.setint(yaw);
        this.pitch.setint(pitch);
        this.roll.setint(roll);
        return this;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Y: ");
        stringBuffer.append(this.yaw.toString());
        stringBuffer.append(" P: ");
        stringBuffer.append(this.pitch.toString());
        stringBuffer.append(" R: ");
        stringBuffer.append(this.roll.toString());
        return stringBuffer.toString();
    }
}

namespace Orientation
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NONE = Orientation().jinit_Orientation(0, 0, 0);
        @jcell_SINGLETON = Orientation().jinit_Orientation(0, 0, 0);
    }

    Orientation@ jcell_NONE;
    Orientation@ get_NONE() property { jclinit(); return jcell_NONE; }
    void set_NONE(Orientation@ value) property { jclinit(); @jcell_NONE = value; }

    Orientation@ jcell_SINGLETON;
    Orientation@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(Orientation@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    Orientation@ getInstance(int yaw, int pitch, int roll)
    {
        Orientation::SINGLETON.yaw.setint(yaw);
        Orientation::SINGLETON.pitch.setint(pitch);
        Orientation::SINGLETON.roll.setint(roll);
        return Orientation::SINGLETON;
    }
}

