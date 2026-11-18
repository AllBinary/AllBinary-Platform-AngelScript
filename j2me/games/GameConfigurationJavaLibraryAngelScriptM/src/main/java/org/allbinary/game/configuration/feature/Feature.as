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

class Feature : JObjectBase
{
    string name;
    

    Feature@ jinit_Feature(string name)
    {
        this.name = name;
        Feature::add(name, this);
        ChangedGameFeatureListener::getInstance().add(this);
        return this;
    }
    

    string toString()
    {
        return this.getName();
    }
    

    string getName()
    {
        return this.name;
    }
}

namespace Feature
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_hashtable = StdUtil::getInstance().createHashtable();
    }

    ABHashtable@ jcell_hashtable;
    ABHashtable@ get_hashtable() property { jclinit(); return jcell_hashtable; }
    void set_hashtable(ABHashtable@ value) property { jclinit(); @jcell_hashtable = value; }
    

    Feature@ getInstance(string name)
    {
        return cast<Feature>(Feature::hashtable.get(name));
    }
    

    void add(string name, Feature@ gameFeature)
    {
        Feature::hashtable.put(name, gameFeature);
    }
}

