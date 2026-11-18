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
// package org.allbinary.midlet

class AllBinaryMidlet : MIDlet, CommandListener
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    string SET_DISPLAY_AllBinaryMidlet;
    string SETTING__AllBinaryMidlet;
    string _DISPLAY__AllBinaryMidlet;
    string SETTING_NO_TITLE_AllBinaryMidlet;
    ABHashtable@ hashtable_AllBinaryMidlet;
    bool midletDestroyed_AllBinaryMidlet;

    // Java field initializers run after the super constructor
    void jfields_AllBinaryMidlet()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    this.SET_DISPLAY_AllBinaryMidlet = "setDisplay";
    this.SETTING__AllBinaryMidlet = "Setting: ";
    this._DISPLAY__AllBinaryMidlet = " Display: ";
    this.SETTING_NO_TITLE_AllBinaryMidlet = "Setting: No Title, Display: ";
    @this.hashtable_AllBinaryMidlet = StdUtil::getInstance().createHashtable();
    
    }
    

    AllBinaryMidlet@ jinit_AllBinaryMidlet()
    {
        this.jinit_MIDlet();
        this.jfields_AllBinaryMidlet();
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, "AllBinaryMidlet::AllBinaryMidlet");
        return this;
    }
    

    void setDisplay(Displayable@ newDisplay)
    {
        string title = StringUtil::getInstance().EMPTY_STRING;
        if (newDisplay !is NullCanvas::NULL_CANVAS) {
            title = newDisplay.getTitle();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.SETTING__AllBinaryMidlet).append(title).append(this._DISPLAY__AllBinaryMidlet).append(StringUtil::getInstance().toString(newDisplay)).toString(), this, this.SET_DISPLAY_AllBinaryMidlet);
        }
        Display@ display = this.getDisplay();
        display.setCurrent(newDisplay);
    }
    

    Display@ getDisplay()
    {
        return Display::getDisplay(this);
    }
    

    Displayable@ getCurrentDisplayable()
    {
        return Display::getDisplay(this).getCurrent();
    }
    

    void setDestroyed(bool destroyed)
    {
        this.midletDestroyed_AllBinaryMidlet = destroyed;
    }
    

    bool isDestroyed()
    {
        return this.midletDestroyed_AllBinaryMidlet;
    }
    

    void startApp()
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void pauseApp()
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void destroyAppInRunnable(bool unconditional, bool isProgress)
    {
    }
    

    void destroyApp(bool unconditional)
    {
        string METHOD_NAME = "AllBinaryMidlet::destroyApp";
        try {
            this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME);
            PreLogUtil::put(Memory::getInfo(), this, METHOD_NAME);
            this.setDestroyed(true);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, METHOD_NAME, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void setStartStateHashtable(ABHashtable@ hashtable)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START_LABEL).append(StringUtil::getInstance().toString(hashtable)).toString(), this, "setStartStateHashtable");
        @this.hashtable_AllBinaryMidlet = hashtable;
    }
    

    ABHashtable@ getStartStateHashtable()
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START_LABEL).append(StringUtil::getInstance().toString(this.hashtable_AllBinaryMidlet)).toString(), this, "getStartStateHashtable");
        return this.hashtable_AllBinaryMidlet;
    }
    

    ABHashtable@ getCurrentStateHashtable()
    {
        this.logUtil.putF(this.commonStrings.START, this, "getStateHashtable");
        return StdUtil::getInstance().NULL_TABLE;
    }
    

    void commandAction(Command@ command, Displayable@ displayable)
    {
    }
}

namespace AllBinaryMidlet
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_ALLBINARY_MIDLET = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_NULL_ALLBINARY_MIDLET;
    JObject@ get_NULL_ALLBINARY_MIDLET() property { jclinit(); return jcell_NULL_ALLBINARY_MIDLET; }
    void set_NULL_ALLBINARY_MIDLET(JObject@ value) property { jclinit(); @jcell_NULL_ALLBINARY_MIDLET = value; }
    

    AllBinaryMidlet@ getNullInstance()
    {
        if (AllBinaryMidlet::NULL_ALLBINARY_MIDLET is NullUtil::getInstance().NULL_OBJECT) {
            @AllBinaryMidlet::NULL_ALLBINARY_MIDLET = AllBinaryMidlet().jinit_AllBinaryMidlet();
        }
        return cast<AllBinaryMidlet>(AllBinaryMidlet::NULL_ALLBINARY_MIDLET);
    }
}

