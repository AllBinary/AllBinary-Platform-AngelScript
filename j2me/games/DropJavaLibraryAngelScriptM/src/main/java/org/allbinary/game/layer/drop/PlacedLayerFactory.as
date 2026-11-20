// Generated Code Do Not Modify
// package org.allbinary.game.layer.drop

class PlacedLayerFactory : JObjectBase
{
    BasicArrayList@ list_PlacedLayerFactory;
    BasicArrayListUtil@ basicArrayListUtil_PlacedLayerFactory;

    // Java field initializers run after the super constructor
    void jfields_PlacedLayerFactory()
    {
    @this.list_PlacedLayerFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.basicArrayListUtil_PlacedLayerFactory = BasicArrayListUtil::getInstance();
    }
    

    PlacedLayerFactory@ jinit_PlacedLayerFactory()
    {
        this.jfields_PlacedLayerFactory();
        return this;
    }
    

    void clear()
    {
        this.list_PlacedLayerFactory.clear();
    }
    

    int getSize()
    {
        return this.list_PlacedLayerFactory.size();
    }
    

    AllBinaryLayerFactoryInterface@ getRandomInstance()
    {
        return cast<AllBinaryLayerFactoryInterface>(this.basicArrayListUtil_PlacedLayerFactory.getRandom(this.list_PlacedLayerFactory));
    }
    

    void add(AllBinaryLayerFactoryInterface@ layerInterfaceFactoryInterface)
    {
        this.list_PlacedLayerFactory.add(layerInterfaceFactoryInterface);
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

