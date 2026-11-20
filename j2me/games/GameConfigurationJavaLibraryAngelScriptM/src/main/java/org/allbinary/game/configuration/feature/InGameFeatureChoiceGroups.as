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

class InGameFeatureChoiceGroups : JObjectBase
{
    ABHashtable@ hashtable_InGameFeatureChoiceGroups;

    // Java field initializers run after the super constructor
    void jfields_InGameFeatureChoiceGroups()
    {
    @this.hashtable_InGameFeatureChoiceGroups = StdUtil::getInstance().createHashtable();
    }
    

    InGameFeatureChoiceGroups@ jinit_InGameFeatureChoiceGroups()
    {
        this.jfields_InGameFeatureChoiceGroups();
        return this;
    }
    

    ABHashtable@ get()
    {
        return this.hashtable_InGameFeatureChoiceGroups;
    }
    

    void add(string name, BasicArrayList@ list)
    {
        this.hashtable_InGameFeatureChoiceGroups.put(name, list);
    }
}

namespace InGameFeatureChoiceGroups
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_gameFeatureChoiceGroupsExclusive = InGameFeatureChoiceGroups().jinit_InGameFeatureChoiceGroups();
        @jcell_gameFeatureChoiceGroupsMultiple = InGameFeatureChoiceGroups().jinit_InGameFeatureChoiceGroups();
    }

    InGameFeatureChoiceGroups@ jcell_gameFeatureChoiceGroupsExclusive;
    InGameFeatureChoiceGroups@ get_gameFeatureChoiceGroupsExclusive() property { jclinit(); return jcell_gameFeatureChoiceGroupsExclusive; }
    void set_gameFeatureChoiceGroupsExclusive(InGameFeatureChoiceGroups@ value) property { jclinit(); @jcell_gameFeatureChoiceGroupsExclusive = value; }

    InGameFeatureChoiceGroups@ jcell_gameFeatureChoiceGroupsMultiple;
    InGameFeatureChoiceGroups@ get_gameFeatureChoiceGroupsMultiple() property { jclinit(); return jcell_gameFeatureChoiceGroupsMultiple; }
    void set_gameFeatureChoiceGroupsMultiple(InGameFeatureChoiceGroups@ value) property { jclinit(); @jcell_gameFeatureChoiceGroupsMultiple = value; }
    

    InGameFeatureChoiceGroups@ getExclusiveInstance()
    {
        return InGameFeatureChoiceGroups::gameFeatureChoiceGroupsExclusive;
    }
    

    InGameFeatureChoiceGroups@ getMultipleInstance()
    {
        return InGameFeatureChoiceGroups::gameFeatureChoiceGroupsMultiple;
    }
}

