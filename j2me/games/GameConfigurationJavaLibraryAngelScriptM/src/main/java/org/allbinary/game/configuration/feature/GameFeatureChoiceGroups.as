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
// package org.allbinary.game.configuration.feature

class GameFeatureChoiceGroups : JObjectBase
{
    ABHashtable@ hashtable;

    // Java field initializers run after the super constructor
    void jfields_GameFeatureChoiceGroups()
    {
    @this.hashtable = StdUtil::getInstance().createHashtable();
    }
    

    GameFeatureChoiceGroups@ jinit_GameFeatureChoiceGroups()
    {
        this.jfields_GameFeatureChoiceGroups();
        return this;
    }
    

    ABHashtable@ get()
    {
        return this.hashtable;
    }
    

    void add(string name, BasicArrayList@ list)
    {
        this.hashtable.put(name, list);
    }
}

namespace GameFeatureChoiceGroups
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_gameFeatureChoiceGroupsExclusive = GameFeatureChoiceGroups().jinit_GameFeatureChoiceGroups();
        @jcell_gameFeatureChoiceGroupsMultiple = GameFeatureChoiceGroups().jinit_GameFeatureChoiceGroups();
    }

    GameFeatureChoiceGroups@ jcell_gameFeatureChoiceGroupsExclusive;
    GameFeatureChoiceGroups@ get_gameFeatureChoiceGroupsExclusive() property { jclinit(); return jcell_gameFeatureChoiceGroupsExclusive; }
    void set_gameFeatureChoiceGroupsExclusive(GameFeatureChoiceGroups@ value) property { jclinit(); @jcell_gameFeatureChoiceGroupsExclusive = value; }

    GameFeatureChoiceGroups@ jcell_gameFeatureChoiceGroupsMultiple;
    GameFeatureChoiceGroups@ get_gameFeatureChoiceGroupsMultiple() property { jclinit(); return jcell_gameFeatureChoiceGroupsMultiple; }
    void set_gameFeatureChoiceGroupsMultiple(GameFeatureChoiceGroups@ value) property { jclinit(); @jcell_gameFeatureChoiceGroupsMultiple = value; }
    

    GameFeatureChoiceGroups@ getExclusiveInstance()
    {
        return GameFeatureChoiceGroups::gameFeatureChoiceGroupsExclusive;
    }
    

    GameFeatureChoiceGroups@ getMultipleInstance()
    {
        return GameFeatureChoiceGroups::gameFeatureChoiceGroupsMultiple;
    }
}

