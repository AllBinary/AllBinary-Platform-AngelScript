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
// package org.allbinary.game.ai

class ArtificialIntelligenceInterfaceFactoryInterfaceFactory : JObjectBase
{
    BasicArrayList@ list_ArtificialIntelligenceInterfaceFactoryInterfaceFactory;

    // Java field initializers run after the super constructor
    void jfields_ArtificialIntelligenceInterfaceFactoryInterfaceFactory()
    {
    @this.list_ArtificialIntelligenceInterfaceFactoryInterfaceFactory = BasicArrayListUtil::getInstance().getImmutableInstance();
    }

    ArtificialIntelligenceInterfaceFactoryInterfaceFactory@ jinit_ArtificialIntelligenceInterfaceFactoryInterfaceFactory()
    {
        this.jfields_ArtificialIntelligenceInterfaceFactoryInterfaceFactory();
        return this;
    }
    

    void clear()
    {
        @this.list_ArtificialIntelligenceInterfaceFactoryInterfaceFactory = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    ArtificialIntelligenceInterfaceFactoryInterface@ getInstanceFromCollection(ABHashtable@ hashtable)
    {
        JInteger@ typeInteger = cast<JInteger>(hashtable.get(BasicAI::ID));
        int type = typeInteger.intValue();
        ArtificialIntelligenceInterfaceFactoryInterface@ artificialIntelligenceInterfaceFactoryInterface = cast<ArtificialIntelligenceInterfaceFactoryInterface>(this.list_ArtificialIntelligenceInterfaceFactoryInterfaceFactory.objectArray[type - 1]);
        return artificialIntelligenceInterfaceFactoryInterface;
    }
    

    void add(ArtificialIntelligenceInterfaceFactoryInterface@ artificialIntelligenceInterfaceFactoryInterface)
    {
        this.list_ArtificialIntelligenceInterfaceFactoryInterfaceFactory.add(artificialIntelligenceInterfaceFactoryInterface);
    }
}

namespace ArtificialIntelligenceInterfaceFactoryInterfaceFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = ArtificialIntelligenceInterfaceFactoryInterfaceFactory().jinit_ArtificialIntelligenceInterfaceFactoryInterfaceFactory();
    }

    ArtificialIntelligenceInterfaceFactoryInterfaceFactory@ jcell_SINGLETON;
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(ArtificialIntelligenceInterfaceFactoryInterfaceFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    ArtificialIntelligenceInterfaceFactoryInterfaceFactory@ getInstance()
    {
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory::SINGLETON;
    }
}

