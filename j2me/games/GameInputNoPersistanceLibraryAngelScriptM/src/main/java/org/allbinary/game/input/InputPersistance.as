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

//GameInputNoPersistanceLibrary
class InputPersistance : BasicPersitance
{
    HashtableUtil@ hashtableUtil_InputPersistance;

    // Java field initializers run after the super constructor
    void jfields_InputPersistance()
    {
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
        RecordStore@ recordStore = RecordStore::openRecordStore(this.getRecordId(abeClientInformation), true);
        RecordEnumeration@ recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true);
        ABHashtable@ hashtable;
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
        int id = 0;
        while (recordEnum.hasNextElement()) {
            id = recordEnum.nextRecordId();
            stringBuffer.delete(0, stringBuffer.length());
            this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL);
            @hashtable = StdUtil::getInstance().createHashtable();
            this.valueList.add(hashtable);
            this.idList.add(smallIntegerSingletonFactory.getAt(id));
        }
        recordStore.closeRecordStore();
    }
    

    void save(AbeClientInformationInterface@ abeClientInformation, ABHashtable@ hashtable)
    {
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.persistanceStrings.NOT_SAVING).append(StringUtil::getInstance().toString(hashtable)).toString(), this, this.commonStrings.SAVE);
        RecordStore@ recordStore = RecordStore::openRecordStore(this.getRecordId(abeClientInformation), true);
        Input@ gameActionInput;
        BasicArrayList@ list;
        Input@ input;
        JObject@[]@ inputObjectArray = this.hashtableUtil_InputPersistance.getKeysAsArray(hashtable);
        int size = int(inputObjectArray.length());
        for (int index = 0; index < size; index++) {
            @gameActionInput = cast<Input>(inputObjectArray[index]);
            @list = cast<BasicArrayList>(hashtable.get(inputObjectArray[index]));
            for (int index2 = 0; index2 < list.size(); index2++) {
                @input = cast<Input>(list.get(index2));
            }
        }
        recordStore.closeRecordStore();
    }
}

