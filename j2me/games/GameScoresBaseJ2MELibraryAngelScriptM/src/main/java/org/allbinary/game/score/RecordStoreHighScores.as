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

class RecordStoreHighScores : HighScores
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings_RecordStoreHighScores;
    PlatformRecordIdUtil@ platformRecordIdUtil_RecordStoreHighScores;
    TsUtil@ tsUtil_RecordStoreHighScores;
    string RECORD_ID_RecordStoreHighScores;
    int MAXHIGHSCORES_RecordStoreHighScores;
    GameInfo@ gameInfo_RecordStoreHighScores;
    AbeClientInformationInterface@ abeClientInformation_RecordStoreHighScores;
    RecordComparator@ recordComparatorInterface_RecordStoreHighScores;

    // Java field initializers run after the super constructor
    void jfields_RecordStoreHighScores()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_RecordStoreHighScores = CommonStrings::getInstance();
    @this.platformRecordIdUtil_RecordStoreHighScores = PlatformRecordIdUtil::getInstance();
    @this.tsUtil_RecordStoreHighScores = TsUtil::getInstance();
    this.RECORD_ID_RecordStoreHighScores = "_HS";
    this.MAXHIGHSCORES_RecordStoreHighScores = 100;
    
    
    
    }
    

    RecordStoreHighScores@ jinit_RecordStoreHighScores(AbeClientInformationInterface@ abeClientInformation, GameInfo@ gameInfo, string name, string heading, string columnTwoHeading, RecordComparator@ recordComparatorInterface)
    {
        this.jinit_HighScores(name, heading, columnTwoHeading);
        this.jfields_RecordStoreHighScores();
        @this.abeClientInformation_RecordStoreHighScores = abeClientInformation;
        @this.gameInfo_RecordStoreHighScores = gameInfo;
        @this.recordComparatorInterface_RecordStoreHighScores = recordComparatorInterface;
        this.load();
        return this;
    }
    

    string getRecordId(AbeClientInformationInterface@ abeClientInformation)
    {
        return this.platformRecordIdUtil_RecordStoreHighScores.getRecordId(abeClientInformation, StringMaker().jinit_StringMaker().append(CommonSeps::getInstance().UNDERSCORE).append(this.getName()).append(this.RECORD_ID_RecordStoreHighScores).toString());
    }
    

    void addHighScore(HighScore@ newHighScore)
    {
        RecordStore@ recordStore = NullRecordStore::NULL_RECORD_STORE;
        {
            Throwable@ jfinally0;
            try {
                try {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Adding HighScore: ").appendlong(newHighScore.getScore()).toString(), this, this.commonStrings_RecordStoreHighScores.ADD);
            if (this.isTooManyHighScores()) {
                this.logUtil.putF("Removing Lowest Score", this, this.commonStrings_RecordStoreHighScores.ADD);
                this.removeLowestHighScore();
            }
            @recordStore = RecordStore::openRecordStore(this.getRecordId(this.abeClientInformation_RecordStoreHighScores), true);
            int8[]@ highScoreBytes = newHighScore.getAsBytes();
            int recordId = recordStore.addRecord(highScoreBytes, 0, int(highScoreBytes.length()));
            this.load();
                } catch {
                    Throwable@ jex0 = jcatch();
                    if (cast<RecordStoreException>(jex0) !is null) {
                        RecordStoreException@ e = cast<RecordStoreException>(jex0);
            this.logUtil.put(this.commonStrings_RecordStoreHighScores.EXCEPTION, this, this.commonStrings_RecordStoreHighScores.ADD, e);
                    }
                    else if (cast<IOException>(jex0) !is null) {
                        IOException@ e = cast<IOException>(jex0);
            this.logUtil.put(this.commonStrings_RecordStoreHighScores.EXCEPTION, this, this.commonStrings_RecordStoreHighScores.ADD, e);
                    }
                    else if (cast<Exception>(jex0) !is null) {
                        Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings_RecordStoreHighScores.EXCEPTION, this, this.commonStrings_RecordStoreHighScores.ADD, e);
                    }
                    else { jthrow(jex0); }
                }
            } catch {
                @jfinally0 = jcatch();
            }
            try {
                if (recordStore !is null) {
                    PreLogUtil::put("Closing RecordStore", this, this.commonStrings_RecordStoreHighScores.ADD);
                    recordStore.closeRecordStore();
                }
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<RecordStoreException>(jex1) !is null) {
                    RecordStoreException@ e = cast<RecordStoreException>(jex1);
                this.logUtil.put(this.commonStrings_RecordStoreHighScores.EXCEPTION, this, this.commonStrings_RecordStoreHighScores.ADD, e);
                }
                else { jthrow(jex1); }
            }
            if (jfinally0 !is null) { jthrow(jfinally0); }
        }
    }
    

    void removeLowestHighScore()
    {
        RecordStore@ recordStore = NullRecordStore::NULL_RECORD_STORE;
        {
            Throwable@ jfinally2;
            try {
                try {
            @recordStore = RecordStore::openRecordStore(this.getRecordId(this.abeClientInformation_RecordStoreHighScores), true);
            RecordEnumeration@ recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true);
            ScoreComparator@ scoreComparator = (cast<ScoreComparator>(this.recordComparatorInterface_RecordStoreHighScores));
            HighScore@ bestHighScore = HighScore().jinit_HighScore(-1, "none", GameInfo::NONE, scoreComparator.getBestScore());
            int8[]@ recordAsBytes;
            ByteArrayInputStream@ byteArrayInputStream;
            DataInputStream@ inputStream;
            while (recordEnum.hasNextElement()) {
                int id = recordEnum.nextRecordId();
                @recordAsBytes = this.tsUtil_RecordStoreHighScores.getRecord(recordStore, id);
                if (recordAsBytes !is null) {
                    @byteArrayInputStream = ByteArrayInputStream().jinit_ByteArrayInputStream(recordAsBytes);
                    @inputStream = DataInputStream().jinit_DataInputStream(byteArrayInputStream);
                    string name = inputStream.readUTF();
                    int64 nextScore = inputStream.readLong();
                    HighScore@ nextCurrentHighScore = HighScore().jinit_HighScore(id, name, GameInfo::NONE, nextScore);
                    if (this.recordComparatorInterface_RecordStoreHighScores.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes()) == RecordComparator::FOLLOWS) {
                        @bestHighScore = nextCurrentHighScore;
                    }
                }
            }
            if (bestHighScore.getId() != -1) {
                this.logUtil.putF(StringMaker().jinit_StringMaker().append("Removing Lowest HighScore: ").appendlong(bestHighScore.getScore()).toString(), this, this.commonStrings_RecordStoreHighScores.LOAD);
                recordStore.deleteRecord(bestHighScore.getId());
            }
                } catch {
                    Throwable@ jex2 = jcatch();
                    if (cast<RecordStoreException>(jex2) !is null) {
                        RecordStoreException@ e = cast<RecordStoreException>(jex2);
            this.logUtil.put(this.commonStrings_RecordStoreHighScores.EXCEPTION, this, "removeLowestHighScore", e);
                    }
                    else if (cast<Exception>(jex2) !is null) {
                        Exception@ e = cast<Exception>(jex2);
            this.logUtil.put(this.commonStrings_RecordStoreHighScores.EXCEPTION, this, "removeLowestHighScore", e);
                    }
                    else { jthrow(jex2); }
                }
            } catch {
                @jfinally2 = jcatch();
            }
            try {
                if (recordStore !is null) {
                    PreLogUtil::put("Closing RecordStore", this, "removeLowestHighScore");
                    recordStore.closeRecordStore();
                }
            } catch {
                Throwable@ jex3 = jcatch();
                if (cast<RecordStoreException>(jex3) !is null) {
                    RecordStoreException@ e = cast<RecordStoreException>(jex3);
                this.logUtil.put(this.commonStrings_RecordStoreHighScores.EXCEPTION, this, "removeLowestHighScore", e);
                }
                else { jthrow(jex3); }
            }
            if (jfinally2 !is null) { jthrow(jfinally2); }
        }
    }
    

    void load()
    {
        RecordStore@ recordStore = NullRecordStore::NULL_RECORD_STORE;
        {
            Throwable@ jfinally4;
            try {
                try {
            @recordStore = RecordStore::openRecordStore(this.getRecordId(this.abeClientInformation_RecordStoreHighScores), true);
            this.setList(BasicArrayListD().jinit_BasicArrayListD());
            RecordEnumeration@ recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true);
            int8[]@ recordAsBytes;
            ByteArrayInputStream@ byteArrayInputStream;
            DataInputStream@ inputStream;
            while (recordEnum.hasNextElement()) {
                int id = recordEnum.nextRecordId();
                @recordAsBytes = this.tsUtil_RecordStoreHighScores.getRecord(recordStore, id);
                if (recordAsBytes !is null) {
                    @byteArrayInputStream = ByteArrayInputStream().jinit_ByteArrayInputStream(recordAsBytes);
                    @inputStream = DataInputStream().jinit_DataInputStream(byteArrayInputStream);
                    try {
                        string name = inputStream.readUTF();
                        int64 score = inputStream.readLong();
                        HighScore@ newHighScore = HighScore().jinit_HighScore(id, name, GameInfo::NONE, score);
                        BasicArrayList@ list = this.getList();
                        int size = list.size();
                        int lastIndex = size;
                        for (int index = 0; index < size; index++) {
                            HighScore@ highScore = cast<HighScore>(list.objectArray[index]);
                            if (this.recordComparatorInterface_RecordStoreHighScores.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator::PRECEDES) {
                                lastIndex = index;
                                break;
                            }
                        }
                        list.addAt(lastIndex, newHighScore);
                    } catch {
                        Throwable@ jex6 = jcatch();
                        if (cast<EOFException>(jex6) !is null) {
                            EOFException@ e = cast<EOFException>(jex6);
                        this.logUtil.put("EOF", this, this.commonStrings_RecordStoreHighScores.LOAD, e);
                        jthrow(e);
                        }
                        else { jthrow(jex6); }
                    }
                }
            }
                } catch {
                    Throwable@ jex4 = jcatch();
                    if (cast<RecordStoreNotFoundException>(jex4) !is null) {
                        RecordStoreNotFoundException@ e = cast<RecordStoreNotFoundException>(jex4);
            this.logUtil.put("No High Scores", this, this.commonStrings_RecordStoreHighScores.LOAD, e);
                    }
                    else if (cast<RecordStoreException>(jex4) !is null) {
                        RecordStoreException@ e = cast<RecordStoreException>(jex4);
            this.logUtil.put(this.commonStrings_RecordStoreHighScores.UNKNOWN, this, this.commonStrings_RecordStoreHighScores.LOAD, e);
                    }
                    else if (cast<IOException>(jex4) !is null) {
                        IOException@ e = cast<IOException>(jex4);
            this.logUtil.put(this.commonStrings_RecordStoreHighScores.UNKNOWN, this, this.commonStrings_RecordStoreHighScores.LOAD, e);
                    }
                    else if (cast<Exception>(jex4) !is null) {
                        Exception@ e = cast<Exception>(jex4);
            this.logUtil.put(this.commonStrings_RecordStoreHighScores.UNKNOWN, this, this.commonStrings_RecordStoreHighScores.LOAD, e);
                    }
                    else { jthrow(jex4); }
                }
            } catch {
                @jfinally4 = jcatch();
            }
            try {
                if (recordStore !is null) {
                    PreLogUtil::put("Closing RecordStore", this, this.commonStrings_RecordStoreHighScores.LOAD);
                    recordStore.closeRecordStore();
                }
            } catch {
                Throwable@ jex5 = jcatch();
                if (cast<RecordStoreException>(jex5) !is null) {
                    RecordStoreException@ e = cast<RecordStoreException>(jex5);
                this.logUtil.put(this.commonStrings_RecordStoreHighScores.EXCEPTION, this, this.commonStrings_RecordStoreHighScores.LOAD, e);
                }
                else { jthrow(jex5); }
            }
            if (jfinally4 !is null) { jthrow(jfinally4); }
        }
    }
    

    bool isTooManyHighScores()
    {
        if (this.getList() !is null && this.getList().size() < this.MAXHIGHSCORES_RecordStoreHighScores) {
            return false;
        } else {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("HighScores RecordStore Max Reached: ").appendint(this.MAXHIGHSCORES_RecordStoreHighScores).toString(), this, "isTooManyHighScores");
            return true;
        }
        return false;
    }
    

    bool isBestScore(HighScore@ newHighScore)
    {
        try {
            if (!this.isTooManyHighScores()) {
                this.logUtil.putF("Slot Available for a High Score", this, "isBestScore");
                return true;
            } else {
                BasicArrayList@ list = this.getList();
                int size = list.size();
                for (int index = 0; index < size; index++) {
                    HighScore@ highScore = cast<HighScore>(list.objectArray[index]);
                    if (this.recordComparatorInterface_RecordStoreHighScores.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator::FOLLOWS) {
                        this.logUtil.putF("Obtained a High Score", this, "isBestScore");
                        return true;
                    }
                }
            }
            this.logUtil.putF("Not a High Score", this, "isBestScore");
            return false;
        } catch {
            Throwable@ jex7 = jcatch();
            if (cast<Exception>(jex7) !is null) {
                Exception@ e = cast<Exception>(jex7);
            this.logUtil.put(this.commonStrings_RecordStoreHighScores.EXCEPTION, this, this.commonStrings_RecordStoreHighScores.ADD, e);
            jthrow(e);
            }
            else { jthrow(jex7); }
        }
        return false;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(HighScores::toString());
        BasicArrayList@ list = this.getList();
        int size = list.size();
        for (int index = 0; index < size; index++) {
            HighScore@ highScore = cast<HighScore>(list.objectArray[index]);
            stringBuffer.append(highScore.getScoreString());
            stringBuffer.append(CommonSeps::getInstance().COMMA_SEP);
        }
        return stringBuffer.toString();
    }
}

namespace RecordStoreHighScores
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_hashTable = StdUtil::getInstance().createHashtable();
    }

    ABHashtable@ jcell_hashTable;
    ABHashtable@ get_hashTable() property { jclinit(); return jcell_hashTable; }
    void set_hashTable(ABHashtable@ value) property { jclinit(); @jcell_hashTable = value; }
    

    HighScores@ getInstance(AbeClientInformationInterface@ abeClientInformation, GameInfo@ gameInfo, string highScoreName, string heading, string columnTwoHeading, RecordComparator@ recordComparatorInterface)
    {
        JObject@ highScoresCanBeNull = RecordStoreHighScores::hashTable.get(jbox(highScoreName));
        if (highScoresCanBeNull is null) {
            HighScores@ highScores = RecordStoreHighScores().jinit_RecordStoreHighScores(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface);
            RecordStoreHighScores::hashTable.put(highScores.getName(), highScores);
            return highScores;
        }
        return cast<HighScores>(highScoresCanBeNull);
    }
}

