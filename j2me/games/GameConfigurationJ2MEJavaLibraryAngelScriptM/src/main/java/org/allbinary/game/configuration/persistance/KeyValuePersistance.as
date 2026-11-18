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
// package org.allbinary.game.configuration.persistance

class KeyValuePersistance : BasicPersitance
{
    TsUtil@ tsUtil_KeyValuePersistance;

    // Java field initializers run after the super constructor
    void jfields_KeyValuePersistance()
    {
    @this.tsUtil_KeyValuePersistance = TsUtil::getInstance();
    }
    

    KeyValuePersistance@ jinit_KeyValuePersistance(string recordId)
    {
        this.jinit_BasicPersitance(recordId);
        this.jfields_KeyValuePersistance();
        return this;
    }
    

    void loadAll(AbeClientInformationInterface@ abeClientInformation)
    {
        this.loadAllSize(abeClientInformation, 1);
    }
    

    void loadAllSize(AbeClientInformationInterface@ abeClientInformation, int size)
    {
        RecordStore@ recordStore = NullRecordStore::NULL_RECORD_STORE;
        {
            Throwable@ jfinally0;
            try {
                try {
            @recordStore = RecordStore::openRecordStore(this.getRecordId(abeClientInformation), true);
            RecordEnumeration@ recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true);
            ABHashtable@ hashtable;
            string name = "";
            string value = "";
            SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            int8[]@ recordAsBytes;
            ByteArrayInputStream@ byteArrayInputStream;
            DataInputStream@ inputStream;
            while (recordEnum.hasNextElement()) {
                int id = recordEnum.nextRecordId();
                stringBuffer.delete(0, stringBuffer.length());
                this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL);
                @recordAsBytes = this.tsUtil_KeyValuePersistance.getRecord(recordStore, id);
                if (recordAsBytes !is null) {
                    @byteArrayInputStream = ByteArrayInputStream().jinit_ByteArrayInputStream(recordAsBytes);
                    @inputStream = DataInputStream().jinit_DataInputStream(byteArrayInputStream);
                    @hashtable = ABHashtable().jinit_ABHashtable();
                    for (int index = 0; index < size; index++) {
                        name = inputStream.readUTF();
                        inputStream.readUTF();
                        value = inputStream.readUTF();
                        hashtable.put(name, value);
                    }
                    this.valueList.add(hashtable);
                    this.idList.add(smallIntegerSingletonFactory.getAt(id));
                }
            }
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
                PreLogUtil::put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.persistanceStrings.LOAD_ALL);
                recordStore.closeRecordStore();
            }
            if (jfinally0 !is null) { jthrow(jfinally0); }
        }
    }
    

    void save(AbeClientInformationInterface@ abeClientInformation, ABHashtable@ hashtable)
    {
        RecordStore@ recordStore = NullRecordStore::NULL_RECORD_STORE;
        {
            Throwable@ jfinally1;
            try {
                try {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.persistanceStrings.SAVING).append(StringUtil::getInstance().toString(hashtable)).toString(), this, this.commonStrings.SAVE);
            @recordStore = RecordStore::openRecordStore(this.getRecordId(abeClientInformation), true);
            ByteArrayOutputStream@ byteArrayOutputStream = ByteArrayOutputStream().jinit_ByteArrayOutputStream();
            DataOutputStream@ outputStream = DataOutputStream().jinit_DataOutputStream(byteArrayOutputStream);
            string value = "";
            CommonSeps@ commonSeps = CommonSeps::getInstance();
            JObject@[]@ objectArray = HashtableUtil::getInstance().getKeysAsArray(hashtable);
            JObject@ anyType;
            int size = int(objectArray.length());
            for (int index = 0; index < size; index++) {
                outputStream.writeUTF(jstringOf(objectArray[index]));
                outputStream.writeUTF(commonSeps.EQUALS);
                @anyType = objectArray[index];
                value = jstringOf(hashtable.get(anyType));
                outputStream.writeUTF(value);
            }
            TsUtil@ tsUtil = TsUtil::getInstance();
            int8[]@ savedGameBytes = tsUtil.getByteArray(byteArrayOutputStream.toString());
            recordStore.addRecord(savedGameBytes, 0, int(savedGameBytes.length()));
                } catch {
                    Throwable@ jex1 = jcatch();
                    if (cast<Exception>(jex1) !is null) {
                        Exception@ e = cast<Exception>(jex1);
            jthrow(e);
                    }
                    else { jthrow(jex1); }
                }
            } catch {
                @jfinally1 = jcatch();
            }
            if (recordStore !is null) {
                PreLogUtil::put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.SAVE);
                recordStore.closeRecordStore();
            }
            if (jfinally1 !is null) { jthrow(jfinally1); }
        }
    }
    

    ABHashtable@ get(int index)
    {
        ABHashtable@ hashtable = cast<ABHashtable>(this.valueList.objectArray[index]);
        return hashtable;
    }
}

