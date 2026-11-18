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
// package org.allbinary.game.configuration.event

class ChangedGameFeatureListener : BaseChangedGameFeatureListener
{

    ChangedGameFeatureListener@ jinit_ChangedGameFeatureListener()
    {
        this.jinit_BaseChangedGameFeatureListener();
        return this;
    }
    

    bool isChangedGameConfiguration(GameConfiguration@ gameConfiguration)
    {
        return this.list.contains(gameConfiguration);
    }
}

namespace ChangedGameFeatureListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_gameFeatureListener = ChangedGameFeatureListener().jinit_ChangedGameFeatureListener();
    }

    ChangedGameFeatureListener@ jcell_gameFeatureListener;
    ChangedGameFeatureListener@ get_gameFeatureListener() property { jclinit(); return jcell_gameFeatureListener; }
    void set_gameFeatureListener(ChangedGameFeatureListener@ value) property { jclinit(); @jcell_gameFeatureListener = value; }
    

    ChangedGameFeatureListener@ getInstance()
    {
        return ChangedGameFeatureListener::gameFeatureListener;
    }
}

