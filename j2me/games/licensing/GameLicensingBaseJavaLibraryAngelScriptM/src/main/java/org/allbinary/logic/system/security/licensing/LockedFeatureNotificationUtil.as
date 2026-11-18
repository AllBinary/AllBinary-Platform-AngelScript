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
// package org.allbinary.logic.system.security.licensing

class LockedFeatureNotificationUtil : JObjectBase
{
    GameNotificationEvent@ gameNotificationEvent;

    // Java field initializers run after the super constructor
    void jfields_LockedFeatureNotificationUtil()
    {
    @this.gameNotificationEvent = GameNotificationEvent().jinit_GameNotificationEvent(this, LicenseStrings::getInstance().LOCKED, SmallIntegerSingletonFactory::getInstance().getAt(3), BasicColorFactory::getInstance().RED, BooleanFactory::getInstance().FALSE);
    }

    LockedFeatureNotificationUtil@ jinit_LockedFeatureNotificationUtil()
    {
        this.jfields_LockedFeatureNotificationUtil();
        return this;
    }
    

    void fire()
    {
        PrimaryPlayerQueueFactory::getInstance().add(ErrorSound::getInstance());
        GameNotificationEventHandler::getInstance().fireEvent(this.gameNotificationEvent);
    }
    

    void fireWithColor(BasicColor@ basicColor)
    {
        PrimaryPlayerQueueFactory::getInstance().add(ErrorSound::getInstance());
        this.gameNotificationEvent.setBasicColorP(basicColor);
        GameNotificationEventHandler::getInstance().fireEvent(this.gameNotificationEvent);
    }
}

namespace LockedFeatureNotificationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LockedFeatureNotificationUtil().jinit_LockedFeatureNotificationUtil();
    }

    LockedFeatureNotificationUtil@ jcell_instance;
    LockedFeatureNotificationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LockedFeatureNotificationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LockedFeatureNotificationUtil@ getInstance()
    {
        return LockedFeatureNotificationUtil::instance;
    }
}

