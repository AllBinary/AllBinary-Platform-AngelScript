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

class CommonLabels : JObjectBase
{
    string WIDTH_LABEL;
    string HEIGHT_LABEL;
    string END_LABEL;
    string TOTAL_LABEL;
    string INDEX_LABEL;
    string START_LABEL;
    string COMMAND_LABEL;
    string NAME_LABEL;
    string START;
    string ELAPSED;
    string CURRENT;
    string NEXT;
    string ITEM_LABEL;
    string RESULT_;
    string COLON_SEP;

    // Java field initializers run after the super constructor
    void jfields_CommonLabels()
    {
    this.WIDTH_LABEL = " Width: ";
    this.HEIGHT_LABEL = " Height: ";
    this.END_LABEL = "End: ";
    this.TOTAL_LABEL = "Total: ";
    this.INDEX_LABEL = "index: ";
    this.START_LABEL = "Start: ";
    this.COMMAND_LABEL = "Command: ";
    this.NAME_LABEL = "Name: ";
    this.START = this.START_LABEL;
    this.ELAPSED = " Elapsed: ";
    this.CURRENT = " Current: ";
    this.NEXT = "Next";
    this.ITEM_LABEL = "Item: ";
    this.RESULT_ = "Result: ";
    this.COLON_SEP = ": ";
    }

    CommonLabels@ jinit_CommonLabels()
    {
        this.jfields_CommonLabels();
        return this;
    }
}

namespace CommonLabels
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CommonLabels().jinit_CommonLabels();
    }

    CommonLabels@ jcell_instance;
    CommonLabels@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CommonLabels@ value) property { jclinit(); @jcell_instance = value; }
    

    CommonLabels@ getInstance()
    {
        return CommonLabels::instance;
    }
}

