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
// package org.allbinary.game.input

class TextNotificationUtil : JObjectBase
{
    JInteger@ TWO_TextNotificationUtil;
    JBoolean@ FALSE_TextNotificationUtil;
    GameNotificationEventHandler@ gameNotificationEventHandler_TextNotificationUtil;

    // Java field initializers run after the super constructor
    void jfields_TextNotificationUtil()
    {
    @this.TWO_TextNotificationUtil = SmallIntegerSingletonFactory::getInstance().getAt(2);
    @this.FALSE_TextNotificationUtil = BooleanFactory::getInstance().FALSE;
    @this.gameNotificationEventHandler_TextNotificationUtil = GameNotificationEventHandler::getInstance();
    }

    TextNotificationUtil@ jinit_TextNotificationUtil()
    {
        this.jfields_TextNotificationUtil();
        return this;
    }
    

    void fireError(string message)
    {
        PrimaryPlayerQueueFactory::getInstance().add(ErrorSound::getInstance());
        this.fire(message);
    }
    

    void fireNew(string message)
    {
        PrimaryPlayerQueueFactory::getInstance().add(SelectSound::getInstance());
        this.fire(message);
    }
    

    void fireSuccess(string message)
    {
        PrimaryPlayerQueueFactory::getInstance().add(SelectSound::getInstance());
        this.fire(message);
    }
    

    void fire(string message)
    {
        GameNotificationEvent@ gameNotificationEvent = GameNotificationEvent().jinit_GameNotificationEvent(this, message, this.TWO_TextNotificationUtil, BasicColorFactory::getInstance().RED, this.FALSE_TextNotificationUtil);
        this.gameNotificationEventHandler_TextNotificationUtil.fireEvent(gameNotificationEvent);
    }
}

namespace TextNotificationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TextNotificationUtil().jinit_TextNotificationUtil();
    }

    TextNotificationUtil@ jcell_instance;
    TextNotificationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TextNotificationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    TextNotificationUtil@ getInstance()
    {
        return TextNotificationUtil::instance;
    }
}

