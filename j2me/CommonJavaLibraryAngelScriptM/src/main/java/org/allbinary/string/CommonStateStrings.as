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

class CommonStateStrings : JObjectBase
{
    string CONTEXT;
    string FINISH;
    string CREATE;
    string START;
    string RESTART;
    string RESUME;
    string PAUSE;
    string STOP;
    string DESTROY;
    string BIND;
    string ON_SAVE_INSTANCE_STATE;
    string ON_START_COMMAND;

    // Java field initializers run after the super constructor
    void jfields_CommonStateStrings()
    {
    this.CONTEXT = "Context: ";
    this.FINISH = "finish";
    this.CREATE = "onCreate";
    this.START = "onStart";
    this.RESTART = "onRestart";
    this.RESUME = "onResume";
    this.PAUSE = "onPause";
    this.STOP = "onStop";
    this.DESTROY = "onDestroy";
    this.BIND = "onBind";
    this.ON_SAVE_INSTANCE_STATE = "onSaveInstanceState";
    this.ON_START_COMMAND = "onStartCommand";
    }

    CommonStateStrings@ jinit_CommonStateStrings()
    {
        this.jfields_CommonStateStrings();
        return this;
    }
}

namespace CommonStateStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CommonStateStrings().jinit_CommonStateStrings();
    }

    CommonStateStrings@ jcell_instance;
    CommonStateStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CommonStateStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    CommonStateStrings@ getInstance()
    {
        return CommonStateStrings::instance;
    }
}

