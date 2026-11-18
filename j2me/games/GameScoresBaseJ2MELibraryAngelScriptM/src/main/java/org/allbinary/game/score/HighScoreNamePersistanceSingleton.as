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

class HighScoreNamePersistanceSingleton : JObjectBase
{
    LogUtil@ logUtil;
    TsUtil@ tsUtil;
    CommonStrings@ commonStrings;
    PlatformRecordIdUtil@ platformRecordIdUtil;
    string RECORD_ID;
    string name;
    BasicArrayList@ nameBasicArrayList;

    // Java field initializers run after the super constructor
    void jfields_HighScoreNamePersistanceSingleton()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.tsUtil = TsUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.platformRecordIdUtil = PlatformRecordIdUtil::getInstance();
    this.RECORD_ID = "_SN";
    this.name = StringUtil::getInstance().EMPTY_STRING;
    @this.nameBasicArrayList = BasicArrayListD().jinit_BasicArrayListD();
    }

    HighScoreNamePersistanceSingleton@ jinit_HighScoreNamePersistanceSingleton()
    {
        this.jfields_HighScoreNamePersistanceSingleton();
        return this;
    }
    

    void clear()
    {
        this.name = StringUtil::getInstance().EMPTY_STRING;
    }
    

    void deleteAll(AbeClientInformationInterface@ abeClientInformation, GameInfo@ gameInfo)
    {
        int size = this.nameBasicArrayList.size();
        for (int index = 0; index < size; index++) {
            JInteger@ integer = cast<JInteger>(this.nameBasicArrayList.objectArray[index]);
            this.delete(abeClientInformation, gameInfo, integer.intValue());
        }
        this.clear();
    }
    

    string getRecordId(AbeClientInformationInterface@ abeClientInformation)
    {
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, this.RECORD_ID);
    }
    

    void delete(AbeClientInformationInterface@ abeClientInformation, GameInfo@ gameInfo, int deleteId)
    {
        RecordStore@ recordStore = NullRecordStore::NULL_RECORD_STORE;
        {
            Throwable@ jfinally0;
            try {
                try {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Deleting: ").appendint(deleteId).toString(), this, this.commonStrings.delete);
            @recordStore = RecordStore::openRecordStore(this.getRecordId(abeClientInformation), true);
            recordStore.deleteRecord(deleteId);
                } catch {
                    Throwable@ jex0 = jcatch();
                    if (cast<Exception>(jex0) !is null) {
                        Exception@ e = cast<Exception>(jex0);
            jthrow(e);
                    }
                    else { jthrow(jex0); }
                }
            } catch {
                @jfinally0 = jcatch();
            }
            if (recordStore !is null) {
                PreLogUtil::put("Closing RecordStore", this, this.commonStrings.delete);
                recordStore.closeRecordStore();
            }
            if (jfinally0 !is null) { jthrow(jfinally0); }
        }
    }
    

    BasicArrayList@ getIds()
    {
        return this.nameBasicArrayList;
    }
    

    string load(AbeClientInformationInterface@ abeClientInformation, GameInfo@ gameInfo)
    {
        RecordStore@ recordStore = NullRecordStore::NULL_RECORD_STORE;
        {
            Throwable@ jfinally1;
            try {
                try {
            if (this.name == StringUtil::getInstance().EMPTY_STRING) {
                string LOADING_ID = "Loading id: ";
                @recordStore = RecordStore::openRecordStore(this.getRecordId(abeClientInformation), true);
                RecordEnumeration@ recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true);
                SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
                int8[]@ recordAsBytes;
                ByteArrayInputStream@ byteArrayInputStream;
                DataInputStream@ inputStream;
                while (recordEnum.hasNextElement()) {
                    int id = recordEnum.nextRecordId();
                    this.logUtil.putF(StringMaker().jinit_StringMaker().append(LOADING_ID).appendint(id).toString(), this, this.commonStrings.LOAD);
                    @recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                    @byteArrayInputStream = ByteArrayInputStream().jinit_ByteArrayInputStream(recordAsBytes);
                    @inputStream = DataInputStream().jinit_DataInputStream(byteArrayInputStream);
                    while (inputStream.available() > 0) {
                        this.name = inputStream.readUTF();
                    }
                    this.nameBasicArrayList.add(smallIntegerSingletonFactory.getAt(id));
                }
            }
                } catch {
                    Throwable@ jex1 = jcatch();
                    if (cast<Exception>(jex1) !is null) {
                        Exception@ e = cast<Exception>(jex1);
            this.save(abeClientInformation, gameInfo, this.name);
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(ExceptionUtil::getInstance().getStackTrace(e)).toString(), this, this.commonStrings.LOAD);
                    }
                    else { jthrow(jex1); }
                }
            } catch {
                @jfinally1 = jcatch();
            }
            try {
                if (recordStore !is null) {
                    PreLogUtil::put("Closing RecordStore", this, this.commonStrings.LOAD);
                    recordStore.closeRecordStore();
                }
            } catch {
                Throwable@ jex2 = jcatch();
                if (cast<RecordStoreException>(jex2) !is null) {
                    RecordStoreException@ e = cast<RecordStoreException>(jex2);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.LOAD, e);
                }
                else { jthrow(jex2); }
            }
            if (jfinally1 !is null) { jthrow(jfinally1); }
        }
        return this.name;
    }
    

    void save(AbeClientInformationInterface@ abeClientInformation, GameInfo@ gameInfo, string name)
    {
        RecordStore@ recordStore = NullRecordStore::NULL_RECORD_STORE;
        {
            Throwable@ jfinally3;
            try {
                try {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Saving: ").append(name).toString(), this, this.commonStrings.SAVE);
            @recordStore = RecordStore::openRecordStore(this.getRecordId(abeClientInformation), true);
            ByteArrayOutputStream@ byteArrayOutputStream = ByteArrayOutputStream().jinit_ByteArrayOutputStream();
            DataOutputStream@ outputStream = DataOutputStream().jinit_DataOutputStream(byteArrayOutputStream);
            outputStream.writeUTF(name);
            int8[]@ savedGameBytes = byteArrayOutputStream.toByteArray();
            recordStore.addRecord(savedGameBytes, 0, int(savedGameBytes.length()));
            this.name = name;
                } catch {
                    Throwable@ jex3 = jcatch();
                    if (cast<Exception>(jex3) !is null) {
                        Exception@ e = cast<Exception>(jex3);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.SAVE, e);
                    }
                    else { jthrow(jex3); }
                }
            } catch {
                @jfinally3 = jcatch();
            }
            try {
                if (recordStore !is null) {
                    PreLogUtil::put("Closing RecordStore", this, this.commonStrings.SAVE);
                    recordStore.closeRecordStore();
                }
            } catch {
                Throwable@ jex4 = jcatch();
                if (cast<RecordStoreException>(jex4) !is null) {
                    RecordStoreException@ e = cast<RecordStoreException>(jex4);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.SAVE, e);
                }
                else { jthrow(jex4); }
            }
            if (jfinally3 !is null) { jthrow(jfinally3); }
        }
    }
}

namespace HighScoreNamePersistanceSingleton
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = HighScoreNamePersistanceSingleton().jinit_HighScoreNamePersistanceSingleton();
    }

    HighScoreNamePersistanceSingleton@ jcell_SINGLETON;
    HighScoreNamePersistanceSingleton@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(HighScoreNamePersistanceSingleton@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    HighScoreNamePersistanceSingleton@ getInstance()
    {
        return HighScoreNamePersistanceSingleton::SINGLETON;
    }
}

