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
    int64 startTime;
    int64 elapsedTimeAtPause;
    int delay;

    // Java field initializers run after the super constructor
    void jfields_TimeDelayHelper()
    {
    this.startTime = int64(-1);
    this.elapsedTimeAtPause = Long::MIN_VALUE;
    
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
        if (currentTime - this.startTime > int64(this.delay)) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    bool isTimeSinceTNT(int delay)
    {
        int64 currentTime = System::currentTimeMillis();
        if (currentTime - this.startTime > int64(delay)) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    bool isTime(int64 currentTime)
    {
        if (currentTime - this.startTime > int64(this.delay)) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    bool isTimeWithoutReset(int64 currentTime)
    {
        if (currentTime - this.startTime > int64(this.delay)) {
            return true;
        }
        return false;
    }
    

    bool isTimeSince(int delay, int64 currentTime)
    {
        if (currentTime - this.startTime > int64(this.delay)) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    int64 getElapsedTNT()
    {
        return System::currentTimeMillis() - this.startTime;
    }
    

    int64 getElapsed(int64 currentTime)
    {
        return currentTime - this.startTime;
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
        this.startTime = startTime;
    }
    

    int64 getStartTime()
    {
        return this.startTime;
    }
    

    void setStartTimeTNT()
    {
        this.startTime = System::currentTimeMillis();
    }
    

    void pause()
    {
        this.elapsedTimeAtPause = this.getElapsedTNT();
        this.startTime = Long::MAX_VALUE;
    }
    

    bool resume()
    {
        if (this.elapsedTimeAtPause != Long::MIN_VALUE) {
            this.startTime = System::currentTimeMillis() + this.elapsedTimeAtPause;
            this.elapsedTimeAtPause = Long::MIN_VALUE;
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
            return StringMaker().jinit_StringMaker().append(commonLabels.START).appendlong(this.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString();
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
            return StringMaker().jinit_StringMaker().append(commonLabels.START).appendlong(this.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString();
        } else {
            return StringUtil::getInstance().EMPTY_STRING;
        }
        return "";
    }
}

