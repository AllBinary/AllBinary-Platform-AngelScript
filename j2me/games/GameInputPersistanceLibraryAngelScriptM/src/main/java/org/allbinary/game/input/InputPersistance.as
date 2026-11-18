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
// package org.allbinary.game.input

//GameInputPersistanceLibrary
class InputPersistance : BasicPersitance
{
    TsUtil@ tsUtil_InputPersistance;
    HashtableUtil@ hashtableUtil_InputPersistance;

    // Java field initializers run after the super constructor
    void jfields_InputPersistance()
    {
    @this.tsUtil_InputPersistance = TsUtil::getInstance();
    @this.hashtableUtil_InputPersistance = HashtableUtil::getInstance();
    }
    

    InputPersistance@ jinit_InputPersistance(string name)
    {
        this.jinit_BasicPersitance(name);
        this.jfields_InputPersistance();
        return this;
    }
    

    void loadAll(AbeClientInformationInterface@ abeClientInformation)
    {
        RecordStore@ recordStore = NullRecordStore::NULL_RECORD_STORE;
        {
            Throwable@ jfinally0;
            try {
                try {
            @recordStore = RecordStore::openRecordStore(this.getRecordId(abeClientInformation), true);
            RecordEnumeration@ recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true);
            int64 gameActionInputId = 0;
            int64 inputId = 0;
            Input@ gameActionInput;
            Input@ input;
            ABHashtable@ hashtable;
            GameKeyMappingFactory@ gameKeyFactory = GameKeyMappingFactory::getInstance();
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            InputFactory@ inputFactory = InputFactory::getInstance();
            SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
            StdUtil@ stdUtil = StdUtil::getInstance();
            int8[]@ recordAsBytes;
            ByteArrayInputStream@ byteArrayInputStream;
            DataInputStream@ inputStream;
            while (recordEnum.hasNextElement()) {
                int id = recordEnum.nextRecordId();
                stringBuffer.delete(0, stringBuffer.length());
                this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL);
                @recordAsBytes = this.tsUtil_InputPersistance.getRecord(recordStore, id);
                if (recordAsBytes !is null) {
                    @byteArrayInputStream = ByteArrayInputStream().jinit_ByteArrayInputStream(recordAsBytes);
                    @inputStream = DataInputStream().jinit_DataInputStream(byteArrayInputStream);
                    @hashtable = stdUtil.createHashtable();
                    int value = 0;
                    while (inputStream.available() > 0) {
                        string gameActionInputIdAsString = inputStream.readUTF();
                        value = Integer::parseInt(gameActionInputIdAsString);
                        gameActionInputId = int64(value);
                        inputStream.readUTF();
                        value = Integer::parseInt(inputStream.readUTF());
                        inputId = int64(value);
                        @gameActionInput = gameKeyFactory.getGameKey(int(gameActionInputId));
                        @input = inputFactory.getInstanceById(int(inputId));
                        if (input is inputFactory.NO_INPUT || gameActionInput is null) {
                            stringBuffer.delete(0, stringBuffer.length());
                            if (input is inputFactory.NO_INPUT) {
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING_ID);
                                stringBuffer.appendlong(inputId);
                                stringBuffer.append(this.persistanceStrings.GAME_ACTION_INPUT);
                                stringBuffer.appendlong(gameActionInputId);
                                PreLogUtil::put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL);
                            }
                            if (gameActionInput is null) {
                                stringBuffer.delete(0, stringBuffer.length());
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING);
                                stringBuffer.appendlong(gameActionInputId);
                                stringBuffer.append(this.persistanceStrings.ID);
                                stringBuffer.appendlong(inputId);
                                PreLogUtil::put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL);
                            }
                        } else {
                        }
                        hashtable.put(input, gameActionInput);
                    }
                    this.valueList.add(hashtable);
                    this.idList.add(smallIntegerSingletonFactory.getAt(id));
                } else {
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
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            PreLogUtil::put(stringBuffer.append(this.persistanceStrings.SAVING).append(StringUtil::getInstance().toString(hashtable)).toString(), this, this.commonStrings.SAVE);
            @recordStore = RecordStore::openRecordStore(this.getRecordId(abeClientInformation), true);
            ByteArrayOutputStream@ byteArrayOutputStream = ByteArrayOutputStream().jinit_ByteArrayOutputStream();
            DataOutputStream@ outputStream = DataOutputStream().jinit_DataOutputStream(byteArrayOutputStream);
            Input@ gameActionInput;
            BasicArrayList@ list;
            Input@ input;
            int8[]@ savedGameBytes;
            CommonSeps@ commonSeps = CommonSeps::getInstance();
            SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
            JObject@[]@ inputObjectArray = this.hashtableUtil_InputPersistance.getKeysAsArray(hashtable);
            int size = int(inputObjectArray.length());
            for (int index = 0; index < size; index++) {
                @gameActionInput = cast<Input>(inputObjectArray[index]);
                @list = cast<BasicArrayList>(hashtable.get(inputObjectArray[index]));
                for (int index2 = 0; index2 < list.size(); index2++) {
                    string gameActionInputIdAsString = smallIntegerSingletonFactory.getAt(gameActionInput.getId()).toString();
                    outputStream.writeUTF(gameActionInputIdAsString);
                    outputStream.writeUTF(commonSeps.EQUALS);
                    @input = cast<Input>(list.objectArray[index2]);
                    string inputIdAsString = smallIntegerSingletonFactory.getAt(input.getId()).toString();
                    outputStream.writeUTF(inputIdAsString);
                }
            }
            @savedGameBytes = byteArrayOutputStream.toByteArray();
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
}

