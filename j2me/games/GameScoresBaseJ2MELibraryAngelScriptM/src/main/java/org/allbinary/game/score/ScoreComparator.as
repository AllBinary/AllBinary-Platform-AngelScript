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
// package org.allbinary.game.score

class ScoreComparator : JObjectBase, RecordComparator
{
    LogUtil@ logUtil;
    bool isHighestBest;

    // Java field initializers run after the super constructor
    void jfields_ScoreComparator()
    {
    @this.logUtil = LogUtil::getInstance();
    
    }
    

    ScoreComparator@ jinit_ScoreComparator(bool isHighestBest)
    {
        this.jfields_ScoreComparator();
        this.isHighestBest = isHighestBest;
        return this;
    }
    

    int64 getBestScore()
    {
        return (this.isHighestBest ? Long::MAX_VALUE : 0);
    }
    

    int compare(int8[]@ recordOne, int8[]@ recordTwo)
    {
        ByteArrayInputStream@ byteArrayInputStreamOne = ByteArrayInputStream().jinit_ByteArrayInputStream(recordOne);
        DataInputStream@ inputStreamOne = DataInputStream().jinit_DataInputStream(byteArrayInputStreamOne);
        ByteArrayInputStream@ byteArrayInputStreamTwo = ByteArrayInputStream().jinit_ByteArrayInputStream(recordTwo);
        DataInputStream@ inputStreamTwo = DataInputStream().jinit_DataInputStream(byteArrayInputStreamTwo);
        int64 scoreOne = 0;
        int64 scoreTwo = 0;
        try {
            inputStreamOne.readUTF();
            inputStreamTwo.readUTF();
            scoreOne = inputStreamOne.readLong();
            scoreTwo = inputStreamTwo.readLong();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<EOFException>(jex0) !is null) {
                EOFException@ e = cast<EOFException>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e);
            }
            else if (cast<IOException>(jex0) !is null) {
                IOException@ e = cast<IOException>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e);
            }
            else if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e);
            }
            else { jthrow(jex0); }
        }
        if (this.isHighestBest) {
            return this.getHighTooLow(scoreOne, scoreTwo);
        } else {
            return this.getLowTooHigh(scoreOne, scoreTwo);
        }
        return 0;
    }
    

    int getHighTooLow(int64 scoreOne, int64 scoreTwo)
    {
        if (scoreOne > scoreTwo) {
            return RecordComparator::PRECEDES;
        } else if (scoreOne < scoreTwo) {
            return RecordComparator::FOLLOWS;
        } else {
            return RecordComparator::EQUIVALENT;
        }
        return 0;
    }
    

    int getLowTooHigh(int64 scoreOne, int64 scoreTwo)
    {
        if (scoreOne < scoreTwo) {
            return RecordComparator::PRECEDES;
        } else if (scoreOne > scoreTwo) {
            return RecordComparator::FOLLOWS;
        } else {
            return RecordComparator::EQUIVALENT;
        }
        return 0;
    }
}

