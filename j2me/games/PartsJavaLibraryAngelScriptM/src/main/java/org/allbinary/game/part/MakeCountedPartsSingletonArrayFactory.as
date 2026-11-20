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
// package org.allbinary.game.part

class MakeCountedPartsSingletonArrayFactory : JObjectBase
{
    LogUtil@ logUtil;
    BasicArrayList@ list_MakeCountedPartsSingletonArrayFactory;

    // Java field initializers run after the super constructor
    void jfields_MakeCountedPartsSingletonArrayFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.list_MakeCountedPartsSingletonArrayFactory = BasicArrayListUtil::getInstance().getImmutableInstance();
    }

    MakeCountedPartsSingletonArrayFactory@ jinit_MakeCountedPartsSingletonArrayFactory()
    {
        this.jfields_MakeCountedPartsSingletonArrayFactory();
        return this;
    }
    

    PartInterface@[]@ getUpdated(PartInterface@[]@ partInterfaceArray)
    {
        @this.list_MakeCountedPartsSingletonArrayFactory = BasicArrayListD().jinit_BasicArrayListD();
        for (int index = 0; index < int(partInterfaceArray.length()); index++) {
            this.list_MakeCountedPartsSingletonArrayFactory.add(partInterfaceArray[index]);
        }
        BasicArrayList@ countedBasicArrayList = CountedPickedUpLayerInterfaceFactoryPool::getInstance().getList();
        CountedPickedUpLayerInterfaceFactory@ layerInterfaceFactoryInterface;
        int size = countedBasicArrayList.size();
        for (int index = 0; index < size; index++) {
            @layerInterfaceFactoryInterface = cast<CountedPickedUpLayerInterfaceFactory>(countedBasicArrayList.objectArray[index]);
            this.list_MakeCountedPartsSingletonArrayFactory.add(CountedLayerInterfaceFactoryPart().jinit_CountedLayerInterfaceFactoryPart(0, layerInterfaceFactoryInterface));
        }
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Total Parts: ");
        stringBuffer.appendint(this.list_MakeCountedPartsSingletonArrayFactory.size());
        stringBuffer.append(" Counted: ");
        stringBuffer.appendint(countedBasicArrayList.size());
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE);
        PartInterface@[]@ newPartInterfaceArray = array<PartInterface@>(this.list_MakeCountedPartsSingletonArrayFactory.size());
        int newSize = int(newPartInterfaceArray.length());
        for (int index = 0; index < newSize; index++) {
            @newPartInterfaceArray[index] = cast<PartInterface>(this.list_MakeCountedPartsSingletonArrayFactory.get(index));
        }
        return newPartInterfaceArray;
    }
}

namespace MakeCountedPartsSingletonArrayFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MakeCountedPartsSingletonArrayFactory().jinit_MakeCountedPartsSingletonArrayFactory();
    }

    MakeCountedPartsSingletonArrayFactory@ jcell_instance;
    MakeCountedPartsSingletonArrayFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MakeCountedPartsSingletonArrayFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    MakeCountedPartsSingletonArrayFactory@ getInstance()
    {
        return MakeCountedPartsSingletonArrayFactory::instance;
    }
}

