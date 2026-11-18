/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class PersistanceStrings : JObjectBase
{
    string SAVING;
    string NUMBER_OF_RECORDS;
    string LOADING_ID;
    string LOAD_ALL;
    string DELETING_WITH_ID;
    string CLOSING_RECORDSTORE;
    string NOT_SAVING;
    string ERROR_LOADING;
    string ERROR_LOADING_ID;
    string ID;
    string GAME_ACTION_INPUT;

    // Java field initializers run after the super constructor
    void jfields_PersistanceStrings()
    {
    this.SAVING = "Saving: ";
    this.NUMBER_OF_RECORDS = "Number of records: ";
    this.LOADING_ID = "Loading data with id: ";
    this.LOAD_ALL = "loadAll";
    this.DELETING_WITH_ID = "Deleting data with id: ";
    this.CLOSING_RECORDSTORE = "Closing RecordStore";
    this.NOT_SAVING = "Not Saving: ";
    this.ERROR_LOADING = "Error Loading gameActionInput: ";
    this.ERROR_LOADING_ID = "Error Loading id: ";
    this.ID = " id: ";
    this.GAME_ACTION_INPUT = " GameActionInput: ";
    }

    PersistanceStrings@ jinit_PersistanceStrings()
    {
        this.jfields_PersistanceStrings();
        return this;
    }
}

namespace PersistanceStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PersistanceStrings().jinit_PersistanceStrings();
    }

    PersistanceStrings@ jcell_instance;
    PersistanceStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PersistanceStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    PersistanceStrings@ getInstance()
    {
        return PersistanceStrings::instance;
    }
}

