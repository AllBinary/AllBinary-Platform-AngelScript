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
// package org.allbinary.canvas

class BaseGameStatistics : JObjectBase
{
    TimeDelayHelper@ timeDelayHelper_BaseGameStatistics;
    TimeDelayHelper@ updateDelayHelper_BaseGameStatistics;
    int64 totalRefreshes_BaseGameStatistics;
    int64 totalFrames_BaseGameStatistics;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper;
    int DEFAULT_SCALE_FACTOR_BaseGameStatistics;
    string NOT;
    string EMPTY_STRING_BaseGameStatistics;
    string[]@ STRING_ARRAY_BaseGameStatistics;
    uint16 SPACE_CHAR_BaseGameStatistics;
    uint16 PLUS_CHAR_BaseGameStatistics;
    uint16 X_CHAR_BaseGameStatistics;
    uint16[]@[]@ CHAR_ARRAY_BaseGameStatistics;
    PrimitiveLongSingleton@ primitiveLongSingleton_BaseGameStatistics;

    // Java field initializers run after the super constructor
    void jfields_BaseGameStatistics()
    {
    @this.timeDelayHelper_BaseGameStatistics = TimeDelayHelper().jinit_TimeDelayHelper(Integer::MAX_VALUE);
    @this.updateDelayHelper_BaseGameStatistics = TimeDelayHelper().jinit_TimeDelayHelper(2000);
    
    
    @this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory::getInstance();
    this.DEFAULT_SCALE_FACTOR_BaseGameStatistics = ScaleFactorFactory::getInstance().DEFAULT_SCALE_FACTOR;
    this.NOT = "Not enough Time to Calculate";
    this.EMPTY_STRING_BaseGameStatistics = StringUtil::getInstance().EMPTY_STRING;
    @this.STRING_ARRAY_BaseGameStatistics = array<string> = {" Total Time: ", this.EMPTY_STRING_BaseGameStatistics, " Total Frames: ", this.EMPTY_STRING_BaseGameStatistics, " Frames/10 Sec: ", this.EMPTY_STRING_BaseGameStatistics, " Total Paints: ", this.EMPTY_STRING_BaseGameStatistics, " Paints/10 Sec: ", this.EMPTY_STRING_BaseGameStatistics};
    this.SPACE_CHAR_BaseGameStatistics = uint16(' ');
    this.PLUS_CHAR_BaseGameStatistics = uint16('+');
    this.X_CHAR_BaseGameStatistics = uint16('X');
    @this.CHAR_ARRAY_BaseGameStatistics = array<uint16[]@> = {array<uint16> = {uint16('F'), uint16('r'), uint16('a'), uint16('m'), uint16('e'), uint16('s'), uint16('/'), uint16('1'), uint16('0'), uint16(' '), uint16('S'), uint16('e'), uint16('c'), uint16(':')}, array<uint16> = {uint16('X'), uint16('X')}, array<uint16> = {uint16('P'), uint16('a'), uint16('i'), uint16('n'), uint16('t'), uint16('s'), uint16('/'), uint16('1'), uint16('0'), uint16(' '), uint16('S'), uint16('e'), uint16('c'), uint16(':')}, array<uint16> = {uint16('X'), uint16('X')}};
    @this.primitiveLongSingleton_BaseGameStatistics = PrimitiveLongSingleton::getInstance();
    }
    

    BaseGameStatistics@ jinit_BaseGameStatistics()
    {
        this.jfields_BaseGameStatistics();
        return this;
    }
    

    void init()
    {
        this.timeDelayHelper_BaseGameStatistics.setStartTimeTNT();
        this.totalRefreshes_BaseGameStatistics = 0;
        this.totalFrames_BaseGameStatistics = 0;
    }
    

    void add(string string_)
    {
    }
    

    void process()
    {
    }
    

    void nextFrame()
    {
        this.totalFrames_BaseGameStatistics++;
    }
    

    void nextRefresh()
    {
        this.totalRefreshes_BaseGameStatistics++;
    }
    

    int16 getRefreshRate()
    {
        int64 elapsed = this.timeDelayHelper_BaseGameStatistics.getElapsed(this.gameTickTimeDelayHelper.startTime);
        if (elapsed > 1) {
            int16 time = int16((this.totalRefreshes_BaseGameStatistics / (elapsed >>> this.DEFAULT_SCALE_FACTOR_BaseGameStatistics)));
            return time;
        } else {
            return 0;
        }
        return 0;
    }
    

    TimeDelayHelper@ getTimeDelayHelper()
    {
        return this.timeDelayHelper_BaseGameStatistics;
    }
    

