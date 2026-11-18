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
    TimeDelayHelper@ timeDelayHelper;
    TimeDelayHelper@ updateDelayHelper;
    int64 totalRefreshes;
    int64 totalFrames;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper;
    int DEFAULT_SCALE_FACTOR;
    string NOT;
    string EMPTY_STRING;
    string[]@ STRING_ARRAY;
    uint16 SPACE_CHAR;
    uint16 PLUS_CHAR;
    uint16 X_CHAR;
    uint16[]@[]@ CHAR_ARRAY;
    PrimitiveLongSingleton@ primitiveLongSingleton;

    // Java field initializers run after the super constructor
    void jfields_BaseGameStatistics()
    {
    @this.timeDelayHelper = TimeDelayHelper().jinit_TimeDelayHelper(Integer::MAX_VALUE);
    @this.updateDelayHelper = TimeDelayHelper().jinit_TimeDelayHelper(2000);
    
    
    @this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory::getInstance();
    this.DEFAULT_SCALE_FACTOR = ScaleFactorFactory::getInstance().DEFAULT_SCALE_FACTOR;
    this.NOT = "Not enough Time to Calculate";
    this.EMPTY_STRING = StringUtil::getInstance().EMPTY_STRING;
    @this.STRING_ARRAY = array<string> = {" Total Time: ", this.EMPTY_STRING, " Total Frames: ", this.EMPTY_STRING, " Frames/10 Sec: ", this.EMPTY_STRING, " Total Paints: ", this.EMPTY_STRING, " Paints/10 Sec: ", this.EMPTY_STRING};
    this.SPACE_CHAR = uint16(' ');
    this.PLUS_CHAR = uint16('+');
    this.X_CHAR = uint16('X');
    @this.CHAR_ARRAY = array<uint16[]@> = {array<uint16> = {uint16('F'), uint16('r'), uint16('a'), uint16('m'), uint16('e'), uint16('s'), uint16('/'), uint16('1'), uint16('0'), uint16(' '), uint16('S'), uint16('e'), uint16('c'), uint16(':')}, array<uint16> = {uint16('X'), uint16('X')}, array<uint16> = {uint16('P'), uint16('a'), uint16('i'), uint16('n'), uint16('t'), uint16('s'), uint16('/'), uint16('1'), uint16('0'), uint16(' '), uint16('S'), uint16('e'), uint16('c'), uint16(':')}, array<uint16> = {uint16('X'), uint16('X')}};
    @this.primitiveLongSingleton = PrimitiveLongSingleton::getInstance();
    }
    

    BaseGameStatistics@ jinit_BaseGameStatistics()
    {
        this.jfields_BaseGameStatistics();
        return this;
    }
    

    void init()
    {
        this.timeDelayHelper.setStartTimeTNT();
        this.totalRefreshes = 0;
        this.totalFrames = 0;
    }
    

    void add(string string_)
    {
    }
    

    void process()
    {
    }
    

    void nextFrame()
    {
        this.totalFrames++;
    }
    

    void nextRefresh()
    {
        this.totalRefreshes++;
    }
    

    int16 getRefreshRate()
    {
        int64 elapsed = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        if (elapsed > 1) {
            int16 time = int16((this.totalRefreshes / (elapsed >>> this.DEFAULT_SCALE_FACTOR)));
            return time;
        } else {
            return 0;
        }
        return 0;
    }
    

    TimeDelayHelper@ getTimeDelayHelper()
    {
        return this.timeDelayHelper;
    }
    

    uint16[]@[]@ to2DCharArray()
    {
        int64 totalTime = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime >>> this.DEFAULT_SCALE_FACTOR);
        if (totalTime > 0 && this.updateDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            int framesPerSec = int((this.totalFrames / totalTime));
            if (framesPerSec < 10) {
                this.CHAR_ARRAY[1][0] = this.SPACE_CHAR;
                this.CHAR_ARRAY[1][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec];
            } else if (framesPerSec < 100) {
                int tens = framesPerSec / 10;
                int removeTens = tens * 10;
                this.CHAR_ARRAY[1][0] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[tens];
                this.CHAR_ARRAY[1][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec - removeTens];
            } else {
                this.CHAR_ARRAY[1][0] = this.PLUS_CHAR;
                this.CHAR_ARRAY[1][1] = this.PLUS_CHAR;
            }
            int refreshesPerSec = int((this.totalRefreshes / totalTime));
            if (refreshesPerSec < 10) {
                this.CHAR_ARRAY[3][0] = this.X_CHAR;
                this.CHAR_ARRAY[3][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec];
            } else if (refreshesPerSec < 100) {
                int tens = refreshesPerSec / 10;
                int removeTens = tens * 10;
                this.CHAR_ARRAY[3][0] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec / 10];
                this.CHAR_ARRAY[3][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec - removeTens];
            } else {
                this.CHAR_ARRAY[3][0] = this.PLUS_CHAR;
                this.CHAR_ARRAY[3][1] = this.PLUS_CHAR;
            }
        }
        return this.CHAR_ARRAY;
    }
    

    string[]@ toStringArray()
    {
        int64 totalTime = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime / 10000);
        if (totalTime > 0) {
            this.STRING_ARRAY[1] = Long::toString(totalTime);
            this.STRING_ARRAY[3] = Long::toString(this.totalFrames);
            this.STRING_ARRAY[5] = Long::toString(this.totalFrames / totalTime);
            this.STRING_ARRAY[7] = Long::toString(this.totalRefreshes);
            this.STRING_ARRAY[9] = Long::toString(this.totalRefreshes / totalTime);
        } else {
            string string_ = this.EMPTY_STRING;
            this.STRING_ARRAY[1] = string_;
            this.STRING_ARRAY[3] = string_;
            this.STRING_ARRAY[5] = string_;
            this.STRING_ARRAY[7] = string_;
            this.STRING_ARRAY[9] = string_;
        }
        return this.STRING_ARRAY;
    }
    

    string toStringAt(int64 totalTime)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(this.STRING_ARRAY[0]);
        stringBuffer.appendlong(totalTime);
        stringBuffer.append(this.STRING_ARRAY[2]);
        stringBuffer.appendlong(this.totalFrames);
        stringBuffer.append(this.STRING_ARRAY[4]);
        stringBuffer.appendlong(this.totalFrames / totalTime);
        if (this.totalRefreshes > 0) {
            stringBuffer.append(this.STRING_ARRAY[6]);
            stringBuffer.appendlong(this.totalRefreshes);
            stringBuffer.append(this.STRING_ARRAY[8]);
            stringBuffer.appendlong(this.totalRefreshes / totalTime);
            stringBuffer.append(CommonSeps::getInstance().NEW_LINE);
        }
        return stringBuffer.toString();
    }
    

    string toString()
    {
        int64 totalTime = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime / 1000);
        if (totalTime > 0) {
            return this.toStringAt(totalTime);
        } else {
            return this.NOT;
        }
        return "";
    }
}

