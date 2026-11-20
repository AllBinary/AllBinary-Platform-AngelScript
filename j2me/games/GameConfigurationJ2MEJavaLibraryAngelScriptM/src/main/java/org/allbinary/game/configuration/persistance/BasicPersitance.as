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

class BasicPersitance : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    PersistanceStrings@ persistanceStrings;
    PlatformRecordIdUtil@ platformRecordIdUtil_BasicPersitance;
    string recordId_BasicPersitance;
    BasicArrayList@ valueList;
    BasicArrayList@ idList;

    // Java field initializers run after the super constructor
    void jfields_BasicPersitance()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.persistanceStrings = PersistanceStrings::getInstance();
    @this.platformRecordIdUtil_BasicPersitance = PlatformRecordIdUtil::getInstance();
    
    @this.valueList = BasicArrayListD().jinit_BasicArrayListD();
    @this.idList = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    BasicPersitance@ jinit_BasicPersitance(string recordId)
    {
        this.jfields_BasicPersitance();
        this.recordId_BasicPersitance = recordId;
        return this;
    }
    

    void deleteRecoreStore(AbeClientInformationInterface@ abeClientInformation)
    {
        RecordStore::deleteRecordStore(this.getRecordId(abeClientInformation));
    }
    

    void deleteAll(AbeClientInformationInterface@ abeClientInformation)
    {
        int size = this.idList.size();
        for (int index = 0; index < size; index++) {
            JInteger@ integer = cast<JInteger>(this.idList.objectArray[index]);
            this.delete(abeClientInformation, integer.intValue());
        }
        this.clear();
    }
    

    void delete(AbeClientInformationInterface@ abeClientInformation, int deleteId)
    {
        RecordStore@ recordStore = NullRecordStore::NULL_RECORD_STORE;
        {
            Throwable@ jfinally0;
            try {
                try {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.persistanceStrings.DELETING_WITH_ID).appendint(deleteId).toString(), this, this.commonStrings.delete);
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
                PreLogUtil::put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.delete);
                recordStore.closeRecordStore();
            }
            if (jfinally0 !is null) { jthrow(jfinally0); }
        }
    }
    

    string getRecordId(AbeClientInformationInterface@ abeClientInformation)
    {
        return this.platformRecordIdUtil_BasicPersitance.getRecordId(abeClientInformation, this.recordId_BasicPersitance);
    }
    

    BasicArrayList@ getList()
    {
        return this.valueList;
    }
    

    BasicArrayList@ getIds()
    {
        return this.idList;
    }
    

    void clear()
    {
        this.valueList.clear();
        this.idList.clear();
    }
}

