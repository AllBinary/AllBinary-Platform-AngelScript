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
// package org.allbinary.media.audio

class NoPlayer : BasicPlayer
{
    

    NoPlayer@ jinit_NoPlayer()
    {
        this.jinit_BasicPlayer();
        return this;
    }
    

    void close()
    {
    }
    

    string getContentType()
    {
        return StringUtil::getInstance().NULL_STRING;
    }
    

    Control@ getControl(string controlType)
    {
        return NullControl().jinit_NullControl();
    }
    

    Control@[]@ getControls()
    {
        return array<Control@>(0);
    }
}

namespace NoPlayer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NO_PLAYER = NoPlayer().jinit_NoPlayer();
    }

    NoPlayer@ jcell_NO_PLAYER;
    NoPlayer@ get_NO_PLAYER() property { jclinit(); return jcell_NO_PLAYER; }
    void set_NO_PLAYER(NoPlayer@ value) property { jclinit(); @jcell_NO_PLAYER = value; }
}

