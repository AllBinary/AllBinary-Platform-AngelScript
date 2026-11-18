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
// package org.allbinary.game.ag.layer.hud.basic

class PlayerGameNotificationHud : GameNotificationHud, UpdateMyFontInterface
{
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper_PlayerGameNotificationHud;
    string EMPTY_STRING_PlayerGameNotificationHud;
    DisplayInfoSingleton@ displayInfo_PlayerGameNotificationHud;
    TimeDelayHelper@ timeDelayHelper_PlayerGameNotificationHud;
    CircularIndexUtil@ circularIndexUtil_PlayerGameNotificationHud;
    GameNotification@ gameNotification_PlayerGameNotificationHud;
    GameNotification@ permanentGameNotification_PlayerGameNotificationHud;
    Processor@ setAndRemoveProcessor_PlayerGameNotificationHud;
    Processor@ nextUnremoveableProcessor_PlayerGameNotificationHud;
    Processor@ processor_PlayerGameNotificationHud;
    string PERMANENT_GAME_NOTIFICATION_PlayerGameNotificationHud;
    string lastString_PlayerGameNotificationHud;
    string string__PlayerGameNotificationHud;
    CustomGPoint@ point_PlayerGameNotificationHud;
    int width_PlayerGameNotificationHud;

    // Java field initializers run after the super constructor
    void jfields_PlayerGameNotificationHud()
    {
    @this.gameTickTimeDelayHelper_PlayerGameNotificationHud = GameTickTimeDelayHelperFactory::getInstance();
    this.EMPTY_STRING_PlayerGameNotificationHud = StringUtil::getInstance().EMPTY_STRING;
    @this.displayInfo_PlayerGameNotificationHud = DisplayInfoSingleton::getInstance();
    @this.timeDelayHelper_PlayerGameNotificationHud = TimeDelayHelper().jinit_TimeDelayHelper(0);
    
    @this.gameNotification_PlayerGameNotificationHud = GameNotification().jinit_GameNotification();
    @this.permanentGameNotification_PlayerGameNotificationHud = GameNotification().jinit_GameNotification();
    @this.setAndRemoveProcessor_PlayerGameNotificationHud = SetAndRemoveProcessor().jinit_SetAndRemoveProcessor(this);
    @this.nextUnremoveableProcessor_PlayerGameNotificationHud = NextUnremoveableProcessor().jinit_NextUnremoveableProcessor(this);
    @this.processor_PlayerGameNotificationHud = Processor::getInstance();
    this.PERMANENT_GAME_NOTIFICATION_PlayerGameNotificationHud = "Permanent Game Notification: ";
    this.lastString_PlayerGameNotificationHud = StringUtil::getInstance().EMPTY_STRING;
    this.string__PlayerGameNotificationHud = this.EMPTY_STRING_PlayerGameNotificationHud;
    @this.point_PlayerGameNotificationHud = CustomGPoint::NULL_CUSTOM_POINT;
    
    }
    

    PlayerGameNotificationHud@ jinit_PlayerGameNotificationHud(int location, int direction, int bufferZone, BasicColor@ basicColor)
    {
        this.jinit_GameNotificationHud(location, direction, bufferZone, basicColor);
        this.jfields_PlayerGameNotificationHud();
        @this.circularIndexUtil_PlayerGameNotificationHud = CircularIndexUtil::createInstance(0);
        GameNotificationEventHandler@ gameNotificationEventHandler = GameNotificationEventHandler::getInstance();
        gameNotificationEventHandler.removeAllListeners();
        gameNotificationEventHandler.addListenerInterface(this);
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        try {
            GameNotificationHud::updateMeasurement(graphics);
            Font@ font = graphics.getFont();
            this.width_PlayerGameNotificationHud = font.stringWidth(this.string__PlayerGameNotificationHud);
            this.processor_PlayerGameNotificationHud.process();
            @this.processor_PlayerGameNotificationHud = Processor::getInstance();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            LogUtil@ logUtil = LogUtil::getInstance();
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    GPoint@ getPoint(int x, int y)
    {
        @this.point_PlayerGameNotificationHud = CustomGPoint::getInstance3(0, 0);
        this.point_PlayerGameNotificationHud.setX(x);
        this.point_PlayerGameNotificationHud.setY(y);
        return this.point_PlayerGameNotificationHud;
    }
    

    void add(string string_, JInteger@ seconds, BasicColor@ basicColor, JBoolean@ permanent)
    {
        if (permanent.booleanValue()) {
            if (this.lastString_PlayerGameNotificationHud != string_) {
                this.lastString_PlayerGameNotificationHud = string_;
                this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.PERMANENT_GAME_NOTIFICATION_PlayerGameNotificationHud).append(string_).toString(), this, this.commonStrings.ADD);
            }
            this.permanentGameNotification_PlayerGameNotificationHud.add(string_, seconds, basicColor);
            this.circularIndexUtil_PlayerGameNotificationHud.setSize(this.permanentGameNotification_PlayerGameNotificationHud.getSize());
        } else {
            this.gameNotification_PlayerGameNotificationHud.add(string_, seconds, basicColor);
        }
    }
    

