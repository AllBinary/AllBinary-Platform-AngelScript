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
// package org.allbinary.content

class NotificationUtil : JObjectBase
{

    NotificationUtil@ jinit_NotificationUtil()
    {
        return this;
    }
    

    void notify(Command@ command, string resource, string message)
    {
    }
}

namespace NotificationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NotificationUtil().jinit_NotificationUtil();
    }

    NotificationUtil@ jcell_SINGLETON;
    NotificationUtil@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(NotificationUtil@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    NotificationUtil@ getInstance()
    {
        return NotificationUtil::SINGLETON;
    }
}