    uint16[]@[]@ to2DCharArray()
    {
        int64 totalTime = this.timeDelayHelper_BaseGameStatistics.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime >>> this.DEFAULT_SCALE_FACTOR_BaseGameStatistics);
        if (totalTime > 0 && this.updateDelayHelper_BaseGameStatistics.isTime(this.gameTickTimeDelayHelper.startTime)) {
            int framesPerSec = int((this.totalFrames_BaseGameStatistics / totalTime));
            if (framesPerSec < 10) {
                this.CHAR_ARRAY_BaseGameStatistics[1][0] = this.SPACE_CHAR_BaseGameStatistics;
                this.CHAR_ARRAY_BaseGameStatistics[1][1] = this.primitiveLongSingleton_BaseGameStatistics.NUMBER_CHAR_ARRAY[framesPerSec];
            } else if (framesPerSec < 100) {
                int tens = framesPerSec / 10;
                int removeTens = tens * 10;
                this.CHAR_ARRAY_BaseGameStatistics[1][0] = this.primitiveLongSingleton_BaseGameStatistics.NUMBER_CHAR_ARRAY[tens];
                this.CHAR_ARRAY_BaseGameStatistics[1][1] = this.primitiveLongSingleton_BaseGameStatistics.NUMBER_CHAR_ARRAY[framesPerSec - removeTens];
            } else {
                this.CHAR_ARRAY_BaseGameStatistics[1][0] = this.PLUS_CHAR_BaseGameStatistics;
                this.CHAR_ARRAY_BaseGameStatistics[1][1] = this.PLUS_CHAR_BaseGameStatistics;
            }
            int refreshesPerSec = int((this.totalRefreshes_BaseGameStatistics / totalTime));
            if (refreshesPerSec < 10) {
                this.CHAR_ARRAY_BaseGameStatistics[3][0] = this.X_CHAR_BaseGameStatistics;
                this.CHAR_ARRAY_BaseGameStatistics[3][1] = this.primitiveLongSingleton_BaseGameStatistics.NUMBER_CHAR_ARRAY[refreshesPerSec];
            } else if (refreshesPerSec < 100) {
                int tens = refreshesPerSec / 10;
                int removeTens = tens * 10;
                this.CHAR_ARRAY_BaseGameStatistics[3][0] = this.primitiveLongSingleton_BaseGameStatistics.NUMBER_CHAR_ARRAY[refreshesPerSec / 10];
                this.CHAR_ARRAY_BaseGameStatistics[3][1] = this.primitiveLongSingleton_BaseGameStatistics.NUMBER_CHAR_ARRAY[refreshesPerSec - removeTens];
            } else {
                this.CHAR_ARRAY_BaseGameStatistics[3][0] = this.PLUS_CHAR_BaseGameStatistics;
                this.CHAR_ARRAY_BaseGameStatistics[3][1] = this.PLUS_CHAR_BaseGameStatistics;
            }
        }
        return this.CHAR_ARRAY_BaseGameStatistics;
    }
    

    string[]@ toStringArray()
    {
        int64 totalTime = this.timeDelayHelper_BaseGameStatistics.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime / 10000);
        if (totalTime > 0) {
            this.STRING_ARRAY_BaseGameStatistics[1] = Long::toString(totalTime);
            this.STRING_ARRAY_BaseGameStatistics[3] = Long::toString(this.totalFrames_BaseGameStatistics);
            this.STRING_ARRAY_BaseGameStatistics[5] = Long::toString(this.totalFrames_BaseGameStatistics / totalTime);
            this.STRING_ARRAY_BaseGameStatistics[7] = Long::toString(this.totalRefreshes_BaseGameStatistics);
            this.STRING_ARRAY_BaseGameStatistics[9] = Long::toString(this.totalRefreshes_BaseGameStatistics / totalTime);
        } else {
            string string_ = this.EMPTY_STRING_BaseGameStatistics;
            this.STRING_ARRAY_BaseGameStatistics[1] = string_;
            this.STRING_ARRAY_BaseGameStatistics[3] = string_;
            this.STRING_ARRAY_BaseGameStatistics[5] = string_;
            this.STRING_ARRAY_BaseGameStatistics[7] = string_;
            this.STRING_ARRAY_BaseGameStatistics[9] = string_;
        }
        return this.STRING_ARRAY_BaseGameStatistics;
    }
    

    string toStringAt(int64 totalTime)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(this.STRING_ARRAY_BaseGameStatistics[0]);
        stringBuffer.appendlong(totalTime);
        stringBuffer.append(this.STRING_ARRAY_BaseGameStatistics[2]);
        stringBuffer.appendlong(this.totalFrames_BaseGameStatistics);
        stringBuffer.append(this.STRING_ARRAY_BaseGameStatistics[4]);
        stringBuffer.appendlong(this.totalFrames_BaseGameStatistics / totalTime);
        if (this.totalRefreshes_BaseGameStatistics > 0) {
            stringBuffer.append(this.STRING_ARRAY_BaseGameStatistics[6]);
            stringBuffer.appendlong(this.totalRefreshes_BaseGameStatistics);
            stringBuffer.append(this.STRING_ARRAY_BaseGameStatistics[8]);
            stringBuffer.appendlong(this.totalRefreshes_BaseGameStatistics / totalTime);
            stringBuffer.append(CommonSeps::getInstance().NEW_LINE);
        }
        return stringBuffer.toString();
    }
    

    string toString()
    {
        int64 totalTime = this.timeDelayHelper_BaseGameStatistics.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime / 1000);
        if (totalTime > 0) {
            return this.toStringAt(totalTime);
        } else {
            return this.NOT;
        }
        return "";
    }
}

