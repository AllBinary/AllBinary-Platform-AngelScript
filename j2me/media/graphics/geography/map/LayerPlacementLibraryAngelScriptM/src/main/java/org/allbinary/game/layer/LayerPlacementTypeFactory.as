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
// package org.allbinary.game.layer

class LayerPlacementTypeFactory : JObjectBase
{
    LayerPlacementType@ MAP;
    LayerPlacementType@ LEFT;
    LayerPlacementType@ DOWN;
    LayerPlacementType@ UP;
    LayerPlacementType@ RIGHT;

    // Java field initializers run after the super constructor
    void jfields_LayerPlacementTypeFactory()
    {
    @this.MAP = LayerPlacementType().jinit_LayerPlacementType(Integer::MAX_VALUE);
    @this.LEFT = LayerPlacementType().jinit_LayerPlacementType(DirectionFactory::getInstance().LEFT.getValue());
    @this.DOWN = LayerPlacementType().jinit_LayerPlacementType(DirectionFactory::getInstance().DOWN.getValue());
    @this.UP = LayerPlacementType().jinit_LayerPlacementType(DirectionFactory::getInstance().UP.getValue());
    @this.RIGHT = LayerPlacementType().jinit_LayerPlacementType(DirectionFactory::getInstance().RIGHT.getValue());
    }

    LayerPlacementTypeFactory@ jinit_LayerPlacementTypeFactory()
    {
        this.jfields_LayerPlacementTypeFactory();
        return this;
    }
}

namespace LayerPlacementTypeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LayerPlacementTypeFactory().jinit_LayerPlacementTypeFactory();
    }

    LayerPlacementTypeFactory@ jcell_instance;
    LayerPlacementTypeFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LayerPlacementTypeFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    LayerPlacementTypeFactory@ getInstance()
    {
        return LayerPlacementTypeFactory::instance;
    }
}

