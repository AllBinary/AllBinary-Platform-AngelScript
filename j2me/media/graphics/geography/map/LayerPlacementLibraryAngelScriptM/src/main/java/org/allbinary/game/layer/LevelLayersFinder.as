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

class LevelLayersFinder : JObjectBase
{
    EnumerationUtil@ enumerationUtil;

    // Java field initializers run after the super constructor
    void jfields_LevelLayersFinder()
    {
    @this.enumerationUtil = EnumerationUtil::getInstance();
    }

    LevelLayersFinder@ jinit_LevelLayersFinder()
    {
        this.jfields_LevelLayersFinder();
        return this;
    }
    

    BasicArrayList@ get(ABHashtable@ hashtable)
    {
        SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
        BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
        Enumeration@ enumeration = hashtable.keys();
        ABHashtable@ layerHashtableCanBeNull;
        JInteger@ integerCanBeNull;
        JInteger@ cachedIntegerCanBeNull;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            @layerHashtableCanBeNull = cast<ABHashtable>(hashtable.get(this.enumerationUtil.nextElement(enumeration)));
            @integerCanBeNull = cast<JInteger>(layerHashtableCanBeNull.get(ABLayer::ID));
            @cachedIntegerCanBeNull = smallIntegerSingletonFactory.getAt(integerCanBeNull.intValue());
            if (!list.contains(cachedIntegerCanBeNull)) {
                list.add(cachedIntegerCanBeNull);
            }
        }
        return list;
    }
}

namespace LevelLayersFinder
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LevelLayersFinder().jinit_LevelLayersFinder();
    }

    LevelLayersFinder@ jcell_instance;
    LevelLayersFinder@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LevelLayersFinder@ value) property { jclinit(); @jcell_instance = value; }
    

    LevelLayersFinder@ getInstance()
    {
        return LevelLayersFinder::instance;
    }
}

