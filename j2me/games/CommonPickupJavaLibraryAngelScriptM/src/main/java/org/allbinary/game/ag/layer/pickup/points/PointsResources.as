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
// package org.allbinary.game.ag.layer.pickup.points

class PointsResources : JObjectBase
{
    string RESOURCE;
    string RESOURCE_2;
    string RESOURCE_3;
    string RESOURCE_4;

    // Java field initializers run after the super constructor
    void jfields_PointsResources()
    {
    this.RESOURCE = "points_drop_20_by_20.png";
    this.RESOURCE_2 = "points_2_drop_20_by_20.png";
    this.RESOURCE_3 = "points_3_drop_20_by_20.png";
    this.RESOURCE_4 = "points_4_drop_20_by_20.png";
    }
    

    PointsResources@ jinit_PointsResources()
    {
        this.jfields_PointsResources();
        return this;
    }
}

namespace PointsResources
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = PointsResources().jinit_PointsResources();
    }

    PointsResources@ jcell_SINGLETON;
    PointsResources@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(PointsResources@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    PointsResources@ getInstance()
    {
        return PointsResources::SINGLETON;
    }
}