    void processTick()
    {
        if (this.timeDelayHelper_PlayerGameNotificationHud.isTime(this.gameTickTimeDelayHelper_PlayerGameNotificationHud.startTime)) {
            GameAdState@ gameAdState = GameAdStateFactory::getInstance().getCurrentInstance();
            if (gameAdState.isShowingAtLocation(this.getLocation())) {
                this.offsetY = -54;
            } else {
                this.offsetY = 0;
            }
            if (this.gameNotification_PlayerGameNotificationHud.getSize() > 0) {
                this.setAndRemove();
            } else if (this.permanentGameNotification_PlayerGameNotificationHud.getSize() > 0) {
                this.setNextUnremoveable();
            } else {
                this.string__PlayerGameNotificationHud = this.EMPTY_STRING_PlayerGameNotificationHud;
            }
        }
    }
    

    void setAndRemove()
    {
        this.string__PlayerGameNotificationHud = jstringOf(this.gameNotification_PlayerGameNotificationHud.stringList.removeAt(0));
        @this.processor_PlayerGameNotificationHud = this.setAndRemoveProcessor_PlayerGameNotificationHud;
    }
    

    void setAndRemoveProcess()
    {
        this.setX((this.displayInfo_PlayerGameNotificationHud.getLastWidth() - this.width_PlayerGameNotificationHud) >>> 1);
        this.point_PlayerGameNotificationHud.setX(this.getX());
        this.point_PlayerGameNotificationHud.setY(this.getY());
        JInteger@ time = cast<JInteger>(this.gameNotification_PlayerGameNotificationHud.timeList.removeAt(0));
        int iTime = time.intValue() * 1000;
        if (iTime == 0) {
            iTime = 500;
        }
        this.timeDelayHelper_PlayerGameNotificationHud.delay = iTime;
        this.setBasicColorP(cast<BasicColor>(this.gameNotification_PlayerGameNotificationHud.colorList.removeAt(0)));
    }
    

    void setNextUnremoveable()
    {
        int index = this.circularIndexUtil_PlayerGameNotificationHud.getIndex();
        this.string__PlayerGameNotificationHud = jstringOf(this.permanentGameNotification_PlayerGameNotificationHud.stringList.objectArray[index]);
        @this.processor_PlayerGameNotificationHud = this.nextUnremoveableProcessor_PlayerGameNotificationHud;
    }
    

    void setNextUnremoveableProcess()
    {
        int index = this.circularIndexUtil_PlayerGameNotificationHud.getIndex();
        this.setX((this.displayInfo_PlayerGameNotificationHud.getLastWidth() - this.width_PlayerGameNotificationHud) >>> 1);
        this.point_PlayerGameNotificationHud.setX(this.getX());
        this.point_PlayerGameNotificationHud.setY(this.getY());
        JInteger@ time = cast<JInteger>(this.permanentGameNotification_PlayerGameNotificationHud.timeList.objectArray[index]);
        this.timeDelayHelper_PlayerGameNotificationHud.delay = time.intValue() * 1000;
        this.setBasicColorP(cast<BasicColor>(this.permanentGameNotification_PlayerGameNotificationHud.colorList.objectArray[index]));
        this.circularIndexUtil_PlayerGameNotificationHud.next();
    }
    

    void clear()
    {
        this.gameNotification_PlayerGameNotificationHud.clear();
        this.permanentGameNotification_PlayerGameNotificationHud.clear();
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor.process(graphics);
        GameNotificationHud::paintString(graphics, this.string__PlayerGameNotificationHud);
    }
}

