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
// package org.allbinary.time

class TimeUtil : JObjectBase
{

    TimeUtil@ jinit_TimeUtil()
    {
        return this;
    }
    

    void setCalendar(Calendar@ calendar, string yearString, string monthString, string dayString, string hourString)
    {
        int year = JInteger().jinit_JInteger(yearString).intValue();
        int month = JInteger().jinit_JInteger(monthString).intValue();
        int day = JInteger().jinit_JInteger(dayString).intValue();
        int hour = JInteger().jinit_JInteger(hourString).intValue();
        calendar.set(year, month, day, hour, 0);
    }
    

    void setCalendarWithTime(Calendar@ calendar, string yearString, string monthString, string dayString, string hourString, string minuteString, string secondString)
    {
        int year = JInteger().jinit_JInteger(yearString).intValue();
        int month = JInteger().jinit_JInteger(monthString).intValue();
        int day = JInteger().jinit_JInteger(dayString).intValue();
        int hour = JInteger().jinit_JInteger(hourString).intValue();
        int minute = JInteger().jinit_JInteger(minuteString).intValue();
        int second = JInteger().jinit_JInteger(secondString).intValue();
        calendar.set(year, month, day, hour, minute, second);
    }
    

    void setExpirationCalendar(Calendar@ calendar, string yearsString, string monthsString, string daysString, string hoursString, string minutesString, string secondsString)
    {
        int year = calendar.get(Calendar::YEAR) + JInteger().jinit_JInteger(yearsString).intValue();
        int month = calendar.get(Calendar::MONTH) + JInteger().jinit_JInteger(monthsString).intValue();
        int day = calendar.get(Calendar::DAY_OF_MONTH) + JInteger().jinit_JInteger(daysString).intValue();
        int hour = calendar.get(Calendar::HOUR) + JInteger().jinit_JInteger(hoursString).intValue();
        int minute = calendar.get(Calendar::MINUTE) + JInteger().jinit_JInteger(minutesString).intValue();
        int second = calendar.get(Calendar::SECOND) + JInteger().jinit_JInteger(secondsString).intValue();
        calendar.set(year, month, day, hour, minute, second);
    }
    

    int64 getTotalTime(string yearString, string monthString, string dayString, string hourString, string minuteString, string secondString)
    {
        int64 time = TimeUtil::calendar.getTimeInMillis();
        this.setExpirationCalendar(TimeUtil::calendar, yearString, monthString, dayString, hourString, minuteString, secondString);
        int64 timeDelta = TimeUtil::calendar.getTimeInMillis();
        return timeDelta - time;
    }
}

namespace TimeUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TimeUtil().jinit_TimeUtil();
        @jcell_calendar = Calendar::getInstance();
    }

    TimeUtil@ jcell_instance;
    TimeUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TimeUtil@ value) property { jclinit(); @jcell_instance = value; }

    Calendar@ jcell_calendar;
    Calendar@ get_calendar() property { jclinit(); return jcell_calendar; }
    void set_calendar(Calendar@ value) property { jclinit(); @jcell_calendar = value; }
    

    TimeUtil@ getInstance()
    {
        return TimeUtil::instance;
    }
}

