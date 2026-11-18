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
// package org.allbinary.layer

class LayerInterfaceFactory : JObjectBase
{
    LogUtil@ logUtil;
    BasicArrayList@ list;
    string HASHTABLE_LABEL;

    // Java field initializers run after the super constructor
    void jfields_LayerInterfaceFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.list = BasicArrayListUtil::getInstance().getImmutableInstance();
    this.HASHTABLE_LABEL = "Hashtable: ";
    }

    LayerInterfaceFactory@ jinit_LayerInterfaceFactory()
    {
        this.jfields_LayerInterfaceFactory();
        return this;
    }
    

    void init()
    {
        @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    AllBinaryLayer@ getNexInstance(ABHashtable@ hashtable, int x, int y, int z)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.HASHTABLE_LABEL).append(StringUtil::getInstance().toString(hashtable)).toString(), this, commonStrings.GET_INSTANCE);
        JInteger@ typeInteger = cast<JInteger>(hashtable.get(ABLayer::ID));
        LayerInterfaceFactoryInterface@ layerInterfaceFactoryInterface = cast<LayerInterfaceFactoryInterface>(this.list.objectArray[typeInteger.intValue() - 1]);
        return layerInterfaceFactoryInterface.getNextInstance(hashtable, x, y, z);
    }
    

    void add(LayerInterfaceFactoryInterface@ layerInterfaceFactoryInterface)
    {
        this.list.add(layerInterfaceFactoryInterface);
    }
}

namespace LayerInterfaceFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = LayerInterfaceFactory().jinit_LayerInterfaceFactory();
    }

    LayerInterfaceFactory@ jcell_SINGLETON;
    LayerInterfaceFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(LayerInterfaceFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    LayerInterfaceFactory@ getInstance()
    {
        return LayerInterfaceFactory::SINGLETON;
    }
}

