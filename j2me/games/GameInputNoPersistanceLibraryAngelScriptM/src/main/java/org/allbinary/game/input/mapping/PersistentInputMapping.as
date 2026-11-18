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
// package org.allbinary.game.input.mapping

//GameInputNoPersistanceLibrary
class PersistentInputMapping : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    EnumerationUtil@ enumerationUtil;
    InputToGameKeyMapping@ inputMapping;
    InputMappingEventListenerInterface@ inputMappingEventListenerInterface;
    InputPersistance@ inputPersistance;
    InputMappingEvent@ inputMappingEvent;

    // Java field initializers run after the super constructor
    void jfields_PersistentInputMapping()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.enumerationUtil = EnumerationUtil::getInstance();
    @this.inputMapping = InputToGameKeyMapping().jinit_InputToGameKeyMapping();
    @this.inputMappingEventListenerInterface = NullInputMappingEventListener::NULL_INPUT_MAPPING_EVENT_LISTENER;
    
    @this.inputMappingEvent = InputMappingEvent().jinit_InputMappingEvent(this);
    }
    

    PersistentInputMapping@ jinit_PersistentInputMapping(string name)
    {
        this.jfields_PersistentInputMapping();
        @this.inputPersistance = InputPersistance().jinit_InputPersistance(name);
        return this;
    }
    

    int getTotalMapped()
    {
        return this.getInputMapping().getHashtable().size();
    }
    

    bool isDefaultNew()
    {
        return false;
    }
    

    InputToGameKeyMapping@ getDefault()
    {
        return InputToGameKeyMapping::getNullInstance();
    }
    

    void setDefault(AbeClientInformationInterface@ abeClientInformation)
    {
        this.getInputMapping().removeAll();
        this.getInputMapping().addMapping(this.getDefault());
        this.save(abeClientInformation);
    }
    

    void update(AbeClientInformationInterface@ abeClientInformation)
    {
        this.inputPersistance.deleteAll(abeClientInformation);
        this.save(abeClientInformation);
    }
    

    void save(AbeClientInformationInterface@ abeClientInformation)
    {
        this.inputPersistance.save(abeClientInformation, this.getInputMapping().getHashtable());
        this.inputMappingEvent.setInputToGameKeyMapping(this.getInputMapping());
        if (this.getInputMappingEventListenerInterface() !is null) {
            this.getInputMappingEventListenerInterface().onInputMappingEvent(this.inputMappingEvent);
        }
    }
    

    void init(AbeClientInformationInterface@ abeClientInformation)
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        try {
            this.inputPersistance.loadAll(abeClientInformation);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::putOE(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e);
            this.inputPersistance.deleteRecoreStore(abeClientInformation);
            this.setDefault(abeClientInformation);
            this.inputPersistance.loadAll(abeClientInformation);
            }
            else { jthrow(jex0); }
        }
        BasicArrayList@ list = this.inputPersistance.getList();
        int totalMappedTo = 0;
        int size = list.size();
        ABHashtable@ hashtable;
        Enumeration@ enumeration;
        Input@ mappedToInput;
        Input@ gameActionInput;
        for (int index = 0; index < size; index++) {
            @hashtable = cast<ABHashtable>(list.objectArray[index]);
            @enumeration = hashtable.keys();
            while (this.enumerationUtil.hasMoreElements(enumeration)) {
                @mappedToInput = cast<Input>(this.enumerationUtil.nextElement(enumeration));
                @gameActionInput = cast<Input>(hashtable.get(mappedToInput));
                totalMappedTo++;
                this.getInputMapping().add(gameActionInput, mappedToInput);
            }
        }
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("End - Total Loaded Keys Mapped: ");
        stringBuffer.appendint(this.getTotalMapped());
        stringBuffer.append(" to: ");
        stringBuffer.appendint(totalMappedTo);
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
    }
    

    void setInputMappingEventListenerInterface(InputMappingEventListenerInterface@ inputMappingEventListenerInterface)
    {
        @this.inputMappingEventListenerInterface = inputMappingEventListenerInterface;
    }
    

    InputMappingEventListenerInterface@ getInputMappingEventListenerInterface()
    {
        return this.inputMappingEventListenerInterface;
    }
    

    InputToGameKeyMapping@ getInputMapping()
    {
        return this.inputMapping;
    }
    

    bool isDelete(Input@ input)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return false;
    }
    

    bool isSystemInput(Input@ input)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return false;
    }
}

namespace PersistentInputMapping
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    PersistentInputMapping@ getNullInstance()
    {
        if (PersistentInputMapping::instance is NullUtil::getInstance().NULL_OBJECT) {
            @PersistentInputMapping::instance = PersistentInputMapping().jinit_PersistentInputMapping(GamePersistanceStrings::getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID);
        }
        return cast<PersistentInputMapping>(PersistentInputMapping::instance);
    }
}

