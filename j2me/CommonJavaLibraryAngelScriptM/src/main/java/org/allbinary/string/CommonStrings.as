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
// package org.allbinary.string

class CommonStrings : JObjectBase
{
    string EMPTY;
    string CREATE_IMAGE;
    string PLEASE_WAIT;
    string PLEASE_WAIT_FOR_SERVER;
    string PERIODS;
    string LOADING;
    string CONSTRUCTOR;
    string START;
    string END;
    string EXCEPTION;
    string EXCEPTION_LABEL;
    string CLEANUP;
    string INIT;
    string CLOSE;
    string UP;
    string DOWN;
    string LEFT;
    string RIGHT;
    string[]@ DIRECTION_NAME;
    string CREATE;
    string REMOVE;
    string UPDATE;
    string DELETE;
    string delete;
    string LOAD;
    string SAVE;
    string ADD;
    string DROP;
    string INSERT;
    string VISIT;
    string START_METHOD_NAME;
    string END_METHOD_NAME;
    string GET;
    string PROCESS;
    string GET_INSTANCE;
    string GET_LIST;
    string RUN;
    string START_RUNNABLE;
    string RUNNING;
    string END_RUNNABLE;
    string DISABLE;
    string ENABLE;
    string SUCCESS;
    string FAILURE;
    string NOT_IMPLEMENTED;
    string UNKNOWN;
    string ON_EVENT;
    string IS_VALID;
    string TOSTRING;
    string ADD_LISTENER;
    string REMOVE_LISTENER;
    string SIZE;

    // Java field initializers run after the super constructor
    void jfields_CommonStrings()
    {
    this.EMPTY = "Empty";
    this.CREATE_IMAGE = "createImage";
    this.PLEASE_WAIT = "Please Wait";
    this.PLEASE_WAIT_FOR_SERVER = "Please Wait Getting Data From Server...";
    this.PERIODS = "...";
    this.LOADING = "Loading...";
    this.CONSTRUCTOR = "Constructor";
    this.START = "Start";
    this.END = "End";
    this.EXCEPTION = "Exception";
    this.EXCEPTION_LABEL = "Exception: ";
    this.CLEANUP = "cleanup";
    this.INIT = "init";
    this.CLOSE = "close";
    this.UP = "up";
    this.DOWN = "down";
    this.LEFT = "left";
    this.RIGHT = "right";
    @this.DIRECTION_NAME = array<string> = {this.DOWN, this.LEFT, this.RIGHT, this.UP};
    this.CREATE = "Create";
    this.REMOVE = "Remove";
    this.UPDATE = "Update";
    this.DELETE = "Delete";
    this.delete = "delete";
    this.LOAD = "load";
    this.SAVE = "save";
    this.ADD = "Add";
    this.DROP = "Drop";
    this.INSERT = "Insert";
    this.VISIT = "visit";
    this.START_METHOD_NAME = this.START;
    this.END_METHOD_NAME = "end";
    this.GET = "get";
    this.PROCESS = "process";
    this.GET_INSTANCE = "getInstance";
    this.GET_LIST = "getList";
    this.RUN = "run";
    this.START_RUNNABLE = "Start Runnable";
    this.RUNNING = "Running";
    this.END_RUNNABLE = "End Runnable";
    this.DISABLE = "disable";
    this.ENABLE = "enable";
    this.SUCCESS = "Command Success";
    this.FAILURE = "Command Failed";
    this.NOT_IMPLEMENTED = "Not Implemented";
    this.UNKNOWN = "Unknown";
    this.ON_EVENT = "onEvent";
    this.IS_VALID = "isValid";
    this.TOSTRING = "toString";
    this.ADD_LISTENER = "addListener";
    this.REMOVE_LISTENER = "removeListener";
    this.SIZE = "size";
    }

    CommonStrings@ jinit_CommonStrings()
    {
        this.jfields_CommonStrings();
        return this;
    }
}

namespace CommonStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CommonStrings().jinit_CommonStrings();
    }

    CommonStrings@ jcell_instance;
    CommonStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CommonStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    CommonStrings@ getInstance()
    {
        return CommonStrings::instance;
    }
}

