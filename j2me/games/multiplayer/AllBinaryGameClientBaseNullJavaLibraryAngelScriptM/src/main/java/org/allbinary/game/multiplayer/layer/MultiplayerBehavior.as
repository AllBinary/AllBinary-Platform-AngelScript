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
// package org.allbinary.game.multiplayer.layer

class MultiplayerBehavior : JObjectBase
{
    

    MultiplayerBehavior@ jinit_MultiplayerBehavior(string username)
    {
        return this;
    }
    

    void startTick()
    {
    }
    

    void endTick()
    {
    }
    

    int64 getApproximateElapsed()
    {
        return 0;
    }
}

namespace MultiplayerBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_MULTIPLAYER_BEHAVIOR = MultiplayerBehavior().jinit_MultiplayerBehavior(StringUtil::getInstance().EMPTY_STRING);
    }

    MultiplayerBehavior@ jcell_NULL_MULTIPLAYER_BEHAVIOR;
    MultiplayerBehavior@ get_NULL_MULTIPLAYER_BEHAVIOR() property { jclinit(); return jcell_NULL_MULTIPLAYER_BEHAVIOR; }
    void set_NULL_MULTIPLAYER_BEHAVIOR(MultiplayerBehavior@ value) property { jclinit(); @jcell_NULL_MULTIPLAYER_BEHAVIOR = value; }
}

