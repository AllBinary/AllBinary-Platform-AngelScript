/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.multiplayer.layer

class RemoteInfo : JObjectBase
{
    

    RemoteInfo@ jinit_RemoteInfo(string username, int actorSessionId, int playerInputId, int id)
    {
        return this;
    }
}

namespace RemoteInfo
{
    const int NEW_PLAYER_ID = 0;

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        
        @jcell_REMOTE_INFO = RemoteInfo().jinit_RemoteInfo(StringUtil::getInstance().EMPTY_STRING, -1, -1, RemoteInfo::NEW_PLAYER_ID);
    }

    RemoteInfo@ jcell_REMOTE_INFO;
    RemoteInfo@ get_REMOTE_INFO() property { jclinit(); return jcell_REMOTE_INFO; }
    void set_REMOTE_INFO(RemoteInfo@ value) property { jclinit(); @jcell_REMOTE_INFO = value; }
}

