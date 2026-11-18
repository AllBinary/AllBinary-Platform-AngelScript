// Generated Code Do Not Modify
// package org.allbinary.game.layer.drop

class PlacedLayerFactory : JObjectBase
{
    BasicArrayList@ list;
    BasicArrayListUtil@ basicArrayListUtil;

    // Java field initializers run after the super constructor
    void jfields_PlacedLayerFactory()
    {
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    @this.basicArrayListUtil = BasicArrayListUtil::getInstance();
    }
    

    PlacedLayerFactory@ jinit_PlacedLayerFactory()
    {
        this.jfields_PlacedLayerFactory();
        return this;
    }
    

    void clear()
    {
        this.list.clear();
    }
    

    int getSize()
    {
        return this.list.size();
    }
    

    AllBinaryLayerFactoryInterface@ getRandomInstance()
    {
        return cast<AllBinaryLayerFactoryInterface>(this.basicArrayListUtil.getRandom(this.list));
    }
    

    void add(AllBinaryLayerFactoryInterface@ layerInterfaceFactoryInterface)
    {
        this.list.add(layerInterfaceFactoryInterface);
    }
}

namespace PlacedLayerFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PlacedLayerFactory().jinit_PlacedLayerFactory();
    }

    PlacedLayerFactory@ jcell_instance;
    PlacedLayerFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PlacedLayerFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    PlacedLayerFactory@ getInstance()
    {
        return PlacedLayerFactory::instance;
    }
}

