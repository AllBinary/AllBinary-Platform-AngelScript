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

class TimeDelayHelper : JObjectBase
{
    int64 startTime_TimeDelayHelper;
    int64 elapsedTimeAtPause_TimeDelayHelper;
    int delay;

    // Java field initializers run after the super constructor
    void jfields_TimeDelayHelper()
    {
    this.startTime_TimeDelayHelper = int64(-1);
    this.elapsedTimeAtPause_TimeDelayHelper = Long::MIN_VALUE;
    
    }
    

    TimeDelayHelper@ jinit_TimeDelayHelper(int delay)
    {
        this.jfields_TimeDelayHelper();
        this.delay = delay;
        this.setStartTimeTNT();
        return this;
    }
    

    bool isTimeTNT()
    {
        int64 currentTime = System::currentTimeMillis();
        if (currentTime - this.startTime_TimeDelayHelper > int64(this.delay)) {
            this.startTime_TimeDelayHelper = currentTime;
            return true;
        }
        return false;
    }
    

    bool isTimeSinceTNT(int delay)
    {
        int64 currentTime = System::currentTimeMillis();
        if (currentTime - this.startTime_TimeDelayHelper > int64(delay)) {
            this.startTime_TimeDelayHelper = currentTime;
            return true;
        }
        return false;
    }
    

    bool isTime(int64 currentTime)
    {
        if (currentTime - this.startTime_TimeDelayHelper > int64(this.delay)) {
            this.startTime_TimeDelayHelper = currentTime;
            return true;
        }
        return false;
    }
    

    bool isTimeWithoutReset(int64 currentTime)
    {
        if (currentTime - this.startTime_TimeDelayHelper > int64(this.delay)) {
            return true;
        }
        return false;
    }
    

    bool isTimeSince(int delay, int64 currentTime)
    {
        if (currentTime - this.startTime_TimeDelayHelper > int64(this.delay)) {
            this.startTime_TimeDelayHelper = currentTime;
            return true;
        }
        return false;
    }
    

    int64 getElapsedTNT()
    {
        return System::currentTimeMillis() - this.startTime_TimeDelayHelper;
    }
    

    int64 getElapsed(int64 currentTime)
    {
        return currentTime - this.startTime_TimeDelayHelper;
    }
    

    bool isElapsed(int64 currentTime, int64 time)
    {
        if (this.getElapsed(currentTime) > time) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    bool isElapsedTNT(int64 time)
    {
        if (this.getElapsedTNT() > time) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void setStartTime(int64 startTime)
    {
        this.startTime_TimeDelayHelper = startTime;
    }
    

    int64 getStartTime()
    {
        return this.startTime_TimeDelayHelper;
    }
    

    void setStartTimeTNT()
    {
        this.startTime_TimeDelayHelper = System::currentTimeMillis();
    }
    

    void pause()
    {
        this.elapsedTimeAtPause_TimeDelayHelper = this.getElapsedTNT();
        this.startTime_TimeDelayHelper = Long::MAX_VALUE;
    }
    

    bool resume()
    {
        if (this.elapsedTimeAtPause_TimeDelayHelper != Long::MIN_VALUE) {
            this.startTime_TimeDelayHelper = System::currentTimeMillis() + this.elapsedTimeAtPause_TimeDelayHelper;
            this.elapsedTimeAtPause_TimeDelayHelper = Long::MIN_VALUE;
            this.setStartTimeTNT();
            return true;
        }
        return false;
    }
    

    string toStringAt(int64 currentTime)
    {
        int64 elapsed = this.getElapsed(currentTime);
        if (elapsed > 0) {
            CommonLabels@ commonLabels = CommonLabels::getInstance();
            string elapsedAsString = Long::toString(elapsed);
            return StringMaker().jinit_StringMaker().append(commonLabels.START).appendlong(this.startTime_TimeDelayHelper).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString();
        } else {
            return StringUtil::getInstance().EMPTY_STRING;
        }
        return "";
    }
    

    string toString()
    {
        int64 currentTime = System::currentTimeMillis();
        int64 elapsed = this.getElapsed(currentTime);
        if (elapsed > 0) {
            CommonLabels@ commonLabels = CommonLabels::getInstance();
            string elapsedAsString = Long::toString(elapsed);
            return StringMaker().jinit_StringMaker().append(commonLabels.START).appendlong(this.startTime_TimeDelayHelper).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString();
        } else {
            return StringUtil::getInstance().EMPTY_STRING;
        }
        return "";
    }
}

