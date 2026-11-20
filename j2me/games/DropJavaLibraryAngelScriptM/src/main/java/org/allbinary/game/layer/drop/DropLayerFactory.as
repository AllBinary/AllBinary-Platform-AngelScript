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
// package org.allbinary.game.layer.drop

class DropLayerFactory : JObjectBase
{
    BasicArrayList@ list_DropLayerFactory;
    BasicArrayListUtil@ basicArrayListUtil_DropLayerFactory;

    // Java field initializers run after the super constructor
    void jfields_DropLayerFactory()
    {
    @this.list_DropLayerFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.basicArrayListUtil_DropLayerFactory = BasicArrayListUtil::getInstance();
    }
    

    DropLayerFactory@ jinit_DropLayerFactory()
    {
        this.jfields_DropLayerFactory();
        return this;
    }
    

    void clear()
    {
        this.list_DropLayerFactory.clear();
    }
    

    int getSize()
    {
        return this.list_DropLayerFactory.size();
    }
    

    PickedUpLayerInterfaceFactoryInterface@ getRandomInstance()
    {
        return cast<PickedUpLayerInterfaceFactoryInterface>(this.basicArrayListUtil_DropLayerFactory.getRandom(this.list_DropLayerFactory));
    }
    

    void add(PickedUpLayerInterfaceFactoryInterface@ layerInterfaceFactoryInterface)
    {
        this.list_DropLayerFactory.add(layerInterfaceFactoryInterface);
    }
    

    BasicArrayList@ getList()
    {
        return this.list_DropLayerFactory;
    }
}

namespace DropLayerFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_DROP_LAYER_FACTORY = DropLayerFactory().jinit_DropLayerFactory();
    }

    DropLayerFactory@ jcell_DROP_LAYER_FACTORY;
    DropLayerFactory@ get_DROP_LAYER_FACTORY() property { jclinit(); return jcell_DROP_LAYER_FACTORY; }
    void set_DROP_LAYER_FACTORY(DropLayerFactory@ value) property { jclinit(); @jcell_DROP_LAYER_FACTORY = value; }
    

    DropLayerFactory@ getInstance()
    {
        return DropLayerFactory::DROP_LAYER_FACTORY;
    }
}

