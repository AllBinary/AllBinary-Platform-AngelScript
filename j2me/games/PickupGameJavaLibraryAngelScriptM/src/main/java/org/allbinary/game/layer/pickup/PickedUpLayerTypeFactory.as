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
// package org.allbinary.game.layer.pickup

class PickedUpLayerTypeFactory : JObjectBase
{
    PickedUpLayerType@ NONE;
    PickedUpLayerType@ BEAM;
    PickedUpLayerType@ MINE;
    PickedUpLayerType@ PROJECTILE;
    PickedUpLayerType@ ENHANCEMENT;
    PickedUpLayerType@ MORPH;
    PickedUpLayerType@ PART;
    PickedUpLayerType@ HEAL;
    PickedUpLayerType@ LIFE;
    PickedUpLayerType@ POINTS;

    // Java field initializers run after the super constructor
    void jfields_PickedUpLayerTypeFactory()
    {
    @this.NONE = PickedUpLayerType().jinit_PickedUpLayerType(StringUtil::getInstance().NULL_STRING);
    @this.BEAM = PickedUpLayerType().jinit_PickedUpLayerType("BEAM");
    @this.MINE = PickedUpLayerType().jinit_PickedUpLayerType("MINE");
    @this.PROJECTILE = PickedUpLayerType().jinit_PickedUpLayerType("PROJECTILE");
    @this.ENHANCEMENT = PickedUpLayerType().jinit_PickedUpLayerType("Enhancement");
    @this.MORPH = PickedUpLayerType().jinit_PickedUpLayerType("Morph");
    @this.PART = PickedUpLayerType().jinit_PickedUpLayerType("Part");
    @this.HEAL = PickedUpLayerType().jinit_PickedUpLayerType("Heal");
    @this.LIFE = PickedUpLayerType().jinit_PickedUpLayerType("Life");
    @this.POINTS = PickedUpLayerType().jinit_PickedUpLayerType("Points");
    }

    PickedUpLayerTypeFactory@ jinit_PickedUpLayerTypeFactory()
    {
        this.jfields_PickedUpLayerTypeFactory();
        return this;
    }
}

namespace PickedUpLayerTypeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PickedUpLayerTypeFactory().jinit_PickedUpLayerTypeFactory();
    }

    PickedUpLayerTypeFactory@ jcell_instance;
    PickedUpLayerTypeFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PickedUpLayerTypeFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    PickedUpLayerTypeFactory@ getInstance()
    {
        return PickedUpLayerTypeFactory::instance;
    }
}

