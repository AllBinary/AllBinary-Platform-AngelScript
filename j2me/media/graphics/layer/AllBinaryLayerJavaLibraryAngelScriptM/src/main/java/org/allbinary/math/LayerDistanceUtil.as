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

class LayerDistanceUtil : JObjectBase
{
    MathUtil@ mathUtil;

    // Java field initializers run after the super constructor
    void jfields_LayerDistanceUtil()
    {
    @this.mathUtil = MathUtil::getInstance();
    }

    LayerDistanceUtil@ jinit_LayerDistanceUtil()
    {
        this.jfields_LayerDistanceUtil();
        return this;
    }
    

    int getDistance(AllBinaryLayer@ layerInterface, AllBinaryLayer@ layerInterface2)
    {
        int dx = (layerInterface.getXP() + layerInterface.getHalfWidth()) - (layerInterface2.getXP() + layerInterface2.getHalfWidth());
        int dy = (layerInterface.getYP() + layerInterface.getHalfHeight()) - (layerInterface2.getYP() + layerInterface2.getHalfHeight());
        return this.mathUtil.sqrt((dx * dx) + (dy * dy));
    }
    

    int getDistance3D(AllBinaryLayer@ layerInterface, AllBinaryLayer@ layerInterface2)
    {
        int dx = (layerInterface.getXP() + layerInterface.getHalfWidth()) - (layerInterface2.getXP() + layerInterface2.getHalfWidth());
        int dy = (layerInterface.getYP() + layerInterface.getHalfHeight()) - (layerInterface2.getYP() + layerInterface2.getHalfHeight());
        int dz = (layerInterface.getZP() + layerInterface.getHalfDepth()) - (layerInterface2.getZP() + layerInterface2.getHalfDepth());
        return this.mathUtil.sqrt((dx * dx) + (dy * dy) + (dz * dz));
    }
    

    int getDistanceAt(AllBinaryLayer@ layerInterface, GPoint@ point)
    {
        int dx = layerInterface.getXP() - point.getX();
        int dy = layerInterface.getYP() - point.getY();
        return this.mathUtil.sqrt((dx * dx) + (dy * dy));
    }
}

namespace LayerDistanceUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LayerDistanceUtil().jinit_LayerDistanceUtil();
    }

    LayerDistanceUtil@ jcell_instance;
    LayerDistanceUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LayerDistanceUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LayerDistanceUtil@ getInstance()
    {
        return LayerDistanceUtil::instance;
    }
}

