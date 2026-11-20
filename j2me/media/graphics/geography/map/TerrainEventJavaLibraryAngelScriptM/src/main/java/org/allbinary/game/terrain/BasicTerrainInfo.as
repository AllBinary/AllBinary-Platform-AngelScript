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
// package org.allbinary.game.terrain

class BasicTerrainInfo : JObjectBase
{
    Angle@ angle_BasicTerrainInfo;
    

    BasicTerrainInfo@ jinit_BasicTerrainInfo(Angle@ angle)
    {
        @this.angle_BasicTerrainInfo = angle;
        return this;
    }
    

    Angle@ getAngle()
    {
        return this.angle_BasicTerrainInfo;
    }
    

    void setAngle(Angle@ angle)
    {
        @this.angle_BasicTerrainInfo = angle;
    }
}

namespace BasicTerrainInfo
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_BASIC_TERRAIN_INFO = BasicTerrainInfo().jinit_BasicTerrainInfo(AngleFactory::getInstance().NOT_ANGLE);
    }

    BasicTerrainInfo@ jcell_NULL_BASIC_TERRAIN_INFO;
    BasicTerrainInfo@ get_NULL_BASIC_TERRAIN_INFO() property { jclinit(); return jcell_NULL_BASIC_TERRAIN_INFO; }
    void set_NULL_BASIC_TERRAIN_INFO(BasicTerrainInfo@ value) property { jclinit(); @jcell_NULL_BASIC_TERRAIN_INFO = value; }
}

